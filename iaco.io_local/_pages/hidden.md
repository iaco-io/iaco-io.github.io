---
layout: default
permalink: /hidden/

author: iaco

pre-title: "Work in Progress"
title: "Hidden Posts"
description: "To Be Finished..."

---

{% for post in site.posts %}
{% if post.hidden %}

<!-- all hidden posts, shown with normal cover, that are not "youtube-only" -->

{% unless post.youtube-only %}

{% capture titlepost %}
{{ post.title }}
<br>
<small style="font-weight: normal;">
<i class="far fa-calendar-alt"></i> {{ post.path | replace: '.md', '' | replace: '_posts/', '' | slice: 0, 10 }}
&nbsp;
<i class="fa fa-link"></i> /article/{{ post.path | replace: '.md', '' | replace: '_posts/', '' | slice: 11, 111  }}
</small>
{% endcapture %}

{% include showroom url=post.url newtab=post.newtab image=post.image title=titlepost youtube=false %}

{% endunless %}

<!-- all hidden posts, with video, shown with youtube video cover -->

{% if post.youtube %}

{% capture youtubeurl %}https://www.youtube.com/watch?v={{ post.youtube }}{% endcapture %}

{% capture titlepost %}
{{ post.title }}
<br>
<small style="font-weight: normal;">
<i class="far fa-calendar-alt"></i> {{ post.path | replace: '.md', '' | replace: '_posts/', '' | slice: 0, 10 }}
&nbsp;
{% if post.youtube-only %}
<i class="fab fa-youtube"></i> only
&nbsp;
<i class="fa fa-link"></i> /article/{{ post.path | replace: '.md', '' | replace: '_posts/', '' | slice: 11, 111  }}
&nbsp;
{% else %}
<i class="fab fa-youtube"></i> /@iaco
{% endif %}
</small>
{% endcapture %}

{% include showroom url=youtubeurl newtab=post.newtab image=post.image title=titlepost youtube=post.youtube %}

{% endif %}

<!-- end of hidden posts -->

{% endif %}
{% endfor %}
