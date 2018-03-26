import React from 'react';

class Calculator extends React.Component {
  constructor(props) {
    super(props);
    this.state = {num1: "", num2: "", result: 0};
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.add = this.add.bind(this);
    this.subtract = this.subtract.bind(this);
    this.divide = this.divide.bind(this);
    this.mulitply = this.multiply.bind(this);
 	this.clear = this.clear.bind(this);
  }

  setNum1(event){
  	const num1 = event.target.value ? parseInt(event.target.value) : "";
  	this.setState({num1: num1});

  }

  setNum2(event){
  	const num2 = event.target.value ? parseInt(event.target.value) : "";
  	this.setState({num2: num2});
  }

  add(event){
  	event.preventDefault();
  	const sum = this.state.num1 + this.state.num2;
  	this.setState({result: sum});
  }

  subtract(event){
  	event.preventDefault();
  	const sum = this.state.num1 - this.state.num2;
  	this.setState({result: sum});
  }

  divide(event){
  	event.preventDefault();
  	const sum = this.state.num1 / this.state.num2;
  	this.setState({result: sum});
  }

  multiply(event){
  	event.preventDefault();
  	const sum = this.state.num1 * this.state.num2;
  	this.setState({result: sum});
  }

  clear(event){
  	event.preventDefault();
  	this.setState({num1: "", num2: "", result: 0});
  }


  render() {

  	const {num1, num2, result} = this.state;

    return (
      <div>
        <h1>{result}</h1>
        <input onChange={this.setNum1} />
        <input onChange={this.setNum2} />
        <button onClick={this.clear}>Clear</button>
        <br />
        <button onClick={this.add}> + </button>
        <button onClick={this.subtract}> - </button>
        <button onClick={this.divide}> / </button>
        <button onClick={this.multiply}> * </button>
      </div>
    );
  }
}

export default Calculator;