---
layout: default
permalink: /ctrl/

author: iaco
image: default-bg.jpg
logo:
  url: logo/power-alpha.png
  position: top

pre-title: a
title: b
description: c

show-main: "only-main"
show-logo: false
show-home: false
links-side: false
links-footer: false
show-corner: false

---

<ul class="showcase large">
  <li id="kinsight"></li>
</ul>

<script>
  Date.prototype.getWeekNumber = function(){
    var d = new Date(Date.UTC(this.getFullYear(), this.getMonth(), this.getDate()));
    var dayNum = d.getUTCDay() || 7;
    d.setUTCDate(d.getUTCDate() + 4 - dayNum);
    var yearStart = new Date(Date.UTC(d.getUTCFullYear(), 0, 1));
    var w = Math.ceil((((d - yearStart) / 86400000) + 1)/7);
    if(this.getDay() == 0 | this.getDay() == 6) w = w + 1;
    return w;
  };
</script>

<ul class="showcase">
  <a onclick="document.location='https://www.timeanddate.com/calendar/custom.html?year='+new Date().getFullYear()+'&amp;country=5&amp;cols=0&amp;fdow=6&amp;wno=6&amp;wncs=2&amp;ctf=2&amp;wdf=1&amp;holmark=2&amp;hod=1&amp;hcl=1&amp;cdt=1&amp;ccg=1&amp;cci=6&amp;ccp=3&amp;ccu=10&amp;ccz=0&amp;cwd=2______2&amp;cwf=______&amp;holm=1&amp;doy=1&amp;dly=1&amp;hid=1&amp;typ=0&amp;display=3&amp;df=1'"><li>
    📆 <b id="yeardayspassed">_</b>&nbsp;<i class="fas fa-angle-right"></i>&nbsp;<b id="yeardaystogo">_</b>
    <br>
    📆 <script>document.write(new Date().getWeekNumber());</script><small>w</small>&nbsp;<i class="fas fa-angle-right"></i>&nbsp;<script>document.write(new Date(new Date().getFullYear(), 11, 30).getWeekNumber() - new Date().getWeekNumber());</script><small>w</small>
  </li></a><a href="https://www.timeanddate.com/date/birthdayresult.html?d1=01&m1=02&y1=1994&h1=11&i1=00&s1=00&type=0&gran=50"><li>
    🌟 <b id="borndayspassed">_</b> <b id="bornweekspassed">_</b><br>
    <!-- 😴 <b id="sleepmaster">_</b><br> -->
    💪 <b id="gym">_</b> 🌱 <b id="vegan">_</b>
  </li></a><!--<a><li>
    🐢 <b id="iaco2030">_</b><small> 2030</small><br>
    🌲 <b id="vivaci2100">_</b><small> 2100</small><br>
    🔮 <b id="iacovivaci3000">_</b><small> 3000</small>
  </li></a>-->
</ul>

<script>
  window.onload = function() {
    countUpFromTime(new Date().getFullYear()+"-01-01", 'yeardayspassed', "j", false);
    countUpFromTime(new Date().getFullYear()+"-12-30", 'yeardaystogo', "j", false);

    countUpFromTime("1994-02-01", 'borndayspassed', "j");
    countUpFromTime("1994-02-01", 'bornweekspassed', "w");

    //countUpFromTime("2022-10-01", 'sleepmaster', "j", true);
    //countUpFromTime("2018-06-28", 'gym', "j", true);
    countUpFromTime("2022-09-05", 'gym', "j", false);
    countUpFromTime("2019-02-28", 'vegan', "j", false);

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

    document.getElementById(id).innerHTML =
      txtVar + "<small>" + type + "</small> " +
      "<small  style='white-space: nowrap'>"  + (date ? " " + txtdate : "") + "</small>";
  }
</script>

<ul class="showcase large">
  <li onclick="navigator.clipboard.writeText($('#bdaymsg').html().replace(/<br\s*[\/]?>/gi, '\n'));" id="bdaymsg"></li>
</ul>

<script>
  // {lang="en", emojis: [], msg: ""},

  var list_msgs_hi = [
      {lang: "en", emojis: ["🥳", "🎁", "🎈", "🎉", "🎊", "🙌"], msg: "Happy birthday!!!"},
      {lang: "en", emojis: ["🥳", "🎁", "🎈", "🎉", "🎊", "🙌"], msg: "Hello! Just passing by to wish you an amazing birthday"},
      {lang: "en", emojis: ["🥳", "🎁", "🎈", "🎉", "🎊", "🙌"], msg: "Hi! I saw it's your day today! Happy Birthday!!! "},
      {lang: "en", emojis: ["🥳", "🎉", "🎊", "🙌"], msg: "Hey! It's your birthday!!!"},
      {lang: "en", emojis: ["🥳", "🎁", "🎈", "🎉", "🎊", "🙌"], msg: "I came to wish you an amazing birthday!"}
  ];

  var list_msgs_wish = [
      {lang: "en", emojis: ["👏", "🤞", "💪", "🤩", "😌", "😄"], msg: "I wish you a great day, and that your wishes come true"},
      {lang: "en", emojis: ["👏", "🤩", "😌", "😄"], msg: "Enjoy every second, close to all those who make you feel good and loved"},
      {lang: "en", emojis: ["👏", "🤩", "😄"], msg: "Have an incredible day with those who are the most important for you"},
      {lang: "en", emojis: ["👏", "🤞", "🤩", "😌", "😄"], msg: "I wish you all the good in the world, today and all the other days"},
      {lang: "en", emojis: ["👏", "🤞", "💪", "🤩", "😌", "😄"], msg: "I wish you a lot of love, strenght, success, and everything good"}
  ];

  var list_msgs_bye = [
      {lang: "en", emojis: ["🙂", "😁", "😃", "😊", "😇", "👋"], msg: "Hope to see you soon"},
      {lang: "en", emojis: ["😁", "😃", "😊", "👋"], msg: "See you, hopefully very soon"},
      {lang: "en", emojis: ["🙂", "😃", "👋"], msg: "Bye for now! See you!!"},
      {lang: "en", emojis: ["🙂", "😁", "😃", "😊", "👋"], msg: "Good bye and see you!"},
      {lang: "en", emojis: ["🙂", "😁", "😃", "😊", "😇", "👋"], msg: "Good bye, and take care!"}
  ];

  function randNum(min, max) {
      return Math.floor(Math.random() * (max - min)) + min;
  }

  var msg1 = "";
  var pos1 = randNum(0,4);
  msg1 += list_msgs_hi[pos1]['msg'] + " ";
  msg1 += list_msgs_hi[pos1]['emojis'][randNum(0,list_msgs_hi[pos1]['emojis'].length-1)];

  var msg2 = "";
  var pos2 = randNum(0,4);
  msg2 += list_msgs_wish[pos2]['msg'] + " ";
  msg2 += list_msgs_wish[pos2]['emojis'][randNum(0,list_msgs_wish[pos2]['emojis'].length-1)];

  var msg3 = "";
  var pos3 = randNum(0,4);
  msg3 += list_msgs_bye[pos3]['msg'] + " ";
  msg3 += list_msgs_bye[pos3]['emojis'][randNum(0,list_msgs_bye[pos3]['emojis'].length-1)];

  $('#input').val(msg1 + "\n" + msg2 + "\n" + msg3);
  document.getElementById('bdaymsg').innerHTML = msg1 + "<br>" + msg2 + "<br>" + msg3;
</script>

<script>
  var kinsights = [
      {number: "1", kinsight: "Keep it simple: mantenho e vejo * as simples as possible"},
      {number: "2", kinsight: "Baby steps: passos pequenos e atingíveis"},
      {number: "3", kinsight: "Keep it simple + Baby steps = clear and self-contained goal"},
      {number: "4", kinsight: "Pursue *s really important: success or failure -> glob. gets better b/c I tried"},
      {number: "5", kinsight: "Combino clear & self-contained goals (^3) p alcançar complex/big goals"},
      {number: "6", kinsight: "I don't take things for granted"},
      {number: "7", kinsight: "Medo: @s have it, ñ me guia/decide, ajo confident"},
      {number: "8", kinsight: "Não deixo o poder subir à minha cabeça"},
      {number: "9", kinsight: "Amo meus planos A e B! Sad if get A e ñ B. B is safety net for A."},
      {number: "10", kinsight: "Thin schedule b/c then I try to do + & can do + if I try"},
      {number: "11", kinsight: "I'm incrível => inspiro e rodeio à mim/todos com *s incríveis"},
      {number: "12", kinsight: "Surround w/ @s I admire (sou inspirado pelas 5 @s c/ quem convivo)"},
      {number: "13", kinsight: "Exagero p/ + ou - até achar bom balanço"},
      {number: "14", kinsight: "Power is a responsibility, not a privilege"},
      {number: "15", kinsight: "Aceito 100 apostas favoráveis starting now"},
      {number: "16", kinsight: "Sinto o sentimento, e estou consciente"},
      {number: "17", kinsight: "Nunca mais pouco sono, mto doce/food, nuit blanche"},
      {number: "18", kinsight: "Não sinto sorry for myself (love)"},
      {number: "19", kinsight: "I show interest, but ñ wait (eg reply email, msg), I do important *s for me"},
      {number: "20", kinsight: "Valorizo muito o que é meu/vem de mim"},
      {number: "21", kinsight: "Embrace past, vivo presente, planejo futuro"},
      {number: "22", kinsight: "Comportamento gera comportamento"},
      {number: "23", kinsight: "Não fear approval, ajo consciente e aberto"},
      {number: "24", kinsight: "Act how I feel: full freedm! Ñ lie,expect,exagr"},
      {number: "25", kinsight: "Uso âncora (primeira info vem de mim)"},
      {number: "26", kinsight: "Tenho paciência, sei q às vezs é bom esperar"},
      {number: "27", kinsight: "Rappel final goal,ignoro detalh.s peq/imutável"},
      {number: "28", kinsight: "Sou consciente do meu poder d mudar o glob."},
      {number: "29", kinsight: "Não idolatro * ou @, no máx. me inspiro"},
      {number: "30", kinsight: "Terei vários legados, viverei p/ sempre"},
      {number: "31", kinsight: "Me dou o novo: evoluir. Não à zona-conforto"},
      {number: "32", kinsight: "I listen|talk cmg,+autoconheço=>–*s upsetme"},
      {number: "33", kinsight: "Enjoy (make it mine) road/ride towards goal"},
      {number: "34", kinsight: "Ñ evit risk calculado,me preparo&lido c result"},
      {number: "35", kinsight: "Não limito (saudavelmente) eu, você, nós"},
      {number: "36", kinsight: "Lembro-me q/ eu amo-me! I S2 Me :)"},
      {number: "37", kinsight: "Tds são adoráveis/amáveis, basta ser aberto"},
      {number: "38", kinsight: "Elogio:thank, I had help from…, (elogia back?)"},
      {number: "39", kinsight: "Lembro que as *s da vida são temporárias"},
      {number: "40", kinsight: "I have T-shape, Y-shape, Δ-shape knowledge"},
      {number: "41", kinsight: "Sei q/ 1 ótima oportunid. não será a última"},
      {number: "42", kinsight: "Eu resolvo problemas, não os crio/procuro"},
      {number: "43", kinsight: "1 place é amazing iff eu+@s o somos"},
      {number: "44", kinsight: "SWOT analyze all: strength weak opport threat"},
      {number: "45", kinsight: "Analiso qdo posso dedicar-me a */@"},
      {number: "46", kinsight: "Ignoro info qnd useless: msg read, qtd likes"},
      {number: "47", kinsight: "Embrace s2 q toco,@act nice,mature=>+happy"},
      {number: "48", kinsight: "Life's ñ binary bom-bad: it's senses, discovery"},
      {number: "49", kinsight: "Vejo big-picture, ajo no detail p evolve big-pic"},
      {number: "50", kinsight: "I embrace/incorporate/become a good *"},
      {number: "51", kinsight: "I set eu diferente das @s qnd vejo benefício"},
      {number: "52", kinsight: "Faço *s pq acredito, não por medo/apegação"},
      {number: "53", kinsight: "Peço ajuda, assim as @s gostam + de mim"},
      {number: "54", kinsight: "I'm ambicioso, paciente, estratégico, ñ invejoso"},
      {number: "55", kinsight: "To find out if lie: ask @ to email me the info"},
      {number: "56", kinsight: "Lembro o nome e parabenizo aniver das @s"},
      {number: "57", kinsight: "Polite: Elogio, Agradeço e Cumprimento"},
      {number: "58", kinsight: "Se * me incomoda, ajo rápido e eficiente"},
      {number: "59", kinsight: "Confudem educação com interesse, uso isso"},
      {number: "60", kinsight: "I ñ speak love, it's verb: I do love; I ñ control S2 doutro"},
      {number: "61", kinsight: "Ñ sempr +intelignt, mas sempr +espert/sagaz"},
      {number: "62", kinsight: "Faço acontecer o melhor para mim"},
      {number: "63", kinsight: "Lembro a força do \"→0\": tempo,money,habits"},
      {number: "64", kinsight: "Pago/invisto 1° p/ mim (>10% in), dopo gastos"},
      {number: "65", kinsight: "Faço, pois sei q estou sempre pronto"},
      {number: "66", kinsight: "Se é grátis e abundante, dou e ñ me importo"},
      {number: "67", kinsight: "Nunca diminuo *, nem comparo, falo bem, I level up @s/*s"},
      {number: "68", kinsight: "Uso o melhor das @s/regras a meu favor"},
      {number: "69", kinsight: "I fake|do it until I become|incorporat it (if healthy)"},
      {number: "70", kinsight: "Uso a área máx marcada pelos limites reais"},
      {number: "71", kinsight: "Incentivo o potencial dos outros a meu favor"},
      {number: "72", kinsight: "Uso raiva construtiva/, sei manter minha paz"},
      {number: "73", kinsight: "Não abafo thoughts –, embrace+learn c/ eles"},
      {number: "74", kinsight: "Sonhos vêm c/ pesadelos, sei escolhê-los"},
      {number: "75", kinsight: "Se é polêmico, uso a meu favor"},
      {number: "76", kinsight: "Sou/ajo de maneira independente"},
      {number: "77", kinsight: "Possuo um pragmatismo implacável"},
      {number: "78", kinsight: "Possuo uma postura imponente, presente"},
      {number: "79", kinsight: "Mereço o melhor pq dou my melhor (1°p/ me)"},
      {number: "80", kinsight: "Time alone/silenc to relax/fix new knowledge"},
      {number: "81", kinsight: "If learned * new: explain to @ means I learned"},
      {number: "82", kinsight: "Sempre vejo como ganhar c/ a situação, lado+"},
      {number: "83", kinsight: "Ganho simpatia das @s p/ qdo algo der errado"},
      {number: "84", kinsight: "Dou às @s o mín needed e q/ não sinto falta"},
      {number: "85", kinsight: "Infos importantes/úteis só falo qdo devo"},
      {number: "86", kinsight: "Não subestimo a importância de algo p/ @"},
      {number: "87", kinsight: "Uso @s q não têm vergonha p/ me promover"},
      {number: "88", kinsight: "Sou o amante perfeito, e amo no meu limite"},
      {number: "89", kinsight: "I have a cute face, and I know how to use it"},
      {number: "90", kinsight: "Vida são momentos e sentimentos, escolho-os bem"},
      {number: "91", kinsight: "Vejo benefits em investir em @s (sent.s,time,$)"},
      {number: "92", kinsight: "Sempre q eu for fazer algo pela 1a vez: filmo!"},
      {number: "93", kinsight: "I face damage when I learn & it won't limit me"},
      {number: "94", kinsight: "I get-to-know people for real: work,gym,viziño"},
      {number: "95", kinsight: "Não me coloco in health risk (alcohol, sex...)"},
      {number: "96", kinsight: "@ identifica * por aparência e sentimnt, uso"},
      {number: "97", kinsight: "Me meço/medem c/ my fita-métrica, ñ doutro"},
      {number: "98", kinsight: "1°accept, 2°understand -> no longer complex"},
      {number: "99", kinsight: "Lembro q é fácil perder track, e me cuido"},
      {number: "100", kinsight: "Se *1 lembra *2 ruim, excluo ou altero *1"},
      {number: "101", kinsight: "Única @ q devo fazer feliz sou eu! Me basto!"},
      {number: "102", kinsight: "Insecurities existem, o q/ muda é my reação"},
      {number: "103", kinsight: "Aproveito highs, observo e aprendo nos lows"},
      {number: "104", kinsight: "Keep * enqt vejo healthy e results +s, then 🔄"},
      {number: "105", kinsight: "Qdo uncover ou crio * in mind: identify+study"},
      {number: "106", kinsight: "Ignoro/esqueço *s inúteis (criadas) na mente"},
      {number: "107", kinsight: "Controlar emoção = direcioná-la, ñ sufocá-la"},
      {number: "108", kinsight: "Identifico extremos: fácil-difícil, bom-ruim >"},
      {number: "109", kinsight: "Ñ invejo@, amo ter perto knowled.+inspiration"},
      {number: "110", kinsight: "@s temem,sou corajoso=> +chances: 100bets"},
      {number: "111", kinsight: "Do *update* (change) slow & \"prove\" nada diff"},
      {number: "112", kinsight: "*s ñ get easier. I get better!"},
      {number: "113", kinsight: "Personify * as woman/girl to gain sympathy"},
      {number: "114", kinsight: "Admito, embrace e aprendo com meus erros"},
      {number: "115", kinsight: "Identify low auto-estima (selfies) e me cuido"},
      {number: "116", kinsight: "Ñ discuto, ouço a @ explicar e evoluo ela/eu"},
      {number: "117", kinsight: "Uso só needed time p human contact/socialize"},
      {number: "118", kinsight: "Faço o imprevisto se vejo benefício"},
      {number: "119", kinsight: "Identifico \"Fases de Luto\" -> ganho tempo"},
      {number: "120", kinsight: "Fast Disney Romântic -> Amor <- Slow Amigo"},
      {number: "121", kinsight: "Problem! Solution? Yes: ñ worry! No: ñ worry!"},
      {number: "122", kinsight: "Não crio personagens em minha mente"},
      {number: "123", kinsight: "Falo comigo sempre usando pronome \"eu\" !"},
      {number: "124", kinsight: "Fico feliz de estar livre de */@ q ñ me merece"},
      {number: "125", kinsight: "Lembro: todos cagam (human) => + confiança"},
      {number: "126", kinsight: "@s want feel important, feel useful"},
      {number: "127", kinsight: "Sempre humilde! Sempre gentil! Sempre 😁!"},
      {number: "128", kinsight: "No shit excuses! I do it for me!"},
      {number: "129", kinsight: "É essencial acreditar en mim e nas @s around"},
      {number: "130", kinsight: "I'm an adult, I act like one, a responsible one!"},
      {number: "131", kinsight: "Não me enveneno! Não uso *s não saudáveis!"},
      {number: "132", kinsight: "Love the next in same proportion I love myself"},
      {number: "133", kinsight: "I'm responible for *s I can control in my life"},
      {number: "134", kinsight: "I put myself in 1st-place! I know my priorities!"},
      {number: "135", kinsight: "I Engineer my Life!"},
      {number: "136", kinsight: "I'm enthusiastic! Focus energy in * I can ctrl"},
      {number: "137", kinsight: "If can do it today, I don't leave it for tomorrow"},
      {number: "138", kinsight: "Se falo, é pq eu acredito/sei/conheço/entendo"},
      {number: "139", kinsight: "Ñ aceito menos do q mereço, e sei qto mereço"},
      {number: "140", kinsight: "Verdadeiro e self-unlimited: secret to be feliz"},
      {number: "141", kinsight: "Improve my qualidades, diminuo my defeitos"},
      {number: "142", kinsight: "If time+capacity+ñ prejuízo pra ajudar: ajudo!"},
      {number: "143", kinsight: "Dou 2a-chance: if ñ me prejudico / do error 2x"},
      {number: "144", kinsight: "Algo feito é melhor do que algo perfeito!"},
      {number: "145", kinsight: "Sugo best conhecimento das @s, ask + & +"},
      {number: "146", kinsight: "If exist possibility & is healthy: I exert control"},
      {number: "147", kinsight: "Tristeza é fase de amadurecimento emocional"},
      {number: "148", kinsight: "Sei dizer tchau/me afastar qdo for saudável"},
      {number: "149", kinsight: "Confiança=depender de @ até ponto saudável"},
      {number: "150", kinsight: "Carga emocional => saúde psic. – na situação"},
      {number: "151", kinsight: "Opportunity + Preparation = Luck"},
      {number: "152", kinsight: "20s/5s rule: good accessible in 5s, bad in 20s"},
      {number: "153", kinsight: "Viver: Ñ passo-por-cima, e ñ me limito por @s"},
      {number: "154", kinsight: "I face fear/uncomfort =>amadureço pts fracos"},
      {number: "155", kinsight: "It can go wrong 100 times, I need only 1 right!"},
      {number: "156", kinsight: "Do if true,justo,cria vontad+friends,benefit all"},
      {number: "157", kinsight: "If I love@ e v|v=> put@in rotina e can pay|get*"},
      {number: "158", kinsight: "Ouço/aprecio música culta, ñ drama/exagero"},
      {number: "159", kinsight: "Expresso como me sinto, e ñ julgando a @/*"},
      {number: "160", kinsight: "Can plan w/@: if it's independent or I've plan B"},
      {number: "161", kinsight: "If Im tryin' waytoohard,it's probably ñ right way"},
      {number: "162", kinsight: "Ñ copio abilities doutros, develop my qualities"},
      {number: "163", kinsight: "Love ñ just feeling, it's also action! I must act!"},
      {number: "164", kinsight: "It's all about habits, about training my mind"},
      {number: "165", kinsight: "I'm romantic, loving, and I use it for (my) good"},
      {number: "166", kinsight: "I come 1°, this way I can do good for everyone"},
      {number: "167", kinsight: "I recognize my qualities,ñ need @to recognize"},
      {number: "168", kinsight: "Who like me will disagree w/ me if feels need"},
      {number: "169", kinsight: "In human relation: sincero+humble+recognize"},
      {number: "170", kinsight: "About mirrors: if I feel *1, I'll see *1 in people"},
      {number: "171", kinsight: "I'm gentleman: if I get water/*, I get 1+ to @s"},
      {number: "172", kinsight: "I think in multiple lang.s to be more rational"},
      {number: "173", kinsight: "@ +smart: sub…, +ignorant: super… estimam"},
      {number: "174", kinsight: "Keep plan/goal/info to me, only tell @ if trust"},
      {number: "175", kinsight: "Agarro 1 oport. qdo sinto my life's ready for it"},
      {number: "176", kinsight: "Ter poder sobre*1 ≠ ser dono do*1, valorize*1"},
      {number: "177", kinsight: "TODAY is the first day of the rest of your LIFE"},
      {number: "178", kinsight: "Propósito = consistência: agir de acordo cmg"},
      {number: "179", kinsight: "\"Porquê\" leva p/ trás, \"Para quê\" leva p/ frente"},
      {number: "180", kinsight: "Qdo bravo: ñ falo past, falo contexto presente"},
      {number: "181", kinsight: "If I'm w/ @ & * is wrong/bad, I talk sincerely"},
      {number: "182", kinsight: "Ñ need be great to start. Need start to be great"},
      {number: "183", kinsight: "Falo positivo, vejo benefício/vantagem em *s negativas"},
      {number: "184", kinsight: "Me afasto de bad: @(ñ trust), locais, *s, habits"},
      {number: "185", kinsight: "Mi 1º: securit saúd stabilit body felings plans"},
      {number: "186", kinsight: "If I know me: no*/no@ can hurt my mind/heart"},
      {number: "187", kinsight: "Procrastinar/ñ dar my best=>ter q compensar"},
      {number: "188", kinsight: "I'm confident! Ñ uso fofura p/ hide insecurity"},
      {number: "189", kinsight: "Priorities! Ñ faço storm por nada qdo ñ worthy"},
      {number: "190", kinsight: "P mtos oq alcancei seems impossible, ñ to me"},
      {number: "191", kinsight: "Tudo é possível, ñ desisto, sigo em frente!"},
      {number: "192", kinsight: "Sempre can do better, ir+longe: *s're up to me"},
      {number: "193", kinsight: "Ñ desgasto relação, let neutral, retomo-a later"},
      {number: "194", kinsight: "Show interest,nice&• wait move|return ≈chess"},
      {number: "195", kinsight: "Need creativity, or relax antes * : go for a walk"},
      {number: "196", kinsight: "Crazies of past era are geniuses of future era"},
      {number: "197", kinsight: "Ñsit&plan*s.DO.If mess restart! OqDo next 3'?"},
      {number: "198", kinsight: "Aim high & center, re-try²³: + chances to get it"},
      {number: "199", kinsight: "Ñ good, but great! Ñ care about credit: humble"},
      {number: "200", kinsight: "When listening to advice, I'm humble & smart"},
      {number: "201", kinsight: "Ñ sigo unhealth flux! eg fila flight: wait seated"},
      {number: "202", kinsight: "Antes falar: entendo oq ouvi->falo oq percebo"},
      {number: "203", kinsight: "Important: Sensations, Memories, Learnings"},
      {number: "204", kinsight: "Chat:be interested,:D,do5'favor,tell(+)story@/I"},
      {number: "205", kinsight: "I want *s to challenge me, so it can evolve me"},
      {number: "206", kinsight: "If important & can do now: do! Else: schedule!"},
      {number: "207", kinsight: "Ñ poupo migalhas if prejuízo can be mto maior"},
      {number: "208", kinsight: "Unir p/ alcançar + results! Ando c/ @s boas!"},
      {number: "209", kinsight: "Ñ sou follower, I'm líder/protagonist of my life"},
      {number: "210", kinsight: "Imagination p obstcles, entusiasmo p avançar"},
      {number: "211", kinsight: "I know time passes, so I keep calm and going"},
      {number: "212", kinsight: "Eu faço + q a obrigação! Vou além!"},
      {number: "213", kinsight: "Foco em 1 coisa por vez=better&faster results"},
      {number: "214", kinsight: "O fracasso é parte integrante do sucesso!"},
      {number: "215", kinsight: "I'm tolerant, I adapt to adverse situations"},
      {number: "216", kinsight: "Ask carrer, habits… to see if @ is (+) company"},
      {number: "217", kinsight: "A superior see my evolution & if I can level up"},
      {number: "218", kinsight: "Ñ cobro @s, ajudo-as como querem/precisam"},
      {number: "219", kinsight: "Give loving and intelligent gifts, ñ expensive"},
      {number: "220", kinsight: "Spend resources in *s I love, not in my image"},
      {number: "221", kinsight: "20/80 Focus 20% problems to solve 80% conseqencs"},
      {number: "222", kinsight: "Aproveito tempo cmg, solo, sozinho c/ my presença"},
      {number: "223", kinsight: "I make @s self aware their potential, I elogio"},
      {number: "224", kinsight: "Ambição = amor-próprio, autocuidado"},
      {number: "225", kinsight: "Dinheiro = acesso a recursos p/ meu propósito"},
      {number: "226", kinsight: "Capitalismo = sist. social feito por pessoas"},
      {number: "227", kinsight: "Salvar/melhorar mundo é 1 processo contínuo"},
      {number: "228", kinsight: "Empresa é feita p/ @s, se boas => fazem bem"},
      {number: "229", kinsight: "Construir * => esforço, dedicação e direção"},
      {number: "230", kinsight: "Rico = meios e recursos p/ realizar objetivos"},
      {number: "231", kinsight: "Ser autêntico = dou meu melhor"},
      {number: "232", kinsight: "Eu tenho propósito e foco e direção!"},
      {number: "233", kinsight: "I act now! Perfection ñ become procrastination"},
      {number: "234", kinsight: "Some *s have no shortcuts, take all the time you need"},
      {number: "235", kinsight: "I'm 100% complete by myself! I can live solo!"},
      {number: "236", kinsight: "Never again shitty consumerist products. I buy what I need, and local."},
      {number: "237", kinsight: "Never again the disgusting-chaotic-home feeling"},
      {number: "238", kinsight: "Do the right thing."},
      {number: "239", kinsight: "To be exceptional, I must do the exception, become the exception"},
      {number: "240", kinsight: "The universe just exists. I am part of it. The universe is what I make with it"},
      {number: "241", kinsight: "I cannot guide & inspire (myself included) if I'm not healthy"},
      {number: "242", kinsight: "Keep trying. Live the road. The only 2 things I have for sure"},
      {number: "243", kinsight: "Keep a vision & conscious of present (me, my vision, distance between both)"},
      {number: "244", kinsight: "I'm true to myself. I know I'm (+)than it seems and I deserve (+) than I'm/have"},
      {number: "245", kinsight: "O homem é livre para fazer o que quer. Mas não para querer o que quer."},
      {number: "246", kinsight: "Sometimes to live I must survive. My reaction at&after tell about me/my health"},
      {number: "247", kinsight: "If u do *new, change direction, & feel lost: it's normal b/c u creating a new road"},
      {number: "248", kinsight: "If *works it's ñ just \"a great idea\", it's b/c @ tried&tried: got better till it worked"},
      {number: "249", kinsight: "5🔑to happy:health,meaningf-work, relationshps,$-indpndnt,self-actualisation"},
      {number: "250", kinsight: "There are 2 types of opportunities: the ones you get, & the ones you create"},
      {number: "251", kinsight: "Universe has♾experiences. We can always find * that gives + pleasure/happy"},
      {number: "252", kinsight: "Duty&joy go together. Duty so u can pursue happy, joy so u have * to fight for"},
      {number: "253", kinsight: "Consistency. Patience. Courage."},
      {number: "254", kinsight: "The most important part of a game is your game piece (in life = you!)"},
      {number: "255", kinsight: "90–9–1 (1% rule): in a community 90% consume, 9% contribute, 1% create"},
      {number: "256", kinsight: "Anotar rabos presos: pois ao sair de grupo/empresa => delet files, get/give *s"},
      {number: "257", kinsight: "Brainstorming: 1° alone create new ideas, 2° group show ideas to all @s"},
      {number: "258", kinsight: "Vivere lottando. Lottare amando. Amare vivendo."},
      {number: "259", kinsight: "Sentimento de roubado: só busco justiça qdo útil, minimizando conflitos"},
      {number: "260", kinsight: "No useless search time: in the end I must have an answer/solution/decision"},
      {number: "261", kinsight: "Sempre dizer hi/bye às pessoas que conheço, sempre!"},
      {number: "262", kinsight: "Do not worry about details before taking care of the bigger things"},
      {number: "263", kinsight: "Instead of “sorry”, say “thank you”"},
      {number: "264", kinsight: "If I organise something (rando, sortie cine musee), I am the last one to give up"},
      {number: "265", kinsight: "I do NOT do drama! I'm pragmatic, I'm confident, I'm gentleman, I'm me!"},
      {number: "266", kinsight: "Instead of \"I must stop it\" or \"I must change it\", I say \"I must evolve beyond it\""},
      {number: "267", kinsight: "Forgive myself for procrastinate = better performance in action"},
      {number: "268", kinsight: "Be it until you become it / Do it until you make/achieve it"},
      {number: "269", kinsight: "Sempre demonstro amor! SEMPRE!"},
      {number: "270", kinsight: "Life is the equilibrium among: need, want and can"},
      {number: "271", kinsight: "Even the richest person may want * I have (happiness, purpose, lifestyle...)"},
      {number: "272", kinsight: "I Amazing: 1. healthΔ, 2. gentle,lift up @s, purpose, 3. +confid (know Im amzng)"},
      {number: "273", kinsight: "If need to lie: set-reference, positive language, simple explanation & sentences"},
      {number: "274", kinsight: "IΛCO, EU ME AMO POR EU AMAR TANTO, TANTO TANTO TANTO!"},
      {number: "275", kinsight: "EU ME EMOCIONO PQ EM MINHA MENTE EU VIVI HISTÓRIAS TÃO LINDAS"},
      {number: "276", kinsight: "IT IS BORING TO BE NORMAL (: BE EXCEPTIONAL!"},
      {number: "277", kinsight: "Best way to impress is to tell WHY, not showing numbers or appearances"},
      {number: "278", kinsight: "I really enjoy facing important conflicts in life"},
      {number: "279", kinsight: "I do the task I must do — fear is normal, but I ñ procrastinate b/c of it"},
      {number: "280", kinsight: "I do the right thing b/c it’s right, not b/c it’s easy (vegan, eco, lgbt+...)"},
      {number: "281", kinsight: "There are two ways of doing something: right and again."},
      {number: "282", kinsight: "The craziest dream starts a million +. Dream w/ us. It's only crazy until you do it"},
      {number: "283", kinsight: "Liderar é criar círculo de confiança entre todos (todos bienveillants)"},
      {number: "284", kinsight: "Eu falo bem/com propriedade qdo vem do coração/motivação, eu amo isso"},
      {number: "285", kinsight: "Ñ sigo fluxo cega/: ñ faço o mesmo qu todos (horários, nutrition, segurança)"},
      {number: "286", kinsight: "I understand why * takes real state on my mind, then I take action or move on"},
      {number: "287", kinsight: "Disciplina inteligente: foco, foco, e foco na direção que almejo"},
      {number: "288", kinsight: "Avançar antes de * se tornar urgente"},
      {number: "289", kinsight: "What lies in our power to do, lies in our power not to do — Aristotle, 2k y ago"},
      {number: "290", kinsight: "Keep doing things of value that shape the world around you till you die"},
      {number: "291", kinsight: "Stop living on the fast lane to enjoy a better quality of life"},
      {number: "292", kinsight: "Eat a little less than your hunger demands"},
      {number: "293", kinsight: "Keep friends you can share your worries and good stories with"},
      {number: "294", kinsight: "Exercise to release hormones that make you happy"},
      {number: "295", kinsight: "Smiling wins u more friends & helps u see a world full of possibilities"},
      {number: "296", kinsight: "Connect with nature to recharge your batteries"},
      {number: "297", kinsight: "Maintain an attitude of gratitude"},
      {number: "298", kinsight: "Make every day count and leave the past in the past"},
      {number: "299", kinsight: "Discover the passion inside you which gives meaning to your days"},
      {number: "300", kinsight: "If you can take good care of the little and small in your life, then you are ready to live the big and abundant, because you know how to take care of the things you conquered"},
      {number: "301", kinsight: "Positive self-talk + 4 agreements: (1) I am impeccable with my words, (2) I do not take things personally, (3) I do not make assumptions, (4) Always do your best — no more, no less."},
      {number: "302", kinsight: "5 hobbies: To make me money, To keep me in shape, To keep me creative, To build my knowledge, To evolve my mindset"},
      {number: "303", kinsight: "Fool me once, shame on you. Fool me twice, you are overdue!"},
      {number: "304", kinsight: "The way you do one thing is the way you do everything!"},
      {number: "305", kinsight: "The last memory is the one we keep the most, it influences later our perception of the whole experience."},
      {number: "306", kinsight: "The quantity and quality/differentiability of experiences make our days/weeks feel longer"},
      {number: "307", kinsight: "Tell me what you value and I might believe you, but show me your calendar and bank account, and I will show you what you REALLY value"},
      {number: "308", kinsight: "Money comes to me, Money is good because I am good, Money speaks my language, Money sets me free."},
      {number: "309", kinsight: "Conscious words will attract a strong mind or offend a weak one."},
      {number: "310", kinsight: "Never doubt that a small group of committed citizens can change the world. Indeed, it's the only thing that ever does."},
      {number: "311", kinsight: "You must not fool yourself, and you are the easiest person to fool"},
      {number: "312", kinsight: "Strong people stand up for themselves, but stronger people stand up for those who can't"},
      {number: "313", kinsight: "Ser importante: ser 'importado' dentro doutros, levado p dentro do coração deles. Para isso preciso transbordar: me comunicar, me conectar com o outro, para q ele me importe em si."},
      {number: "314", kinsight: "Faça primeiro (de boa intenção e coração), pergunte depois!"},
      {number: "315", kinsight: "The Habit: before doing/thinking ask 'Is it good for me, my body and mind ?'"},
      {number: "316", kinsight: "Enquanto os outros dormem, aprecie a escuridão! :^) IAGO ^0^"},
      {number: "317", kinsight: "Quanto mais longa a corrida, mais chances existem de se ultrapassar os outros! :^) IAGO ^0^"},
      {number: "318", kinsight: "Quanto mais longe você for, mais perto da chegada estará! :^) IAGO ^0^"},
      {number: "319", kinsight: "À Liberdade, somente a Falta de Informação e Caráter se opõem! :^) IAGO ^0^"},
      {number: "320", kinsight: "O Silêncio é o Pior Veneno para um Palhaço! :^) IAGO ^0^"},
      {number: "321", kinsight: "À um Ignorante: minha Ignorância! :^) IAGO ^0^"},
      {number: "322", kinsight: "Não existem exceções para a existência de exceções; e esta regra não é exceção! :^) IAGO ^0^"},
      {number: "323", kinsight: "Remember to ask: How does that make you feel?"},
      {number: "324", kinsight: "Make life go with a swing and a smile. Laugh at trouble and sing all the while. Now count your achievements and smile!"}
  ];

  var k_pos = Math.floor(Math.random() * (kinsights.length-1));
  document.getElementById('kinsight').innerHTML = kinsights[k_pos].kinsight + "<small style='display: block;'>🔑 Kinsight #" + kinsights[k_pos].number + " / " + (kinsights.length) + "</small>";
</script>
