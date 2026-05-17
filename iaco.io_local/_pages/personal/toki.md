---
layout: default
permalink: "/toki"
author: iaco

pre-title: Join us, together we can
title: Make our world a better&nbsp;place!
description: We are e-Rotaract Beyond Frontiers,<br>And we are here to hear your idea, let's&nbsp;do&nbsp;it!

hide-menu: true
hide-home: true
hide-footer: true
hide-go-top: true

---

<style>
  @font-face { font-family: linja; src: url('../assets/fonts/linja-pona-4.9.otf'); } 
</style>

<script>
  function update() {
    document.getElementById("txt").innerHTML = document.getElementById("sym").value
  }
</script>

<ul class="showcase large">
  <li>
    <textarea id="sym" onkeyup="update()" onclick="" type="text" style="color: white; width: 100%; font-family: linja; font-size: 40px; height: 50vh;">pona</textarea>
  </li>
  <li id="txt"></li>
</ul>

<ul class="showcase">
  <a><li>
    IΛCO 🌟 <b id="borndayspassed">_</b><br>
    IΛCO 🌟 <b id="bornweekspassed">_</b>
  </li></a>
</ul>

<script>
  window.onload = function() {
    countUpFromTime(new Date().getFullYear()+"-01-01", 'yeardayspassed', "j", false);
    countUpFromTime(new Date().getFullYear()+"-12-30", 'yeardaystogo', "j", false);

    countUpFromTime("1994-02-01", 'borndayspassed', "j");
    countUpFromTime("1994-02-01", 'bornweekspassed', "w");

    //countUpFromTime("2018-06-28", 'gym', "j", true);
    countUpFromTime("2022-03-01", 'gym', "j", true);
    countUpFromTime("2019-02-28", 'vegan', "j", true);
    countUpFromTime("2022-02-03", 'sleepmaster', "j", true);

    countUpFromTime("2100-01-01", 'vivaci2100', "w", false);
    countUpFromTime("2030-01-01", 'iaco2030', "w", false);
    countUpFromTime("3000-01-01", 'iacovivaci3000', "w", false);
  }

  function countUpFromTime(countFrom, id, type, date) {
    txtdate = countFrom;
    countFrom = new Date(countFrom).getTime();
    var now = new Date(),
        countFrom = new Date(countFrom),
        timeDifference = (now - countFrom);

    var secondsInADay = 60 * 60 * 1000 * 24,
        secondsInAHour = 60 * 60 * 1000;

    days = Math.floor(timeDifference / (secondsInADay) * 1);
    hours = Math.floor((timeDifference % (secondsInADay)) / (secondsInAHour) * 1);
    mins = Math.floor(((timeDifference % (secondsInADay)) % (secondsInAHour)) / (60 * 1000) * 1);
    secs = Math.floor((((timeDifference % (secondsInADay)) % (secondsInAHour)) % (60 * 1000)) / 1000 * 1);

    weeks = Math.floor(days / 7);

    if(type == "j")  txtVar = Math.abs(days) + 1;
    if(type == "w") txtVar = Math.abs(weeks)

    document.getElementById(id).innerHTML = txtVar + "<small>" + type + (date ? " " + txtdate.replaceAll("-", "&#x2011;") : "") + "</small>";
  }
</script>



<ul class="showcase" id="list"></ul>

<script>
  var links = [
    ["📨 My E-mails", "https://mail.ovh.net/roundcube/?_task=login", ""],
    ["🥕 iago-food-1w", "https://lite.framacalc.org/iago-food-1w", ""],
    ["🎨 Creator Studio", "https://business.facebook.com/creatorstudio", ""],
    ["💼 Business Suite", "https://business.facebook.com/latest/inbox/messenger", ""]
  ];
  for(l of links) {
    $("#list").append(
        "<a href='" + l[1] + "'>" +
          "<li>" +
            l[0] +
            (l[2] != "" ? "<br><small>" + l[2] + "</small>" : "") +
          "</li>" +
        "</a>");
  }
</script>



<ul class="showcase large">
  <li onclick="copyEvent('input')" id="bdaymsg"></li>
</ul>
