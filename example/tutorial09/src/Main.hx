package ;

import vue.Vue;

class Main
{

	function new()
	{
		trace("Haxe Vue.js example");

		var demo = new Vue({
			el: '#main',
			data: {
		        // The layout mode, possible values are "grid" or "list".
				layout: 'grid',

		        articles: [{
		            "title": "What You Need To Know About CSS Variables",
		            "url": "http://tutorialzine.com/2016/03/what-you-need-to-know-about-css-variables/",
		            "image": {
		                "large": "http://cdn.tutorialzine.com/wp-content/uploads/2016/03/css-variables.jpg",
		                "small": "http://cdn.tutorialzine.com/wp-content/uploads/2016/03/css-variables-150x150.jpg"
		            }
		        },
		        {
		            "title": "Freebie: 4 Great Looking Pricing Tables",
		            "url": "http://tutorialzine.com/2016/02/freebie-4-great-looking-pricing-tables/",
		            "image": {
		                "large": "http://cdn.tutorialzine.com/wp-content/uploads/2016/02/great-looking-pricing-tables.jpg",
		                "small": "http://cdn.tutorialzine.com/wp-content/uploads/2016/02/great-looking-pricing-tables-150x150.jpg"
		            }
		        },
		        {
		            "title": "20 Interesting JavaScript and CSS Libraries for February 2016",
		            "url": "http://tutorialzine.com/2016/02/20-interesting-javascript-and-css-libraries-for-february-2016/",
		            "image": {
		                "large": "http://cdn.tutorialzine.com/wp-content/uploads/2016/02/interesting-resources-february.jpg",
		                "small": "http://cdn.tutorialzine.com/wp-content/uploads/2016/02/interesting-resources-february-150x150.jpg"
		            }
		        },
		        {
		            "title": "Quick Tip: The Easiest Way To Make Responsive Headers",
		            "url": "http://tutorialzine.com/2016/02/quick-tip-easiest-way-to-make-responsive-headers/",
		            "image": {
		                "large": "http://cdn.tutorialzine.com/wp-content/uploads/2016/02/quick-tip-responsive-headers.png",
		                "small": "http://cdn.tutorialzine.com/wp-content/uploads/2016/02/quick-tip-responsive-headers-150x150.png"
		            }
		        },
		        {
		            "title": "Learn SQL In 20 Minutes",
		            "url": "http://tutorialzine.com/2016/01/learn-sql-in-20-minutes/",
		            "image": {
		                "large": "http://cdn.tutorialzine.com/wp-content/uploads/2016/01/learn-sql-20-minutes.png",
		                "small": "http://cdn.tutorialzine.com/wp-content/uploads/2016/01/learn-sql-20-minutes-150x150.png"
		            }
		        },
		        {
		            "title": "Creating Your First Desktop App With HTML, JS and Electron",
		            "url": "http://tutorialzine.com/2015/12/creating-your-first-desktop-app-with-html-js-and-electron/",
		            "image": {
		                "large": "http://cdn.tutorialzine.com/wp-content/uploads/2015/12/creating-your-first-desktop-app-with-electron.png",
		                "small": "http://cdn.tutorialzine.com/wp-content/uploads/2015/12/creating-your-first-desktop-app-with-electron-150x150.png"
		            }
		        }]

			}
		});

	}


	static public function main(){
		var main = new Main();
	}
}