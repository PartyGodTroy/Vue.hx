package ;

import vue.Vue;

@:expose
class Main
{

	public static var app3:Vue;
	public static var app4:Vue;

	function new()
	{
		trace("Haxe Vue.js example");

		app3 = new Vue({
			el: '#app-3',
			data: {
				seen: true
			}
		});

		app4 = new Vue({
			el: '#app-4',
			data: {
				todos: [
					{ text: 'Learn JavaScript' },
					{ text: 'Learn Vue' },
					{ text: 'Build something awesome' }
				]
			}
		});

	}



	// @:keep
	// static public function init(){
	// 	var test = function(){
	// 		trace('test');
	// 	}

	// 	var app3 = new Vue({
	// 		el: '#app-3',
	// 		data: {
	// 			seen: true
	// 		}
	// 	});

	// 	var app4 = new Vue({
	// 		el: '#app-4',
	// 		data: {
	// 			todos: [
	// 				{ text: 'Learn JavaScript' },
	// 				{ text: 'Learn Vue' },
	// 				{ text: 'Build something awesome' }
	// 			]
	// 		}
	// 	});
	// }

	static public function main(){
		var main = new Main();
	}
}