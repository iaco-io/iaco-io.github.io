---
layout: protected
code: IACO10YT
permalink: /youtube/exclusive/
featured: false #true
hidden: false #true

author: iaco
# image: assets/media/bg/default.jpg
home-fullscreen: false #true
home-icon: #false
    top:
      url: assets/media/logo/power-alpha.png
      width: 0px #80px
      opacity: 0 #1
#   middle: #false
#     url: assets/media/logo/power-alpha.png
#     position: 100%
#     opacity: .5

youtube: "JLTk1jksamk"

pre-title: pre-title<br>With line-break
title: Title
description: Description<br>With line-break

# categories: [ cruelty-free, gym, nutrition, productivity, sleep, wellbeing ]
# tags: [ a, b ]

# show-home: true #false
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
  - url: "#newsletter" #https:// #/articles
    newtab: false #true
    title: NEWSLETTER<br>Join it today
    image: assets/media/bg/default.jpg
  - url: /articles #https:// #"#newsletter"
    newtab: false #true
    title: ARTICLES<br>Find my articles here
    image: assets/media/bg/default.jpg

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

# `#` Title 1 `{#anchor}`

## `##` Title 2 `{#anchor}`

### `###` Title 3 `{#anchor}`

`[link]``(url)` [link](/) | `[link <a-out/>]``(url)` [link <a-out/>](https://iaco-io.github.io)
`*` *italic* `*` | `**` **bold** `**`
`***` ***highlight*** `***` | `~~` ~~strike~~ `~~`
< hr > `---` | `` ` `` `code` `` ` ``

> `>` Quote

```` ``` ```` `↵` `block` `↵` ```` ``` ````

```text
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
