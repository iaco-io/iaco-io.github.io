---
layout: default
permalink: /ami/

author: iaco
image: assets/media/bg/i-love-a.jpg
home-icon: false

title: "A ❤️ I"
title-bg: false
description: "Today is day number #<span id='counter'>X</span> since we first met!<br>
  <em><a href='https://www.dictionary.com/browse/ami'>am</a><a href='https://es.wikipedia.org/wiki/Ami_(trilog%C3%ADa)'>i</a></em> means lover :) and comes from ❝&nbsp;<em>a</em>&nbsp;a<em>m</em>or&nbsp;<em>i</em>&nbsp;❞"

links-side: false

home-fullscreen: true

links-home:
  - title: Our Playlist
    icon: fa fa-headphones-alt
    url: "https://www.youtube.com/playlist?list=PL4K6mvsV5xWavIfjcdId7Q6PcUFDNgrxF&jct=2LIk7nIIcPKGhmC4ShgDHig1WxDpSg"
    newtab: true
    show-home: true
    show-side: false
  - title: Our Album
    icon: fa fa-camera-retro
    url: "https://www.icloud.com/sharedalbum/#B16G6XBubRvFMT8"
    newtab: true
    show-home: true
    show-side: false

show-main: false
links-gallery: false
links-footer: false
show-corner: false

---

<script>
  const ONE_DAY = 1000 * 60 * 60 * 24;
  const DAY_1 = new Date('2023-05-05T00:00:00+01:00');
  const TODAY = new Date();

  const differenceMs = Math.abs(TODAY - DAY_1);

  const DAYS = Math.round(differenceMs / ONE_DAY);

  $('#counter').text(DAYS);
</script>
