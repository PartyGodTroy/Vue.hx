package ;

import vue.Vue;
import vue.VueRouter;

class Main
{


	function new()
	{
		trace("Haxe Vue.js example");

		// 1. Define route components.
		// These can be imported from other files
		var home = { template: '<div>home</div>' };
		var Foo = { template: '<div>foo</div>' };
		var Bar = { template: '<div>bar</div>' };

		// 2. Define some routes
		// Each route should map to a component. The "component" can
		// either be an actual component constructor created via
		// Vue.extend(), or just a component options object.
		// We'll talk about nested routes later.
		var routes = [
			{ path: '/', component: home },
			{ path: '/foo', component: Foo },
			{ path: '/bar', component: Bar }
		];

		// 3. Create the router instance and pass the `routes` option
		// You can pass in additional options here, but let's
		// keep it simple for now.
		var router = new VueRouter({
			routes:routes // short for routes: routes
		});

		// 4. Create and mount the root instance.
		// Make sure to inject the router with the router option to make the
		// whole app router-aware.
		var app = new Vue({
			router:router
		}).$mount('#app');

		// Now the app has started!

	}

	static public function main(){
		var main = new Main();
	}
}