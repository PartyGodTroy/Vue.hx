package ;

import vue.Vue;

class Main
{

	function new()
	{
		trace("Haxe Vue.js example");

		// Define a new component called todo-item
		Vue.component('todo-item', {
			// The todo-item component now accepts a
			// "prop", which is like a custom attribute.
			// This prop is called todo.
			props: ['todo'],
			template: '<li>{{ todo.text }}</li>'
		});


		var app7 = new Vue({
			el: '#app-7',
			data: {
				groceryList: [
					{ text: 'Vegetables' },
					{ text: 'Cheese' },
					{ text: 'Whatever else humans are supposed to eat' }
				]
			}
		});

	}


	static public function main(){
		var main = new Main();
	}
}