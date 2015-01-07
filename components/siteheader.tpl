	<meta name="keywords" content="{{ page.keywords }}" />
	<meta name="description" content="{{ page.description }}" />
        <meta name="copyright" content="{{ site.copyright }}" />
	<meta name="author" content="{{ site.author }}" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	{% stylesheet_link "layout.css?milano" %}
	{% stylesheet_link "style.css?milano" %}
	{% if editmode %}{% stylesheet_link "assets/admin/editmode.css" static_host="true" %}{% endif %}
        <link rel="icon" href="/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" href="/favicon.ico" type="image/ico" />
	<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />

{% if site.search.enabled %}{% stylesheet_link "assets/site_search/3.0/style.css?1" static_host="true" %}{% endif %}
<!--[if IE]><link rel="stylesheet" type="text/css" href="http://static.edicy.com/assets/ie.css" /><![endif]-->
<!--[if lt IE 7>
<style type="text/css">
  div#container {
  background-image: none;
filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true, sizingMethod=scale, src='{{images_path}}/container.png?1');
	}
</style>
<![endif]-->
<meta name="viewport" content="initial-scale=1" />
