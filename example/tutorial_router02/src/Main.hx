package ;

import vue.Vue;
import vue.VueRouter;

class Main
{


	function new()
	{
		trace("Haxe Vue.js example");

		var Home = { template: '<div>This is Home</div>' }
		var Foo = { template: '<div>This is Foo</div>' }
		var Bar = { template: "<div>This is Bar {{ $route.params.id }}</div>" }

		var router = new VueRouter({
			// mode: 'history',
			// base: '__dirname',
			routes: [
				{ path: '/', name: 'home', component: Home },
				{ path: '/foo', name: 'foo', component: Foo },
				{ path: '/bar/:id', name: 'bar', component: Bar }
			]
		});

		new Vue({
			router:router,
			template: "
				<div id=\"app\">
				<h1>Named Routes</h1>
				<p>Current route name: {{ $route.name }}</p>
				<ul>
					<li><router-link :to=\"{ name: 'home' }\">home</router-link></li>
					<li><router-link :to=\"{ name: 'foo' }\">foo</router-link></li>
					<li><router-link :to=\"{ name: 'bar', params: { id: 123 }}\">bar</router-link></li>
				</ul>
				<router-view class=\"view\"></router-view>
				</div>"
		}).$mount('#app');

	}

	static public function main(){
		var main = new Main();
	}
}