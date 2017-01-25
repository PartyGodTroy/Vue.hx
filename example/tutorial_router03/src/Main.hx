package ;

import vue.Vue;
import vue.VueRouter;

class Main
{


	function new()
	{
		trace("Haxe Vue.js example");

		var App = Vue.extend({});

		var router = new VueRouter();

		var Home = Vue.extend({
			template: 'Welcome to the <b>home page</b>!'
		});

		var People = Vue.extend({
			template: 'Look at all the people who work here!'
		});

		router.map({
			'/': {
				component: Home
			},
		  	'/people': {
				component: People
		  	}
		});

		router.start(App, '#app');

	}

	static public function main(){
		var main = new Main();
	}
}