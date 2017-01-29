package ;

import vue.Vue;

@:expose
class Main
{

	public static var app2 : Vue;

	function new()
	{
		trace("Haxe Vue.js example");

		new Vue({
			el: '#app',
			data: {
				message: 'Hello Vue.js!'
			}
		});


		var app2 = new Vue({
			el: '#app-2',
			data: {
				message: 'You loaded this page on ' + Date.now()
			}
		});
	}

	static public function main()
	{
		var main = new Main();
	}
}