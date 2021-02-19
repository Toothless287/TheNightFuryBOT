require "discordrb"
bot = Discordrb::Commands::CommandBot.new token: "tokenbota", prefix: "-t"

#komendy główne
bot.command :ping do |event|
  m = event.respond("Pong!")
  m.edit "🏓 Pong! Upłynęło #{Time.now - event.timestamp} sekund."
end
bot.command :prefix do
  event.respond "Mój prefix to #{bot.prefix}"
end
bot.command :help do |event|
  event.respond ("**Komendy główne:**
  help - to co widzisz! 
  ping - pong!
  info - informacje o bocie
  latlog - zmiany w ostatniej wersji
  botuser - pokazuje profil bota
  invite - pokazuje OAuth2 bota
  prefix - pokazuje prefix bota
**Komendy moderacyjne:**
  myid - pokazuje twoje ID
  srvid - pokazuje ID serwera
  region - pokazuje region serwera
  bany - pokazuje bany na tym serwerze
  user - pokazuje twój nick
  kanały - pokazuje kanały serwera
**Komendy 4FUN:**
  iq - spradza twoje IQ
  gif - wyświetla losowego gifa
  kawał - wyświetla losowy kawał 
  liczba - losuje liczbę od 1 do 1000
**Smocze komendy:**
  klasa<nazwa> - info o klasie
  <gatunek> - info o smoku **Funkcja jeszcze niedokończona!** 
  staty<gatunek> - statystyki smoka **funkcja jeszcze niedokończona** ")
  warn("[INFO] Użyto komendy help!")
end

bot.command :latlog do |event|
  event.respond ("**v0.6** \n Dodano komendy: myid,srvid,region,bany,liczba,botuser,invite... \n No i jedna duża zmiana w kodzie - bot z Discordrb::Bot.new zmienił się na Discordrb::CommandBot.new")
end

#komendy 4FUN

bot.command :iq do |event|
  iq = rand(-369..369)
  event.respond "Twoje IQ wynosi #{iq}!"
  warn("[INFO]Użyto komendy iq!")
end

bot.command :gif do |event|
  gif1 = "https://tenor.com/view/nightfury-httydtoothless-toothlesshttyd-howtotrainyourdragon-toothless-gif-18175945"
  gif2 = "https://tenor.com/view/surprise-chris-pratt-parks-and-recreation-parks-and-rec-shocked-gif-5571450"
  gif3 = "https://tenor.com/view/howtotrainypurdragon-how-to-train-your-gif-10016115"
  gif4 = "https://tenor.com/view/httyd-how-to-train-your-dragon-toothless-night-fury-cute-gif-16850774"
  gif5 = "https://tenor.com/view/minecraft-steve-looking-back-turning-around-gif-15875169"
  gif6 = "https://tenor.com/view/httyd3-toothless-sorry-ops-how-to-train-your-dragon-the-hidden-world-gif-14073387"
  gif7 = "https://tenor.com/view/happy-playing-sitting-copying-cause-they-like-each-other-like-gif-16043464"
  gif8 = "https://tenor.com/view/angry-night-fury-gif-15393668"
  gif9 = "https://tenor.com/view/beautiful-flying-httyd-night-fury-light-fury-gif-16295318"
  gif10 = "https://tenor.com/view/how-to-train-your-dragon-toothless-food-fish-feeding-gif-5982766"
  gify = [gif1, gif2, gif3, gif4, gif5, gif6, gif7, gif8, gif9, gif10].sample
  event.respond gify
  warn("[INFO] Użyto komendy gif!")
end
bot.command :kawał do |event|
  zart1 = "Student próbuje zdać egzamin z elektrotechniki
  - Dama panu tróję, jeśli powie pan ile jest żarówek w tej sali
  Zaskoczony student szybko liczy
  - Trzydzieści - odpowieada
  - Nieprawda - mówi profesor i wyciąga z kieszeni jeszcze jedną żarówkę
  Na egzaminie poprawkowym sytuacja się powtarza
  - Ile jest żarówek w tej sali? - pyta profesor
  - Trzydzieści jeden!
  - Nie! Nie mam w kieszeniu żarówki! 
  - Ale ja mam :rofl: "
  zart2 = "- Stary, wczoraj buchnęli mi samochód
  - Dzwoniłeś na policję?
  - No jasne! Ale powiedzieli, że to nie oni :rofl: "
  zart3 = "Nauczycielka pyta uczniów:
  - Które zwierzę jest najweselsze?
  - Kura!
  - Dlaczego?
  - Bo ciągle robi sobie jaja :rofl: "
  zart4 = "Idzie baca z wycieczką przez hale. Jeden z turystów pyta się go na widok owiec:
  - Baco, a ile tu będzie owiec?
  Baca na to:
  - No, zaroz wam police. Roz, dwo, tsy- bedzie sto czterdzieści dwie.
  - Ojej baco, jak wy to tak szybko policzyliście?
  - Dyć ta proste. Licze nogi, dziele przez cztery i mom. :rofl: "
  zart5 = "Idzie turysta halą i widzi bacę pasącego owce. Podchodzi i mówi:
  - A jak bym zgadł ile macie tych owiec, to dalibyście mi jedną?
  - Dobrze.
  Turysta obejrzał stadko i powiedział:
  - 246 owiec
  - Panocku, no ni pomientom ile to ich mom, policmy...
  Policzyli i rzeczywiście 246. Turysta więc bierze owcę i odchodzi.
  - Pocykojcie, a jak bych tak zgadł kim wy jesteście to byście mi owiecke oddali?
  - Dobrze baco.
  - Mi się wydaje, ze wy jesteście doradcą do spraw rolnictwa Unii Europejskiej.
  - Tak, a skąd baco wiedzieliście?
  - No, boście psa wzieli... :rofl: "
  zart6 = "Na Podhale przyjechał łącznik z Warszawy. 
  Miał się tu spotkać ze szpiegiem o nazwisku Gąsienica. 
  Na przedmieściach Zakopanego zatrzymał samochód i zapytał przechodzącego obok bacę:
  - Dobry człowieku, znacie tu w okolicy jakiegoś Gąsienicę?
  - Dyć znom, panocku. Tu oto w tej wiosce jest Gąsienica kowal, 
  Gąsienica piekarz, dwóch strażaków Gąsieniców i organista Gąsienica. I jo tyz jestem Gąsienica...
  Łącznik z Warszawy doszedł do wniosku, że tak pokrętnej odpowiedzi 
    mógł udzielić tylko człowiek, z którym miał się spotkać, więc postanowił zaryzykować i podać hasło:
  - Słońce świeci wysoko, owce pasą się na łące, strumyk wpada do rzeki, a rzeka do morza.
  - A panocku! Trza było od razu gadać, że chodzi o Gęsienicę szpiega. Ten mieszka tam, za górką... :rofl: "
  zart7 = "Dwa jeże płyną wpław.
  Jeden mówi do drugiego: Mówiłem, że ta wyprawa na dmuchanym pontonie źle się skończy!"
  zart8 = "Żart dla inteligentów:
  Mała małpka jest w szpitalu. Rodzice pytają się jej co się stało.
  Małpka: spadłam z łóżka! ||Małpy śpią na drzewach|| :rofl: "
  kawal = [zart1, zart2, zart3, zart4, zart5, zart6, zart7, zart8].sample
  event.respond kawal
  warn("[INFO] Użyto komendy kawał!")
end
bot.command :liczba do |event|
  a = rand(1..1000)
  event.respond a
end
#komendy moderacyjne
bot.command :user do |event|
  event.user.name
end
bot.command(:region, chain_usable: true, permission_level: 0) do |event|
  event.server.region
end
bot.command(:bany, chain_usable: true, description: "Pokazuje bany.", permission_level: 0) do |event|
  event.server.bans
end
bot.command :srvid do |event|
  event.server.id
end
bot.command :myid do |event|
  event.user.id
end
bot.command :botuser do |event|
  event.bot.profile
end
bot.command :kanały do |event|
  event.server.channels
end
#smocze komendy

bot.command :klasauderzeniowa do |event|
  event.respond "**Klasa uderzeniowa** _obejmuje gatunki głównie cechujące się stosunkowo 
niewielkimi rozmiarami, wyjątkową inteligencją i sprytem, jak również 
potrafiące rozwijać niezwykłą prędkością podczas lotu. Niektóre 
nie zieją zwykłym ogniem, lecz jego potężniejszymi odpowiednikami, 
na przykład plazmą (Nocna Furia) lub piorunami (Wandersmok)._
**Smoki w tej klasie:**
_-Biała Furia
-Mroziczort
-Night Light
-Nocna Furia
-Potrójny Cios
-Śmierciozaur
-Wandersmok
-Woolly Howl_"
  warn("[INFO]Użyto komendy klasa uderzeniowa!")
end
bot.command :klasatajemnicza do |event|
  event.respond "**Klasa tajemnicza** _gromadzi głównie gatunki smoków, które nie zostały dokładnie zbadane ani poznane. Mimo że z czasem części z nich przyjrzano się lepiej, większość nie została przeklasyfikowana. Zaliczają się do niej również smoki, którym trudno przyporządkować cechy charakteryzujące gatunki z pozostałych klas. Zazwyczaj mają wyjątkowe zdolności, takie jak na przykład umiejętność kamuflowania się (Zmiennoskrzydły), budowanie uzbrojeniaz kości martwych smoków (Gnatochrup) czy wytwarzanie maskującego dymu (Zaduśny Zdech), których wikingowie po prostu nie rozumieją._
  **Przynależne smoki:**
-_Bawoleń
-Dramillion
-Foreverwing
-Gnatochrup
-Hobgobbler 
-Jaskiniowy Rabuś
-Marazmor 
-Piaskowa Zjawa
-Prickleboggle
-Sidlarz 
-Silkspanner
-Slithersong
-Sweet Death
-Sword Stealer
-Ślizgochlast
-Śmiercipieśń
-Zaduśny Zdech
-Zbrojoskrzydły
-Zębiróg Zamkogłowy
-Zmiennoskrzydły_"
  warn("[INFO]Użyto komendy klasa tajemnicza!")
end

bot.command :klasaognista do |event|
  event.respond "_Smoki z_ **klasy ognistej** _charakteryzują się niezwykłą siłą ognia (każdy smok zieje płomieniami, choć mogą one mieć różną barwę oraz formę). Słyną również z wielkiej waleczności i odwagi. Niektóre smoki z tej klasy mają zdolność samozapłonu lub rozgrzewania się i osiągania wysokich temperatur ciała._
**Przynależne gatunki:**
-_Czerwona Śmierć
-Duży Cień
-Flame Whipper
-Gobsucker
-Hobgobbler 
-Koszmar Ponocnik
-Koślawy Mruk
-Księżniczka Ognioglist
-Mały Cień
-Moldruffle
-Nocny Koszmar
-Ognioglista
-Ognisty Koszmar
-Paszczogon
-Silver Phantom
-Straszliwiec Straszliwy
-Tajfumerang
-Threadtail
-Zielona Śmierć_"
  warn("[INFO]Użyto komendy klasa ognista!")
end
bot.command :klasawodna do |event|
  event.respond "_Smoki z_ **klasy wodnej** _charakteryzują się tym, 
że zamieszkują oceany, morza, rzeki czy jeziora, albo przynajmniej 
ich bliskie okolice (Sand Wraith). Większość należących do tej 
klasy gatunków nie potrafi ziać normalnym ogniem �?zamiast tego plują 
wodą (wrzącą lub zamarzającą) lub innymi, rzadkimi typami 
pocisków (impulsy elektryczne, fale dźwiękowe). Niektóre smoki 
z tej klasy, takie jak Wrzeniec oraz Raziprąd, nie mogą długo 
przebywać poza swoim rodzimym środowiskiem �?oceanem �?ponieważ 
ich skóra wysycha. Jednak już Gromogrzmot oraz zapewne większość 
pozostałych gatunków może żyć zarówno pod wodą, jak i na lądzie._
**Przynależne gatunki:**
-_Fathomfin
-Fioletowa Śmierć
-Gromogrzmot
-Luminous Krayfin
-Mudraker
-Ogniowa Burza
-Oszołomostrach
-Podwodny Rozpruwacz
-Raziprąd
-Ripwrecker
-Sand Wraith
-Shockjaw
-Sliquifier
-Tide Glider
-Windwalker
-Wrzeniec_"
end
warn("[INFO]Użyto komendy klasa wodna!")
bot.command :klasaostra do |event|
  event.respond "_Smoki z_ **klasy ostrej** _charakteryzują się 
tym, że posiadają liczne ostre wyrostki, kolce, szpony bądź inne 
części ciała (np. w przypadku Drzewokosa są to krawędzie skrzydeł), 
które potrafią przeciąć bądź przebić niemal wszystko. Smoki te 
są czasem próżne lub pyszne, ich słabością może być 
wysokie poczucie piękna oraz dbanie o urodę._
**Przynależne gatunki:** 
-_Burzochlast
-Devilish Dervish
-Drzewokos
-Hackatoo
-Kroplorwij
-Shivertooth
-Smętny Zgrzytacz
-Szponiak
-Szybki Szpic
-Thornridge
-Windstriker
-Zbiczatrzasł_"
  warn("[INFO]Użyto komendy klasa ostra!")
end
bot.command :klasatropicieli do |event|
  event.respond "_Smoki z_ **klasy tropicieli** _charakteryzują się tym, 
że są niezwykle wrażliwe na zapachy i mają bardzo wyostrzony zmysł powonienia. 
Często używa się ich w celu tropienia lub szukania zaginionych osób lub przedmiotów._
**Przynależne gatunki:**
-_Gruchotnik
-Podwodny Rozpruwacz 
-Rockstomper
-Snifflehunch
-Śmiertnik Zębacz 
-Thunderclaw
-Windgnasher_"
  warn("[INFO]Użyto komendy klasa tropicieli")
end
bot.command :klasakamienna do |event|
  event.respond "_Smoki z_ **klasy kamiennej** _charakteryzują się niezwykłą 
wytrzymałością, zaś ich skóra twardością. Związane są z ziemią; 
żywią się jedynie lub w większości skałami. Niektóre posiadają zdolność 
kopania tuneli w glebie i w skale, inne przetapiają w brzuchu kamienie, 
by móc zionąć płynną lawą. Wszystkie smoki łączy podobna budowa ciała,
czasem jest ona segmentowana (wygląda, jakby składały się na nią osobne kule) 
i zbita, czasem wężowa; jednak ogólnie przeważająca część smoków jest wyraźnie 
masywna i odporna na ataki. Ich skrzydła zazwyczaj są dość małe w stosunku do 
tułowia, jednak pozwalają latać._
**Przynależne gatunki:**
-_Eruptodon
-Grapple Grounder
-Groncicle
-Gronkiel
-Krzykozgon
-Miażdżytłuk Kafar
-Ogniołyk
-Ostrykieł
-Shovelhelm
-Strażnik
-Szeptozgon
-Thunderpede
-Wyrwiflak Szkarłatny_"
  warn("[INFO]Użyto komendy klasa kamienna")
end
bot.command :Nocna_Furia do |event|
  event.respond "**Nocna Furia** (ang. Night Fury) - jeden z najbardziej tajemniczych i niebezpiecznych gatunków smoków. Dawniej zaliczany do klasy tajemniczej, obecnie przedstawiciel klasy uderzeniowej. Jedynym poznanym przedstawicielem gatunku i ostatnim żyjącym, jest Szczerbatek.
  _Umiejętności_
  1. Nocna Furia strzela fioletowymi pociskami plazmy, przekazy wikingów mówią, że nigdy nie chybia. 
  2. Nocna Furia jest też bardzo szybka - może osiągnąć w locie nurkowym 1225km/h. 
  3. Nocna Furia jest jedynym znanym gatunkiem posiadającym zdolność echolokacji. Polega ona na wysłaniu głośnego impulsu dźwiękowego przez smoka, który natrafiwszy na przeszkodę, odbija się i powraca do jego uszu w postaci zniekształconej fali dźwiękowej. Dzięki temu Nocna Furia może latać w całkowitej ciemności i odnajdzie drogę, nie wpadając na przeszkody. 
  4. Kiedy smok wpadnie we wściekłość lub odczuwa silne emocje, jego ciało zaczyna świecić na niebiesko. Dodatkowo pluje błękitną plazmą, znacznie potężniejszą niż jego zwykłe splunięcia. Zdolność tą nazywa się furią
  5. Nocna Furia potrafi znikać. Przyciąga do siebie błyskawice, i rozgrzewa swoje łuski. Zyskują one w ten sposób lustrzane właściwości."
  warn("[INFO]Użyto komendy Nocna Furia")
end
bot.command :Biała_Furia do |event|
  event.respond "**Biała Furia** (ang. Light Fury) - płochliwy i skryty gatunek smoka, blisko spokrewniony z Nocną Furią, pojawiający się w filmie Jak wytresować smoka 3, któremu nazwę nadali Czkawka i Astrid. Przedstawiciel klasy uderzeniowej. Jedna z poznanych przedstawicielek tego gatunku to partnerka Szczerbatka, jednak Białych Furii istnieje więcej.
  _Umiejętności_
  1. Biała Furia posiada podobny do Nocnej Furii arsenał ognia.
  2. Furia ta potrafi na chwilę zniknąć. Strzela plazmą przed siebie, i przelatuje przez eksplodujący pierścień ognia. Ten efekt smok zawdzięcza zjawisku, w którym ogień rozgrzewa łuski smoka i sprawia, że zyskują one lustrzane właściwości, odbijając barwy otoczenia."
  warn("[INFO]Użyto komendy Biała Furia")
end
bot.command :Wandersmok do |event|
  event.respond "**Wandersmok** (ang. Skrill) - jeden z najpotężniejszych gatunków smoków, przedstawiciel klasy uderzeniowej. Charakteryzuje się umiejętnością plucia ładunkami elektrycznymi. Wspomniany jest już w filmie Jak wytresować smoka, gdzie zostaje pokazany jego szkic, później kilkakrotnie pojawia się w serialu, po raz pierwszy w odcinku Wandersmok (część 1). Wizerunek tego smoka jest symbolem klanu Berserków.
  _Umiejętności_
  1. Wandersmok jest jednym z nielicznych gatunków, które nie zieją zwyczajnym ogniem. Zamiast tego posiada zdolność pochłaniania elektryczności z piorunów burzowych i kumulowania ich w swoim ciele, aby później, podczas ataku, wyrzucić z paszczy silny strumień elektryczności.
  2. Wandersmok jest bardzo inteligentny, potrafi przewidywać ruchy przeciwnika i wykorzystać w walce elementy otoczenia. Uczy się na swoich błędach, potrafi przewidzieć zasadzkę."
  warn("[INFO]Użyto komendy Wandersmok")
end
bot.command :Night_Light do |event|
  event.respond
  warn("[INFO]Użyto komendy Night Light")
end
bot.command :Śmierciozaur do |event|
  event.respond
  warn("[INFO]Użyto komendy Śmierciozaur")
end
bot.command :Potrójny_Cios do |event|
  event.respond
  warn("[INFO]Użyto komendy Potrójny Cios")
end
bot.command :Wooly_Howl do |event|
  event.respond
  warn("[INFO]Użyto komendy Wooly Howl")
end
bot.command :statyNocnaFuria do |event|
  event.respond "**Statystyki Nocnej Furii**
  ⚔ atak = 15
  💨 szybkość = 20
  🛡 obrona = 18
  🔫 moc ognia = 14 
  💦 splunięć = 6
  💎 spryt = 18
  💔 trucizna = 0
  💥 zacisk szczęk = 6"
  warn("[INFO]Użyto komendy staty Nocna Furia")
end
bot.command :statyBiałaFuria do |event|
  event.respond "**Statystyki Białej Furii**
  ⚔ atak = 15
  💨 szybkość = 20
  🛡 obrona = 18
  🔫 moc ognia = 14 
  💦 splunięć = 6
  💎 spryt = 18
  💔 trucizna = 0
  💥 zacisk szczęk = 6"
  warn("[INFO]Użyto komendy staty Biała Furia")
end
bot.command :statyWandersmok do |event|
  event.respond "**Statystyki Wandersmoka**
  ⚔ atak = 14
  💨 szybkość = 11 (max 19)
  🛡 obrona = 10
  🔫 moc ognia = 12 
  💦 splunięć = 4
  💎 spryt = 18
  💔 trucizna = 0
  💥 zacisk szczęk = 5"
  warn("[INFO]Użyto komendy staty Wandersmok")
end
bot.command :statyNightLight do |event|
  event.respond "**Statystyki Night Lighta**
  ⚔ atak = 15
  💨 szybkość = 20
  🛡 obrona = 18
  🔫 moc ognia = 14 
  💦 splunięć = 6
  💎 spryt = 18
  💔 trucizna = 0
  💥 zacisk szczęk = 6"
  warn("[INFO]Użyto komendy staty Night Light")
end
bot.command :statyMroziczort do |event|
  event.respond "**Statystyki Mroziczorta**
  ⚔ atak = 18
  💨 szybkość = 18 
  🛡 obrona = 22
  🔫 moc ognia = 24 
  💦 splunięć = 10
  💎 spryt = 30
  💔 trucizna = 0
  💥 zacisk szczęk = 8"
  warn("[INFO]Użyto komendy staty Mroziczort")
end
bot.command :statyPotrójnyCios do |event|
  event.respond "**Statystyki Potrójnego Ciosa**
  ⚔ atak = 15
  💨 szybkość = 20
  🛡 obrona = 18
  🔫 moc ognia = 14 
  💦 splunięć = 6
  💎 spryt = 18
  💔 trucizna = 10
  💥 zacisk szczęk = 6"
  warn("[INFO]Użyto komendy staty Potrójny Cios")
end
bot.command :statyŚmierciozaur do |event|
  event.respond "**Statystyki Śmierciozaura**
  ⚔ atak = 27
  💨 szybkość = 12 
  🛡 obrona = 20
  🔫 moc ognia = 12 
  💦 splunięć = 8
  💎 spryt = 6
  💔 trucizna = 12
  💥 zacisk szczęk = 16"
  warn("[INFO]Użyto komendy staty Śmierciozaur")
end
bot.command :statyOszołomostrach do |event|
  event.respond "**Statystyki Oszołomostracha**
  ⚔ atak = 50
  💨 szybkość = 6 ląd, 18 woda
  🛡 obrona = 38
  🔫 moc ognia = 60 
  💦 splunięć = 8
  💎 spryt = 2
  💔 trucizna = 0
  💥 zacisk szczęk = 48"
  warn("[INFO]Użyto komendy staty Oszołomostrach")
end
bot.command :statyGromogrzot do |event|
  event.respond "**Statystyki Gromogrzmota**
  ⚔ atak = 12
  💨 szybkość = 14
  🛡 obrona = 10
  🔫 moc ognia = 16 
  💦 splunięć = 6
  💎 spryt = 8
  💔 trucizna = 0
  💥 zacisk szczęk = 7"
  warn("[INFO]Użyto komendy staty Gromogrzmot")
end
bot.command :statyWrzeniec do |event|
  event.respond "**Statystyki Wrzeńca**
  ⚔ atak = 10
  💨 szybkość = 6
  🛡 obrona = 6
  🔫 moc ognia = 14 
  💦 splunięć = 14
  💎 spryt = 10
  💔 trucizna = 10
  💥 zacisk szczęk = 4"
  warn("[INFO]Użyto komendy staty Wrzeniec")
end
bot.command :statyOgniowaBurza do |event|
  event.respond "**Statystyki Ogniowej Burzy**
  ⚔ atak = 20
  💨 szybkość = 14 
  🛡 obrona = 16
  🔫 moc ognia = 22 
  💦 splunięć = 8
  💎 spryt = 17
  💔 trucizna = 0
  💥 zacisk szczęk = 15"
  warn("[INFO]Użyto komendy staty Ogniowa Burza")
end
bot.command :statyPodwodnyRozpruwacz do |event|
  event.respond "**Statystyki Podwodnego Rozpruwacza**
  ⚔ atak = 20
  💨 szybkość = 16 
  🛡 obrona = 14
  🔫 moc ognia = 0 
  💦 splunięć = 0
  💎 spryt = 12
  💔 trucizna = 0
  💥 zacisk szczęk = 30"
  warn("[INFO]Użyto komendy staty Podwodny Rozpruwacz")
end
bot.command :statyRaziprąd do |event|
  event.respond "**Statystyki Raziprąda**
  ⚔ atak = 18
  💨 szybkość = 16 
  🛡 obrona = 20
  🔫 moc ognia = 7 
  💦 splunięć = 12
  💎 spryt = 10
  💔 trucizna = 14
  💥 zacisk szczęk = 8"
  warn("[INFO]Użyto komendy staty Raziprąd")
end
bot.command :statyFioletowaŚmierć do |event|
  event.respond "**Statystyki Fioletowej Śmierci**
  ⚔ atak = 30
  💨 szybkość = 12
  🛡 obrona = 28
  🔫 moc ognia = 20
  💦 splunięć = 7
  💎 spryt = 5
  💔 trucizna = 0
  💥 zacisk szczęk = 33"
  warn("[INFO]Użyto komendy staty Fioletowa Śmierć")
end
bot.command :statyJaskiniowyRabuś do |event|
  event.respond "**Statystyki Jaskiniowego Rabusia**
⚔ atak = 14
💨 szybkość = 18
🛡 obrona = 16
🔫 moc ognia = 20
💦 splunięć = 16
💎 spryt = 16
💔 trucizna = 0
💥 zacisk szczęk = 8"
  warn("[INFO]Użyto komendy staty Jaskiniowy Rabuś")
end
bot.command :statyGnatochrup do |event|
  event.respond "**Statystyki Gnatochrupa**
⚔ atak = 7
💨 szybkość = 10
🛡 obrona = 2
            18 (z kośćmi)
🔫 moc ognia = 9 
💦 splunięć = 6
💎 spryt = 8
💔 trucizna = 0
💥 zacisk szczęk = 4"
  warn("[INFO]Użyto komendy staty Gnatochrup")
end
bot.command :statyMarazmor do |event|
  event.respond "**Statystyki Marazmora**
⚔ atak = 5
💨 szybkość = 8
🛡 obrona = 4
🔫 moc ognia = 7 
💦 splunięć = 4
💎 spryt = 7
💔 trucizna = 10
💥 zacisk szczęk = 4"
  warn("[INFO]Użyto komendy staty Marazmor")
end
bot.command :statyPiaskowaZjawa do |event|
  event.respond "**Statystyki Piaskowej Zjawy**
⚔ atak = 13
💨 szybkość = 11
🛡 obrona = 8
🔫 moc ognia = 10 
💦 splunięć = 6
💎 spryt = 17
💔 trucizna = 0
💥 zacisk szczęk = 6"
  warn("[INFO]Użyto komendy staty Piaskowa Zjawa")
end
bot.command :statySidlarz do |event|
  event.respond "**Statystyki Sidlarza**
⚔ atak = 10
💨 szybkość = 4
🛡 obrona = 4
🔫 moc ognia = 6 
💦 splunięć = 4
💎 spryt = 60 (15 na każdą głowę)
💔 trucizna = 18
💥 zacisk szczęk = 28 (7 na każdą głowę)"
  warn("[INFO]Użyto komendy staty Sidlarz")
end
bot.command :statyHobgobbler do |event|
  event.respond "**Statystyki Hobgobbler**
⚔ atak = 8
💨 szybkość = 8
🛡 obrona = 4
🔫 moc ognia = 6 
💦 splunięć = 28
💎 spryt = 18
💔 trucizna = 0
💥 zacisk szczęk = 12"
  warn("[INFO]Użyto komendy staty Hobgobbler")
end
#do roboty
bot.command :statyHobgobbler do |event|
  event.respond "**Statystyki Hobgobbler**
⚔ atak = 8
💨 szybkość = 8
🛡 obrona = 4
🔫 moc ognia = 6 
💦 splunięć = 28
💎 spryt = 18
💔 trucizna = 0
💥 zacisk szczęk = 12"
  warn("[INFO]Użyto komendy staty Hobgobbler")
end
#end
bot.command :statyBawoleń do |event|
  event.respond "**Statystyki Bawolenia**
  ⚔ atak = 8
  💨 szybkość = 6
  🛡 obrona = 16
  🔫 moc ognia = 12 
  💦 splunięć = 6
  💎 spryt = 4
  💔 trucizna = 20
  💥 zacisk szczęk = 6"
  warn("[INFO]Użyto komendy staty Bawoleń")
end
bot.command :statyDramilion do |event|
  event.respond "**Statystyki Dramiliona**
  ⚔ atak = 18
  💨 szybkość = 14
  🛡 obrona = 8
  🔫 moc ognia = 20 
  💦 splunięć = 40
  💎 spryt = 8
  💔 trucizna = 0
  💥 zacisk szczęk = 6"
  warn("[INFO]Użyto komendy staty Dramilion")
end
bot.command :statyForeverwing do |event|
  event.respond "**Statystyki Foreverwing**
  ⚔ atak = 25
  💨 szybkość = 8 
  🛡 obrona = 20
  🔫 moc ognia = 40 
  💦 splunięć = 8
  💎 spryt = 48
  💔 trucizna = 0
  💥 zacisk szczęk = 23"
  warn("[INFO]Użyto komendy staty Foreverwing")
end
bot.command :statyHobgobbler do |event|
  event.respond "**Statystyki Hobgobbler**
  �?atak = 8
  💨 szybkość = 8
  🛡 obrona = 4
  🔫 moc ognia = 6 
  💦 splunięć = 28
  💎 spryt = 18
  💔 trucizna = 0
  💥 zacisk szczęk = 12"
  warn("[INFO]Użyto komendy staty Hobgobbler")
end
bot.command :statyGronkiel do |event|
  event.respond "**Statystyki Gronkla**
  ⚔ atak = 8
  💨 szybkość = 4 
  🛡 obrona = 20
  🔫 moc ognia = 14 
  💦 splunięć = 6
  💎 spryt = 5
  💔 trucizna = 0
  💥 zacisk szczęk = 6"
  warn("[INFO]Użyto komendy staty Gronkiel")
end
bot.command :statyKrzykozgon do |event|
  event.respond "**Statystyki Krzykozgona**
  ⚔ atak = 16
  💨 szybkość = 8 
  🛡 obrona = 20
  🔫 moc ognia = 10 
  💦 splunięć = 2
  💎 spryt = 14
  💔 trucizna = 10
  💥 zacisk szczęk = 11"
  warn("[INFO]Użyto komendy staty Krzykozgon")
end
bot.command :statyEruptodon do |event|
  event.respond "**Statystyki Eruptodona**
  ⚔ atak = 9
  💨 szybkość = 7 
  🛡 obrona = 36
  🔫 moc ognia = 8 
  💦 splunięć = 7
  💎 spryt = 2
  💔 trucizna = 0
  💥 zacisk szczęk = 14"
  warn("[INFO]Użyto komendy staty Eruptodon")
end

bot.ready() do |event|
  bot.watching = nil
end
bot.run
