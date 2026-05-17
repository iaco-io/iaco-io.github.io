---
layout: default
permalink: /old2/

author: iaco
home-icon:
  top:
    url: assets/media/logo/power-alpha.png
    width: 0px
    opacity: 0
  middle: #false
    url: assets/media/logo/iaco-mac-power.png
    position: 100%
    opacity: .75

youtube: "intro"

pre-title: ""
title: Hello people &mdash;
description: "I'm Iaco, a PhD engineer who loves to research and share <a href='/articles'>evidence-based and practical solutions</a> that help us build the fulfilling life we deserve: <i>healthy, happy, wealthy</i> and <i>productive</i>!"
post-description: "Right now I am developing <a href='/articles'>healthy habits</a> myself, and I am sharing my journey with you all on my <a href='/ig' target='_blank'>Instagram</a> and <a href='/yt' target='_blank'>YouTube</a>."
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
    title: YOUTUBE CHANNEL<br>Check out my latest video!
    image: assets/media/logos/youtube.jpg
  - url: /articles
    newtab: false
    title: ALL ARTICLES<br>Productivity, health, habits &amp; more...
    image: assets/media/bg/articles.jpg

links-footer: true

show-corner: true

---

{% include yt id=page.youtube %}

### Hope you enjoy my content 🙂

{% for post in site.posts limit:4%}
{% include showroom url=post.url newtab=post.newtab image=post.image title=post.title youtube=post.youtube %}
{% endfor %}

<a href="/articles" class="button"><i class="fa fa-feather-alt"></i> Read more articles</a>

{% include newsletter %}
