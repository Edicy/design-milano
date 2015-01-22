{% if site.search.enabled %}
<div id="search">
<form action="" class="edys-search">
<div><input type="text" id="onpage_search" placeholder="{{  "search" | lc }}"/></div>
</form>
</div>
{% endif %}
<div class="sidebar-inner clearfix">
  {% content name="footer" xpage="true" %}
</div> <!-- //sidebar-inner -->
