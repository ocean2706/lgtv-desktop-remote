lgtv-desktop-remote
===================

a rewrite of famous "lgtv remote" application. this time for desktop ( windows and linux-like ) using mono


LGTV Control Desktop este o aplicatie similara cu LGTV Remote care permite controlul "over lan" a unui televizor LGTV ( LG SmartTV , LGTV 3D, serii de dinainte de 2012 ) utilizand pc-ul .

Informatiile din acest document sunt pentru cei care sunt interesati de pasii utilizati pentru identificarea protocolului de comunicatie, doresc sa contribuie cu cod, sau 

In curand proiectul va fi disponibil pe sourceforge

Stadiul actual:
1.Cracking lgtv remote
mentiuni: LGTV Remote este free aplication. Scopul a fost de a identifica protocolul de comunicare pentru a reimplementa intr-o aplicatie desktop.

Pentru ca lg nu pune la dispozitie specificatiile protocolului utilizat pentru aplicatia lgtv remote ( disponibila pentru android si iPhone dar nu si pentru cei ce ar vrea sa o foloseasca de pe pc ) , a trebuit sa facem reverse pe codul respectiv. See bellow step by step.
Primul pas, identificarea protocolului. Din pacate acest lucru a necesitat reverse pe Lgtv apk. Dupa mai multe incercari si injuraturi la adresa google play, am gasit aplicatia (.apk) pe un site de sharing ( nu voi publica adresa )

Utilizand http://code.google.com/p/android-apktool/ am facut reverse la .apk Au fost generate un set de fisiere cu extensie .smali ( echivalentul .class ). In aceasta etapa a fost identificata libraria jmdns ca fiind utilizata pentru comunicatia cu lgtv-ul 
http://jmdns.sourceforge.net/
Pentru ca la acest nivel codul obtinut era f. greu utilizabil s-a recurs la generarea unei arhive dex
http://code.google.com/p/smali/
 care a fost convertita la arhiva standard jar (.class ) utilizand 
http://code.google.com/p/dex2jar/

utilizand jar-ul creat a fost facut reverse pentru a obtine codul sursa .java cu
 http://java.decompiler.free.fr/?q=jdgui
 
 S-a obtinut un cod sursa in java care va fi utilizat impreuna cu restul fisierelor pentru a fi realizata aplicatia desktop.

pentru implementare si portabilitate se va folosi csharp in prima etapa ( pentru ca ulterior sa poata fi utilizata aplicatia si pe linux via mono, ca urmare codul va fi compatibil cu dot.net 2.0 )

in locul jmdns va fi utilizata 
http://zeroconf.codeplex.com/
