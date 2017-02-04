package ;

import vue.Vue;

import js.Lib;


class Main
{

	function new()
	{
		trace("Haxe Vue.js example");

		var app5 = new Vue({
			el: '#app-5',
			data: {
				message: 'Hello Vue.js!'
			},
			methods: {
				reverseMessage: function () {
					// untyped this.message = this.message.split('').reverse().join('');
					// untyped this.message = reverse(untyped this.message);
					Lib.nativeThis.message = reverse(Lib.nativeThis.message);
				}
			}
		});

		var app6 = new Vue({
			el: '#app-6',
			data: {
				message: 'Hello Vue!'
			}
		});

	}

	function reverse (str:String ) : String
	{
		var arr = str.split('');
		var reversed = '';
		for (i in 0 ... arr.length) {
			reversed += arr[(arr.length-1)-i];
		}
		return reversed;
	}

	static public function main(){
		var main = new Main();
	}
}