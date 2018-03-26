import React from 'react';
import ReactDOM from 'react-dom';
import Widget from './components/widget';
import store from './store';
import reducer from './reducer';
import { selectCurrency } from './actions.js';


window.selectCurrency = selectCurrency;
window.reducer = reducer;

document.addEventListener("DOMContentLoaded", function(){
  ReactDOM.render(<Widget store={store} />, document.getElementById('root'));
});
