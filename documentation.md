---
layout: jumbo
title: Documentation
intro: Docs
lead: The documentation for this website
---
<h2>Intro</h2>
This is a jekyll project for the subject web publication.

<h2>Pages</h2>
<p>
  The site contains more then 5 webpages, among them the <b>homepage</b>, which
  is the default one when you visite this web. The <b>about</b> and
  <b>documentation</b> pages. The <b>blog</b> page which shows all the blog posts made
  by the author of this site, <b>individual</b> blogposts and the <b>projects</b> page
  which contains some projects.
</p>

Description of single website:
- home(index.html) - introduction to the website
- about - somehting about me what I like etc.
- documentation - the documentation of the website you are reading
  right now
- blog - list of my blog posts
- projects - a filterable list of my projects

<p>
  The homepage(index.html), about(about.html), documentation(documentaiton.html) can be found in the root directory. The blog page in the blog directory and the individual post in the _posts directory. 
</p>

<h2>Layouts</h2>
<p>
  Every pages uses one of 3 layouts, all of those can be found in the _layouts directory. All 3 of those inherit the basic structure of the website which includes the header(with styles) and footer from a layout called <b>default.html</b>. The first layout(jumbo.html) add a jumbotron in front of any content this is used by the home,about and documentation pages.

  The second layout(post.html) is used by individual posts it basicly adds a title and pagination for every blog post.

  The last one(gallery.html) is a layout for the projects gallery depending on the tagname parameters you pass to it it changes the content of the template.
</p>

<h2>Variables</h2>
<p>
  Most of them are used withing the gallery, navigation and post websites.
</p>

<h2>Datafiles</h2>
<p>
  Datafiles are used for 2 things, first the navigation and second the
  gallery. The navigation contains the names of different pages and a
  link to them while the gallery contains projects their descriptions
  and links to either download or visit the projects. All of those
  files can be found in the <b>_data</b> directory.
</p>

<h2>Filters</h2>
Filters used:
-  upcase
-  timeago
-  date_to_string
-  number_of_words
-  module
-  times
-  divide
-  minus
-  ceil

All of them can be found in the <b>post.html</b> template

<h2>Plugins</h2>
<p>
	The timeago plugin was used in the post.html layout to show how
	much time passed since the post was written. 
</p>
