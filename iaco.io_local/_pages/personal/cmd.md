---
layout: default
permalink: /cmd/

author: iaco
image: assets/media/bg/skyby-regn.gif
home-icon:
  top:
    url: assets/media/logo/power-alpha.png
    width: 0px
    opacity: 0
  middle: false

pre-title: "<tok>tomo-lawa</tok> &nbsp; <tok>ma</tok> <span id='year'></span><br><tok>open sin pona pi+__pali</tok>"
title: "<span id='time' style='font-size: 40px;'></span><p><tok>[_jan-ali_kama-olin] [_wawa-insa_wile-awen_sona-jo]</tok></p>"
title-bg: false
description: <tok>ali li tawa-telo</tok>

links-side: false

home-fullscreen: true

links-home:
  - title: <tok>insa-lawa</tok>
    icon: fa fa-umbrella
    url: /cmd/insa-lawa
    newtab: false
    show-home: true
    show-side: false
  - title: <tok>telo musi</tok>
    url: javascript:var a = document.getElementById('bg-audio'); if(a.paused){ a.play(); }else{ a.pause(); }
    icon: fas fa-cloud-showers-heavy
    newtab: false
    show-home: true
    show-side: false

show-main: false
links-gallery: false
links-footer: false
show-corner: false

---

<style>
.overlay { background-color: var(--fg) !important; }
.gradient-overlay { display: none; }
.home-content-table { background: none; }
.home-bottom-text li > *,
.home-bottom-text > * {
  color: var(--bg) !important;
  text-shadow: none !important;
}
</style>

<script>
  //window.onclick = () => { $('#bg-audio')[0].play(); window.onclick = null; }

  function getWeekNumber() {
    var today = new Date();
    var year = today.getFullYear();
    var jan4th = new Date(year, 0, 4);
    var daysSinceJan4th = Math.floor((today - jan4th) / (24 * 60 * 60 * 1000));
    var isoWeekNumber = Math.ceil((daysSinceJan4th + jan4th.getDay() + 2) / 7);
    return isoWeekNumber;
  }

  function getDayOfYear() {
    var now = new Date();
    var start = new Date(now.getFullYear(), 0, 0);
    var diff = now - start;
    var oneDay = 1000 * 60 * 60 * 24;
    var dayOfYear = Math.floor(diff / oneDay);
    return dayOfYear;
  }

  function getTotalDaysInYear() {
    var now = new Date();
    var start = new Date(now.getFullYear(), 0, 0);
    var end = new Date(now.getFullYear() + 1, 0, 0);
    var totalDays = Math.floor((end - start) / (1000 * 60 * 60 * 24));
    return totalDays;
  }

  $("#year").append("<b style='font-size: 25px;'>" + getDayOfYear().toString().padStart(2, '0') + "</b>");
  $("#year").append(" / " + getTotalDaysInYear());

  const WEEK_DAYS = ["2", "3", "4", "5", "6", "7", "1"];

  $("#time").append(" <tok title='sike'>sike</tok>" + getWeekNumber().toString().padStart(2, '0'));
  $("#time").append(" <tok title='suno'>suno</tok>" + WEEK_DAYS[new Date().getDay()]);
  $("#time").append("<span style='font-size: 22px;'>/<span style='font-size: 20px;'>7</span></span>");
</script>

<audio src="{{ site.baseurl }}/assets/media/rain.mp3" id="bg-audio" loop />
<!-- <audio src="{{ site.baseurl }}/assets/media/rain.mp3" id="bg-audio" autoplay loop /> -->
