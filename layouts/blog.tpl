<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{{ page.language_code }}" lang="{{ page.language_code }}">

<head>
{% include "SiteHeader" %}
{{ blog.rss_link }}
  <title>{{site.name}} &raquo; {{page.title}}</title>
</head>

<body>
	
	<div id="wrap" class="content-hyphenate">
   
          {% include "Langmenu" %}
          {% include "Mainmenu" %}

   <div id="header">
     <table id="header-table">
       <tr>
         <td class="title clearfix">{% if editmode %}{% editable site.header %}{%else%}<a href="{{ site.root_item.url }}">{% editable site.header %}</a>{% endif %}</td>
       </tr>
     </table> 
   </div><!-- //header -->
   
   <div id="container" class="clearfix">
     
     <div id="content">
              <div id="content-inner">
        {% addbutton class="add-article" %}        

       {% for article in articles %}
       <div class="blog">
         <div class="blog-date"><span>{{ article.created_at | format_date:"%d" }}</span><br />{{ article.created_at | format_date:"%b" }}</div>
         <div class="blog-inner">
           <h1><a href="{{ article.url }}">{{ article.title }} <span class="mobile mobile-date">{{article.created_at | format_date="short" }}</span></a></h1>
   
           <div class="blog-content clearfix content-hyphenate">
             {{ article.excerpt }} <a href="{{ article.url }}">{{"read_more"|lc}}</a>
           </div> <!-- //blog-content -->
               
           <div class="blog-information">
             {{ article.author.name }} | <a href="{{ article.url }}#comments">{{"comments_for_count"|lc}}: {{ article.comments_count }}</a>
           </div> <!-- //blog-information -->
         </div> <!-- blog-inner -->
       </div> <!-- //blog -->
{% endfor %}
            </div>
     </div> <!-- //content -->
     
     <div id="sidebar">
       {% include "News" %}
        
        
        
              {% include "Sidebar" %}

             
        
        <div id="edicy">
          {% loginblock %}{{ "footer_login_link" | lc }}{% endloginblock %}
        </div> <!-- //edicy -->
        
        
         
     </div> <!-- //sidebar -->
     
     <div class="clearer"></div>
     
   </div> <!-- //container -->
    
  </div> <!-- //wrap -->
{% unless editmode %}{{ site.analytics }}{% endunless %}
  {% include "JS" %}
</body>
</html>