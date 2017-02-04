package ;

import vue.Vue;
import js.Lib;

class Main
{

	function new()
	{
		trace("Haxe Vue.js example");

		// Define a custom filter called "currency".
		Vue.filter('currency', function (value) {
		    return '$' + value.toFixed(2);
		});

		var demo = new Vue({
		    el: '#main',
		    data: {
		    	// Define the model properties. The view will loop
		        // through the services array and genreate a li
		        // element for every one of its items.
		        services: [
		        	{
		        		name: 'Web Development',
		        		price: 300,
		        		active:true
		        	},{
		        		name: 'Design',
		        		price: 400,
		        		active:false
		        	},{
		        		name: 'Integration',
		        		price: 250,
		        		active:false
		        	},{
		        		name: 'Training',
		        		price: 220,
		        		active:false
		        	}
		        ]
		    },
		    methods: {
		    	toggleActive: function(s){
		            s.active = !s.active;
		    	},
		    	total: function(){

		        	var total = 0;

		        	Lib.nativeThis.services.forEach(function(s){
		        		if (s.active){
		        			total+= s.price;
		        		}
		        	});

		    	   return total;
		        }
		    }
		});

	}


	static public function main(){
		var main = new Main();
	}
}