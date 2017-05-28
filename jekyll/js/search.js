/**
 * Searching using lunr.
 * Taken from: https://learn.cloudcannon.com/jekyll/jekyll-search-using-lunr-js/
 * Modified to work with new API
 *
 * @author ekleinod
 */
(function() {

	executeSearch();

	function executeSearch() {
		var searchTerm = getQueryVariable('searchterm');

		if (searchTerm) {

			if (document.getElementById('search-box')) {
				document.getElementById('search-box').setAttribute("value", searchTerm);
			}

			if (document.getElementById('search-result-panel')) {

				// Initalize lunr with the fields it will be searching on. I've given title
				// a boost of 10 to indicate matches on this field are more important.
				var idx = lunr(function () {
					this.field('id');
					this.field('title', { boost: 10 });
					this.field('content');

					// Add the data to lunr
					for (var key in window.store) {
						this.add({
							'id': key,
							'title': window.store[key].title,
							'content': window.store[key].content
						});
					}

				});

				// Get lunr to perform a search, searh with wildcards
				var results = idx.search('*' + searchTerm + '*');
				displaySearchResults(results, window.store);

			}

		} else {
			if (document.getElementById('search-result-panel')) {
				document.getElementById('search-result-panel').style.display = "none";
			}
		}
	}

	function displaySearchResults(results, store) {

		if (results.length) {
			var appendString = '';

			for (var i = 0; i < results.length; i++) {
				var item = store[results[i].ref];

				appendString += '<a href="' + item.url + '" class="list-group-item">';
				appendString += '<h4 class="list-group-item-heading">' + item.title + '</h4>';
				appendString += '<p class="list-group-item-text">' + item.content.substring(0, 150) + '...</p>';
				appendString += '</a>';
			}

			document.getElementById('search-results').innerHTML = appendString;
			document.getElementById('search-result-none').style.display = "none";

		} else {
			document.getElementById('search-results').style.display = "none";
		}
	}

	function getQueryVariable(variable) {
		var query = window.location.search.substring(1);
		var vars = query.split('&');

		for (var i = 0; i < vars.length; i++) {
			var pair = vars[i].split('=');

			if (pair[0] === variable) {
				return decodeURIComponent(pair[1].replace(/\+/g, '%20'));
			}
		}
	}

})();

/* EOF */
