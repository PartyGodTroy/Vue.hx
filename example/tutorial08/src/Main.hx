package ;

import vue.Vue;
import js.Lib;

using StringTools;

class Main
{

	function new()
	{
		trace("Haxe Vue.js example");

		var demo = new Vue({
			el: '#main',
			data: {
				searchString: "",

				// The data model. These items would normally be requested via AJAX,
				// but are hardcoded here for simplicity.

				articles: [
					{
						"title": "What You Need To Know About CSS Variables",
						"url": "http://tutorialzine.com/2016/03/what-you-need-to-know-about-css-variables/",
						"image": "http://cdn.tutorialzine.com/wp-content/uploads/2016/03/css-variables-100x100.jpg"
					},
					{
						"title": "Freebie: 4 Great Looking Pricing Tables",
						"url": "http://tutorialzine.com/2016/02/freebie-4-great-looking-pricing-tables/",
						"image": "http://cdn.tutorialzine.com/wp-content/uploads/2016/02/great-looking-pricing-tables-100x100.jpg"
					},
					{
						"title": "20 Interesting JavaScript and CSS Libraries for February 2016",
						"url": "http://tutorialzine.com/2016/02/20-interesting-javascript-and-css-libraries-for-february-2016/",
						"image": "http://cdn.tutorialzine.com/wp-content/uploads/2016/02/interesting-resources-february-100x100.jpg"
					},
					{
						"title": "Quick Tip: The Easiest Way To Make Responsive Headers",
						"url": "http://tutorialzine.com/2016/02/quick-tip-easiest-way-to-make-responsive-headers/",
						"image": "http://cdn.tutorialzine.com/wp-content/uploads/2016/02/quick-tip-responsive-headers-100x100.png"
					},
					{
						"title": "Learn SQL In 20 Minutes",
						"url": "http://tutorialzine.com/2016/01/learn-sql-in-20-minutes/",
						"image": "http://cdn.tutorialzine.com/wp-content/uploads/2016/01/learn-sql-20-minutes-100x100.png"
					},
					{
						"title": "Creating Your First Desktop App With HTML, JS and Electron",
						"url": "http://tutorialzine.com/2015/12/creating-your-first-desktop-app-with-html-js-and-electron/",
						"image": "http://cdn.tutorialzine.com/wp-content/uploads/2015/12/creating-your-first-desktop-app-with-electron-100x100.png"
					}
				]
			},
			computed: {
				// A computed property that holds only those articles that match the searchString.
				filteredArticles: function () {
					var articles_array : Array<Dynamic> = Lib.nativeThis.articles;
					var searchString = Lib.nativeThis.searchString;


					trace(articles_array.length);


					if(searchString == ''){
						return articles_array;
					}

					searchString = Std.string(searchString).trim().toLowerCase();

					var item = articles_array[0];

					var filteredArray =  [];

					articles_array.filter(function(item){

						if(item.title.toLowerCase().indexOf(searchString) != -1){
							filteredArray.push(item);
							return true;
						} else {
							return false;
						}
					});

					// Return an array with the filtered data.
					return filteredArray;
				}
			}
		});

	}


	static public function main(){
		var main = new Main();
	}
}