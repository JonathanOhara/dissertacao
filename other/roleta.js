var simulations = 1000000;
var runs = 20;

function getRandomInt (min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}

function simulate(){
	var points = [1, 1, 2, -2];
	var sum = 0;
	for( var i = 0; i < runs; i++ ){
		sum += points[ getRandomInt( 0, 3 ) ];
	}
	
	return sum < 0 ? 1 : 0;
}

var total = 0;
for( var i=0; i < simulations; i++){
	total += simulate();
}

console.log(total / simulations);
