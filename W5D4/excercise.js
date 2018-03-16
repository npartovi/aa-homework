function madLib(verb, adjective, noun) {

  console.log(`We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}.`);

}

madLib('make', 'best', 'guac')


function isSubstring(string, substring) {
	console.log(string.includes(substring));
}



isSubstring("time to program", "time")
isSubstring("Jump for joy", "joys")


function fizzBuzz(array) {
	const results = []

	for(let i = 0; i < array.length ; i++){
		if (array[i] % 3 === 0 || array[i] % 5 === 0) {
			results.push(array[i])
		}
	}

	console.log(results)
}

fizzBuzz([1,2,3,4,5,6,7,8,9])

function isPrime(number){

	if(number < 2){
		return false
	}

	for(let i = 2; i < number; i++){
		if( number % i === 0){
			return false
		}

	}

	return true

}


isPrime(7)
isPrime(10)

function sumOfNPrimes(n){

	let sum = 0
	let counter = 2
	let i = 0

	while(i < n){
		if(isPrime(counter)){
			sum += counter
			i ++;
		}
		counter ++;
	}

	console.log(sum);
}

sumOfNPrimes(4)
sumOfNPrimes(1)

