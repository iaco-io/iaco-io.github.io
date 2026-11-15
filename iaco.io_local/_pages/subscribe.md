---
layout: default
permalink: /subscribe/
redirect_from:
  - /support
# link-to-share: https://other-link.to/different-website?video=x
featured: false #true
hidden: false #true

author: iaco
# image: assets/media/bg/default.jpg
home-icon: #true (all defaults) or false (all hidden)
  top: #true (default: back arrow) or false (hidden)
    url: assets/media/logo/power-violet-alpha.png
    width: 80px
    opacity: 1
#  middle: #true (default: icon) or false (hidden)
#    url: assets/media/logo/power-alpha.png
#    position: 100%
#    opacity: .5

youtube: "JLTk1jksamk"

pre-title: You can help me by supporting my work
title: Hey, thanks in advance ;)
# title-bg: true #false
description: Consider subscribing to one of the options below
# post-description: Additional description

# categories: [ cruelty-free, gym, nutrition, productivity, sleep, wellbeing ]
# tags: [ a, b ]

# show-home: true #false
# home-fullscreen: false #true
# links-side: true #false

links-home: #false
  - title: Newsletter
    icon: fa fa-paper-plane
    url: "#newsletter" #https:// #/articles
    newtab: false #true
    show-home: true #false
    show-side: true #false

# show-main: true #false

links-gallery: #false
  - url: /youtube #https:// #"#newsletter"
    newtab: true #false
    title: YOUTUBE<br>Check out my latest video!
    image: assets/media/logos/youtube.jpg
  - url: /articles #https:// #"#newsletter"
    newtab: false #true
    title: ARTICLES<br>Productivity, health, sleep &amp; more...
    image: assets/media/bg/articles.jpg

links-footer: true #false
  # - title: Title
  #   icon: fab fa-instagram
  #   url: /articles
  #   newtab: true #false

# show-corner: true #false

---

{% include yt id=page.youtube %}

<!-- Start Chat:
<form action="https://duck.us12.list-manage.com/subscribe/post" method="POST" target="_blank">
  <input type="hidden" name="u" value="15b04556891fe8b87dc4d1344">
  <input type="hidden" name="id" value="6f1f656e7c">
  <input type="hidden" name="TICKET" id="ticket">

  <input type="email" autocapitalize="none" autocorrect="off" name="EMAIL" placeholder="&#xF0E0;  E-mail">
  <input type="text" name="FNAME" placeholder="&#xF007;  Name">
  <textarea type="text" name="MSG" placeholder="&#xF075;  Message..."></textarea>
  <input type="submit" class="button full" name="submit" value="Send Message">
  <input type="submit" class="button primary large" name="submit" value="Send Message">
  <input type="submit" class="button secondary large full" name="submit" value="Send Message">
</form>
<script>
  document.getElementById("ticket").value = "IACO.io Chat Ticket " + new Date().toISOString();
</script> -->

{% comment %}

- TOC
{:toc}

{% endcomment %}

| Early Access | <strong>Exclusive Videos</strong> | VIP |
|:-:|:-:|:-:|
| Juicy Apples | 1.99 | *7* |
| Bananas | **1.89** | 5234 |

<style>
.wrapper {
   position: absolute;
   top: 0%;
   left: 0%;
   font-family: 'Open Sans', sans-serif;
   font-weight: 400;
   color: #9f9f9f;
   font-size: 15px;
}
#pricing .package {
   box-sizing: border-box;
   width: calc(100%/3 - 1em);
   height: 380px;
   border: 1px solid;
   border-radius: 7px;
   display: block;
   padding: 24px;
   text-align: center;
   float: left;
   transition: margin-top 0.5s linear;
   position: relative;
   margin-left: 11px;
}
#pricing .package:hover {
   margin-top: -30px;
   transition: margin-top 0.3s linear;
}
#pricing .name {
   color: #565656;
   font-weight: 300;
   font-size: 3rem;
   margin-top: -5px;
}
#pricing .price {
   margin-top: 7px;
   font-weight: bold;
}
#pricing .price::after {
   content: " / month per user";
   font-weight: normal;
}
#pricing hr {
   background-color: #dedede;
   border: none;
   height: 1px;
}
#pricing .trial {
   font-size: 0.9rem;
   font-weight: 600;
   padding: 2px 21px 2px 21px;
   color: #33c4b6;
   border: 1px solid #e4e4e4;
   display: inline-block;
   border-radius: 15px;
   background-color: white;
   position: relative;
   bottom: -20px;
}
#pricing ul {
   list-style: none;
   padding: 0;
   text-align: left;
   margin-top: 29px;
}
#pricing li {
   margin-bottom: 15px;
}
#pricing li:before {
   font-size: 1.3rem;
   color: #33c4b6;
   margin-right: 3px;
}
#pricing .checkIcon, li:before, .brilliant::after {
   font-family: "FontAwesome";
   content: "\f00c";
}
#pricing .brilliant {
   border-color: #33c4b6;
}
#pricing .brilliant::before {
   width: 0;
   height: 0;
   border-style: solid;
   border-width: 64px 64px 0 0;
   border-color: #3bc6b8 transparent transparent transparent;
   position: absolute;
   left: 0;
   top: 0;
   content: "";
}
#pricing .brilliant::after {
   color: white;
   position: absolute;
   left: 9px;
   top: 6px;
   text-shadow: 0 0 2px #37c5b6;
   font-size: 1.4rem;
}
</style>

<div class="wrapper" id="pricing">
  <div class="package">
    <div class="name">Limited</div>
    <div class="price">€2</div>
    <div class="trial">Available for a month</div>
    <hr />
    <ul>
      <li>
        <strong>8</strong>
        team members
      </li>
      <li>
        <strong>6</strong>
        team playlists
      </li>
      <li>
        <strong>Unlimited</strong>
        public playlists
      </li>
    </ul>
  </div>
  <div class="package brilliant">
    <div class="name">Brilliant</div>
    <div class="price">€5</div>
    <div class="trial">Free 30 day trial</div>
    <hr />
    <ul>
      <li>
        <strong>Unlimited</strong>
        team members
      </li>
      <li>
        <strong>Unlimited</strong>
        team playlists
      </li>
      <li>
        <strong>Unlimited</strong>
        public playlists
      </li>
      <li>
        Team analytics
      </li>
      <li>
        Send files
      </li>
    </ul>
  </div>
  <div class="package">
    <div class="name">Basic</div>
    <div class="price">€0</div>
    <div class="trial">Totally free</div>
    <hr />
    <ul>
      <li>
        <strong>5</strong>
        team members
      </li>
      <li>
        <strong>3</strong>
        team playlists
      </li>
      <li>
        <strong>Unlimited</strong>
        public playlists
      </li>
    </ul>
  </div>
</div>

# `#` Title 1 `{#anchor}`

## `##` Title 2 `{#anchor}`

### `###` Title 3 `{#anchor}`

`[link]``(url)` [link](/) | `[link <a-out/>]``(url)` [link <a-out/>](https://iaco-io.github.io)
`*` text *italic* text `*` | `**` text **bold** text `**`
`***` text ***highlight*** text `***` | `~~` text ~~strike~~ text `~~`
< hr > `---` | `` ` `` `code` `` ` ``

> `>` Quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote

```` ``` ```` `↵` `block` `↵` ```` ``` ````
```
block
```

- list with dots
- starts with `-` or `*`

1. list with numbers
1. starts with `1.`

---

Input:

`<input type="text" name="name" placeholder=" &#xF007; Name"/>`

<input type="text" name="name"  placeholder=" &#xF007; Name"/>
<input type="text" name="email" placeholder=" &#xF0E0; E-mail"/>
<input type="text" name="msg"   placeholder=" &#xF007; class += full" class="full"/>

Textarea:

`<textarea type="text" name="msg" placeholder="&#xF075;  Message..."></textarea>`

<textarea type="text" name="msg" placeholder="&#xF075;  Message..."></textarea>
<textarea type="text" name="msg" class="full" placeholder="&#xF075;  class += full"></textarea>

Button:

`<a href="/" class="button">Button a</a>`

`<input type="submit" class="button" name="submit" value="Button input">`

<a href="/" class="button">Button a</a>
<input type="submit" name="submit" class="button" value="Button input">
<input type="submit" name="submit" class="button primary" value="class += primary">
<input type="submit" name="submit" class="button primary large" value="class += primary large">
<input type="submit" name="submit" class="button secondary small full" value="class += secondary small full">

Button with big icon:

`<a class="button secondary large" href="/youtube/join" target="_blank"><i class="fab fa-youtube fa-2x middle"></i> Subscribe</a>`

<a class="button secondary large" href="/youtube/join" target="_blank"><i class="fab fa-youtube fa-2x middle"></i> Subscribe</a>

---

Image:

`{ % include img src="assets/media/bg/default.jpg" title="Alt text" %}`

{% include img src="assets/media/bg/default.jpg" title="Alt text" %}

YouTube Video:

`{ % include yt id="" %}`

{% include yt id="JLTk1jksamk" %}

<!--
ig: B1OwTHPiG5M
tiktok: 6801989263727578373
-->

{% include newsletter %}
