<script src="{{ site.static_asset_host }}/libs/picturefill/latest/picturefill.min.js"></script>
{% if site.search.enabled %}
	<script type="text/javascript" src="http://www.google.com/jsapi"></script>
	<script type="text/javascript" src="{{ site.static_asset_host }}/assets/site_search/3.0/site_search.js?1"></script>
	<script type="text/javascript" charset="utf-8">
  var search_translations = {"search": "{{ "search"|lc }}", "close": "{{ "search_close"|lc }}", "noresults": "{{ "search_noresults"|lc }}"};
	</script>
{% endif %}
