package ;

import vue.Vue;
import vue.VueRouter;

import js.Browser;

class Main
{
	function new()
	{
		trace("Haxe Vue.js example");

		var Home = { template: '<p>Welcome to the <b>home page</b>!</p>' };
		var People = { template: '<p>Look at all the people who work here!</p>'};
		var peopleid = { template: '<p>Person ID is {{$$route.params.personId}}</p>'};


		var router = new VueRouter({
			mode: RouterMode.HASH,
		    base: Browser.window.location.href,
			routes : [
				{path: '/', component : Home},
				{path: '/people', component : People},
				{path: '/people/:personId', name: 'people.show', component: peopleid}

			]
		});

		new Vue({
			router:router,
		}).$mount('#app');

	}

	static public function main(){
		var main = new Main();
	}
}