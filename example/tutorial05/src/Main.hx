package ;

import vue.Vue;

class Main
{

	function new()
	{
		trace("Haxe Vue.js example");

		// Creating a new Vue instance and pass in an options object.
		var demo = new Vue({

			// A DOM element to mount our view model.
			el: '#main',

		    // This is the model.
			// Define properties and give them initial values.
			data: {
				active: 'home'
			},

			// Functions we will be using.
			methods: {
				makeActive: function(item){
					// When a model is changed, the view will be automatically updated.
					untyped This.active = item;
				}
			}
		});

	}


	static public function main(){
		var main = new Main();
	}
}