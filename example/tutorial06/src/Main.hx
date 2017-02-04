package ;

import vue.Vue;
import js.Lib;

class Main
{

	function new()
	{
		trace("Haxe Vue.js example");

		// Creating a new Vue instance and pass in an options object.
		var demo = new Vue({

		    // A DOM element to mount our view model.
		    el: '#main',

		    // Define properties and give them initial values.
		    data: {
		        show_tooltip: false,
		        text_content: 'Edit me.'
		    },

		    // Functions we will be using.
		    methods: {
		        hideTooltip: function(){
		            // When a model is changed, the view will be automatically updated.
		            Lib.nativeThis.show_tooltip = false;
		        },
		        toggleTooltip: function(){
		            Lib.nativeThis.show_tooltip = Lib.nativeThis.show_tooltip;
		        }
		    }
		});

	}


	static public function main(){
		var main = new Main();
	}
}