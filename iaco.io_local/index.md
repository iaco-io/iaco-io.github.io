---
layout: default
permalink: /

author: iaco
home-icon: true

youtube: "intro"

pre-title: "Welcome to the life adventure of &mdash;"
title: "Building healthier habits!"
description: "I'm Iaco, a PhD engineer, and I'm here to share my journey researching <i>evidence-based &amp; practical solutions</i> for <a href='/articles'>healthier habits</a>, to build a life <i>healthier, happier, wealthier</i> and <i title='a.k.a. \"more productive\", for the grammar-savvies ;)'>productivier*</i>!"
post-description: "Right now I'm developing some new habits, and I'm sharing this adventure with you on <a href='/ig' target='_blank'>Instagram</a> (and soon <a href='/yt' target='_blank'>YouTube</a>)."
# post-description: "I just started this online adventure! Soon I wish to send my first newsletter, and you can join me by subscribing here ;) <form target='_blank' style='margin: 0; font-weight: normal;' action='https://app.convertkit.com/forms/5308287/subscriptions' method='post'><input name='email_address' required='' type='email' placeholder=' &#xF0E0; E-mail' autocapitalize='none' autocorrect='off' style='width: 35%;'><input name='first_name' required='' type='text' placeholder=' &#xF007; Name' style='width: 35%;'><input type='submit' class='button small' value='Join&#xF1D8;' style='width: 20%;'></form>"

# That is why I  the <a href='/newsletter'><i class='far fa-paper-plane'></i>Weekly Wave newsletter</a> I share many tools and insights I know, or am currently learning about. Join me and <span class='newsletter-readers'></span> readers!

show-home: true
links-side: true

links-home:
  - title: ""
    icon: fab fa-youtube
    url: "/youtube"
    newtab: true
    show-home: true
    show-side: false
  - title: ""
    icon: fab fa-instagram
    url: "/instagram"
    newtab: true
    show-home: true
    show-side: false
  - title: ""
    icon: fa fa-feather-alt
    url: "/articles"
    newtab: false
    show-home: true
    show-side: false
  # - title: Join Weekly Wave
  #   icon: fa fa-paper-plane
  #   url: "/newsletter"
  #   newtab: false
  #   show-home: false
  #   show-side: true

show-main: true

links-gallery:
  - url: /youtube
    newtab: true
    title: INSTAGRAM<br>Check out my latest content!
    image: assets/media/logos/instagram.jpg
  - url: /articles
    newtab: false
    title: ALL ARTICLES<br>Productivity, health, habits &amp; more...
    image: assets/media/bg/articles.jpg

links-footer: true

show-corner: true

---

{% for post in site.posts %}
{% unless post.hidden %}
{% include showroom url=post.url newtab=post.newtab image=post.image title=post.title youtube=post.youtube %}
{% endunless %}
{% endfor %}

### Remember to follow and enjoy the journey with me 🙂

<a href="/ig" target="_blank" class="button secondary"><i class="fab fa-instagram"></i> iaco.io</a>

{% include newsletter %}
