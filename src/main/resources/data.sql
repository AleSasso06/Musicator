INSERT INTO genere VALUES ('1','Rock');
INSERT INTO genere VALUES ('2','Pop');
INSERT INTO genere VALUES ('3','Trap');
INSERT INTO genere VALUES ('4','Rap');
INSERT INTO genere VALUES ('5','Hip-Hop');
INSERT INTO genere VALUES ('6','R&B');
INSERT INTO genere VALUES ('7','Jazz');
INSERT INTO genere VALUES ('8','Classica');
INSERT INTO genere VALUES ('9','Blues');
INSERT INTO genere VALUES ('10','Reggae');
INSERT INTO genere VALUES ('11','Indie');
INSERT INTO genere VALUES ('12','Electronic');
INSERT INTO genere VALUES ('13','Country');
INSERT INTO genere VALUES ('14','Synthpop');
INSERT INTO genere VALUES ('15','Disco-funk');

INSERT INTO artista VALUES (
	'1',
    'Abel Makkonen Tesfaye', 
    'The Weeknd', 
    '1990-02-16', 
    'Canadese', 
    'The Weeknd, nato Abel Makkonen Tesfaye, è un cantautore, produttore discografico e attore canadese. Nato a Toronto, ha raggiunto la fama internazionale con il suo stile unico che fonde R&B, pop e generi elettronici.<br>
	Vincitore multi-platino di 3X GRAMMY Award è emerso come uno degli artisti più significativi e di maggior successo dell''era moderna.<br>
	Nel 2012 ha raccolto 3 mixtape di successo - House of Balloons, Thursday e Echoes of Silence - nella sua prima raccolta in cima alle classifiche, seguita dal suo LP di debutto "Kiss Land" nel 2013.<br>
	Due anni dopo, "Earned It (Fifty Shades of Grey)" ha vinto il premio come "Miglior performance R&B" e ha ricevuto una nomination all''Oscar per la "Miglior canzone originale" e Beauty Behind The Madness, 4 volte disco di platino, ha vinto un GRAMMY come "Miglior album urbano contemporaneo".<br>
	Nel 2018, Starboy ha vinto lo stesso premio, diventando il primo artista a vincere due volte.<br>
	Il suo progetto di 6 tracce My Dear Melancholy ha segnato il suo terzo debutto consecutivo al primo posto nella Billboard Top 200, e "Pray For Me" con Kendrick Lamar e Niels è apparso nel trailer del film Marvel "Black Panther", vincitore dell''Oscar .<br>
	Nel 2020, il brano nostalgico degli anni ''80 Blinding Lights è diventato un fenomeno mondiale, innescando sfide di danza virali sui social media, raggiungendo il primo posto in oltre 30 paesi e headliner della campagna Mercedes Benz EQC.<br>
	After Hours ha mantenuto il primo posto nella Billboard 200 per 4 settimane consecutive, segnando il suo quarto album alla prima posizione e diventando il primo a classificarsi al primo posto nella Billboard 200, Hot 100 e Artist 100 contemporaneamente.<br>
	After Hours è l''album R&B in streaming n. 1 di tutti i tempi (seguito da Starboy al n. 2).', 
    'https://rapteratura.it/wp-content/uploads/2022/03/231294089_532702488154524_4967683313458270906_n-e1647948813460-720x600.jpg'  
);

INSERT INTO album VALUES (
	'1',
    'My Dear Melancholy', 
    'My Dear Melancholy è un progetto di 6 tracce di The Weeknd, pubblicato nel 2018. L''album rappresenta un ritorno a sonorità più cupe e intime rispetto ai precedenti lavori, affrontando temi di amore, dolore e rimpianto.<br>
     Il progetto ha segnato il terzo debutto consecutivo di The Weeknd al primo posto nella Billboard Top 200.', 
    1380, -- durata? come la mettiamo? in secondi?
    '2018-03-30', 
    'https://i.scdn.co/image/ab67616d0000b2731f6a2a40bb692936879db730',
    1,  
    6 
);

INSERT INTO brano VALUES (
	'1',
    'Call Out My Name',
    'We found each other
	<br>I helped you out of a broken place
	<br>You gave me comfort
	<br>But falling for you was my mistake
	<br>
	<br>I put you on top, I put you on top
	<br>I claimed you so proud and openly
	<br>And when times were rough, when times were rough
	<br>I made sure I held you close to me
	<br>
	<br>
	So call out my name (call out my name)
	<br>Call out my name when I kiss you
	<br>So gently, I want you to stay (want you to stay)
	<br>I want you to stay even though you don''t want me
	<br>Girl, why can''t you wait (why can''t you wait baby)
	<br>Girl, why can''t you wait til'' I fall out of love
	<br>Won''t you call out my name
	<br>Girl, call out my name and I''ll be on my way
	<br>I''ll be on my
	<br>
	<br>I said I didn''t feel nothing baby, but I lied
	<br>I almost cut a piece of myself for your life
	<br>Guess I was just another pitstop
	<br>Til'' you made up your mind
	<br>You just wasted my time
	<br>You''re on top
	<br>
	<br>I put you on top
	<br>I claimed you so proud and openly, babe
	<br>And when times were rough, when times were rough
	I made sure I held you close to me
	<br>
	<br>So call out my name (call out my name baby)
	<br>Call out my name when I kiss you
	<br>So gently, I want you to stay (I want you to stay)
	<br>I want you to stay even though you don''t want me
	<br>Girl, why can''t you wait
	<br>(Girl, why can''t you wait til'' I)
	<br>Girl, why can''t you wait til'' I fall out of love
	<br>Won''t you call out my name (say call out my name baby)
	<br>Girl, call out my name and I''ll be on my way
	<br>Girl, I''ll be on my
	<br>
	<br>On my way
	<br>On my way
	<br>
	<br>On my way
	<br>On my way
	<br>On my way
	<br>
	<br>On my way
	<br>On my way
	<br>On my way
	<br>
	<br>On my way
	<br>On my way
	<br>On my way
	<br>
	<br>On, on',  
    229,  -- Durata in secondi ????
    '2018-03-30',
    'Inglese',
    '',  -- cosa avevamo detto per la foto??
    'https://www.youtube.com/watch?v=M4ZoCHID9GI',  -- Link ufficiale del video su YouTube
    '6'  -- genere_id
);

INSERT INTO brano VALUES (
	'2',
    'Try Me',
    'Any time is the time
	<br>Any time for you to give a call, baby (so, baby)
	<br>I''m all alone, baby
	<br>Baby ain''t around, pick up your phone, baby
	<br>Whoa
	<br>
	<br>Can you try me? (try me), try me (try me)
	<br>Once you put your pride aside
	<br>You can notify me (fy me), -fy me (fy me)
	<br>You''re the best I ever had
	<br>
	Baby girl, remind me (mind me), -mind me (mind me)
	<br>Let me know if it''s on
	<br>And you know where to find me, find me
	<br>Having thoughts you never had, yeah
	<br>I didn''t know you were down for finding out
	<br>I thought you had some kind of love for your man
	<br>Well, I''m not tryna break up something
	<br>You''ve been working out, you''ve been steady
	<br>But I''m ready to go all the way if you let me
	<br>Don''t you tempt me
	<br>
	<br>You''re lookin'' grown since the last time I looked at you
	<br>It might have been, been about a couple months
	<br>But I just got the picture that you texted to me
	<br>You ain''t steady, you look ready to go all the way
	<br>If you let me take you down on me
	<br>
	<br>Can you try me? (try me), try me (try me)
	<br>Once you put your pride aside (Once you put your pride aside) You can notify me (fy me), -fy me (fy me)
	<br>You''re the best I ever had (you''re the best I ever had)
	<br>
	Baby girl, remind me (mind me), -mind me (mind me)
	<br>Let me know if it''s on (let me know)
	<br>And you know where to find me, find me
	<br>Having thoughts you never had, yeah
	<br>Can you try me? Try me, try me
	<br>Once you put your pride aside
	<br>You can notify me, -fy me
	<br>You''re the best I ever had
	<br>Baby girl, remind me, -mind me
	<br>Let me know if it''s on (let me know, baby)
	<br>And you know where to find me (find me), find me (find me) Having thoughts you never had, yeah
	<br>
	<br>Oh, lo
	<br>Lo-lo-lo-lo-lo-lo
	<br>Lo-lo-lo-lo-lo, lo-lo-lo
	<br>Lo-lo-lo-lo-lo-lo
	<br>Can you try me?
	<br>
	<br>Don''t you mess with me
	<br>Don''t you mess with me
	<br>The way I kissed your scars
	<br>The way I fixed your heart
	<br>Don''t you mess with me
	<br>Don''t you mess with me', 
    204,
    '2018-03-30',
    'Inglese',
    ' ',  -- foto??
    'https://www.youtube.com/watch?v=y08R20KflNM',
    6  -- genere_id
);

INSERT INTO brano VALUES (
	'3',
    'Wasted Times',
    'Wasted times I spent with someone else
	<br>She wasn''t even half of you
	<br>Reminiscin'' how you felt
	<br>Reminiscin'' how you felt
	<br>And even though you put my life through hell
	<br>I can''t seem to forget ''bout you, ''bout you
	<br>I want you to myself
	<br>
	<br>And now I''m askin'', who do you belong to now?
	<br>Who you give that love to now?
	<br>
	Who you pullin'' up on?
	<br>Who you gettin'' sprung for now?
	<br>And what''s he got that I ain''t got? ''Cause I got a lot
	<br>Don''t make me run up on him, got me blowin'' up his spot
	<br>''Cause I ain''t got no business catchin'' feelings anyway
	<br>I ain''t got no business catchin'' feelings
	<br>Catchin'' feelings
	<br>
	<br>These girls only want you when you''re winnin'' (winnin'')
	<br>But you''ve been with me from the beginnin'' (ooh, yeah, yeah)
	<br>And I know right now that we''re not talkin'' (not talkin'')
	<br>I hope you know this dick is still an option
	<br>''Cause I''ll beat it up (I''ll beat it up)
	<br>I''ll take my time to learn the way your body functions
	<br>You were equestrian, so ride it like a champion (I''ll beat it)
	<br>The sex''ll get you high without no other substance
	<br>
	<br>And now I''m askin'', who do you belong to now? (Who do you belong to now?)
	<br>Who you give that love to now? (Who you give that love to now?)
	<br>Who you pullin'' up on?
	<br>
	Who you gettin'' sprung for now? (Who you gettin'' sprung for now?)
	<br>And what''s he got that I ain''t got? ''Cause I got a lot (I got a lot)
	<br>Don''t make me run up on him, got me blowin'' up his spot (blowin'' up his spot)
	<br>''Cause I ain''t got no business catchin'' feelings anyway
	<br>I ain''t got no business catchin'' feelings (feelings)
	<br>Catchin'' feelings
	<br>
	<br>I ain''t got no business catchin'' feelings
	<br>I ain''t got no business catchin'' feelings
	<br>Catchin'' fee-fee-fee-fee
	<br>Feelings
	<br>I ain''t got no business catchin'' feelings
	<br>I ain''t got no business catchin'' feelings
	<br>Catchin'' fee-fee-fee-fee
	<br>
	<br>Wake up
	<br>I don''t wanna wake up
	<br>I don''t wanna wake up
	<br>If you ain''t layin'' next to me
	<br>I don''t wanna wake up
	<br>I don''t wanna wake up
	<br>I don''t wanna wake up
	<br>If you ain''t layin'' next to me-e-e
	<br>On me, me, on me, oh, I
	<br>On me, on me, on me',  
    227, -- secondi??
    '2018-03-30',
    'Inglese',
    ' ',  -- foto??
    'https://www.youtube.com/watch?v=R0rKB_bsUNg',
    6  -- genere_id
);

INSERT INTO brano VALUES (
	'4',
    'I Was Never There',
    'What makes a grown man wanna cry? (Cry, cry, cry, cry)
	<br>What makes him wanna take his life? (Yeah)
	<br>His happiness is never real (real, real, real, real)
	<br>And mindless sex is how he feels, ooh, he feels
	<br>
	<br>When it''s time, when it''s time, when it''s time
	<br>It won''t matter (it don''t matter)
	<br>It won''t matter (matter)
	<br>When it''s time, when it''s time, when it''s time (time, it''s time)
	<br>It won''t matter (it won''t matter)
	<br>
	It won''t matter (ya)
	<br>It was like I was never there
	<br>(It was like I was never there)
	<br>It was like it was more than thin air, oh
	<br>When it''s time, when it''s time, when it''s time, oh baby
	<br>It won''t matter, it won''t matter, baby
	<br>
	<br>When it''s time, when it''s time, when it''s time
	<br>It won''t matter, it won''t matter
	<br>When it''s time, when it''s time, when it''s time
	<br>It won''t matter, it won''t matter
	<br>It was like I was never there
	<br>It was like it was more than thin air
	<br>When it''s time, when it''s time, when it''s time
	<br>It won''t matter, it won''t matter
	<br>
	<br>When it''s time, when it''s time, when it''s time
	<br>It'' won''t matter, it won''t matter
	<br>When it''s time, when it''s time, when it''s time
	<br>It won''t matter, it won''t matter
	<br>
	<br>Ooh, when no one know what love is
	<br>And I know you for sure
	<br>You''d rather something toxic
	<br>So I poison myself again, again
	<br>''Til I feel nothing
	<br>In my soul (in my soul)
	<br>I''m on the edge of something breaking
	<br>I feel my mind is slowly fading
	<br>If I keep going, I won''t make it
	<br>If I keep going, I won''t make it
	<br>
	<br>And it''s all because of you
	<br>It''s all because of you
	<br>It''s all because of you
	<br>It''s all because of you
	<br>Woah, woah
	<br>Don''t you, baby, hey
	<br>It won''t matter, baby
	<br>Don''t you know?
	<br>Don''t you know?
	<br>Ooh, no',  
    238, -- secondi?
    '2018-03-30',
    'Inglese',
    '',  -- Sostituisci con l'URL reale della foto
    'https://www.youtube.com/watch?v=OlStmta0Vh4',
    6  -- genere_id
);

INSERT INTO brano VALUES (
	'5',
    'Hurt You',
    'And now I know relationship''s my enemy
	<br>So stay away from me
	<br>I''m warning you
	<br>You try to fill the void with every man you meet
	<br>''Cause you''re upset with me
	<br>I''m warning you
	<br>
	<br>''Cause all the nights you slept alone dryin'' your eyes
	<br>And all the nights you thought about taking your life
	<br>''Cause if it''s love you want again, don''t waste your time
	<br>
	But if you call me up, I''m fucking you on sight
	<br>
	<br>I don''t wanna hurt you
	<br>I don''t wanna hurt you
	<br>I don''t wanna hurt you
	<br>I don''t wanna hurt you
	<br>
	<br>When you''re with him, you close your eyes and think of me
	<br>Just call me up again
	<br>I''ll make you weak
	<br>Girl, I''ll come to put myself between your legs
	<br>Not between your heart
	<br>Can''t you see?
	<br>
	<br>That all the nights we slept alone, dryin'' your eyes (''Cause of me, baby)
	<br>And all the nights you thought about taking your life (''Cause of me, baby)
	<br>''Cause if it''s love you want again, don''t waste your time (Don''t you waste)
	<br>If you call me up, I''m fucking you on sight
	<br>
	<br>I don''t wanna hurt you
	<br>
	I don''t wanna hurt you
	<br>I don''t wanna hurt you
	<br>I don''t wanna hurt you
	<br>I don''t wanna hurt you
	<br>I don''t wanna hurt you
	<br>I don''t wanna hurt you
	<br>I don''t wanna hurt you
	<br>
	<br>I don''t want
	<br>I don''t want
	<br>I don''t want
	<br>I don''t want
	<br>I don''t wanna, baby
	<br>I don''t wanna, baby
	<br>I don''t',  
    217, -- secondi
    '2018-03-30',
    'Inglese',
    '',  -- Sostituisci con l'URL reale della foto
    'https://www.youtube.com/watch?v=wKDU5pXhf5o',
    6 -- genere_id
);

INSERT INTO brano VALUES (
	'6',
    'Privilege',
    'Enjoy your privileged life
	<br>''Cause I''m not gonna hold you through the night
	<br>We said our last goodbyes
	<br>So let''s just try to end it with a smile
	<br>
	<br>And I don''t wanna hear that you are suffering
	<br>You are suffering no more
	<br>''Cause I held you down when you were suffering
	<br>You were suffering
	<br>
	Lose your way, way, way
	<br>I got two red pills to take the blues away
	<br>Blues away, way, way
	<br>I got two red pills to take the blues away
	<br>
	<br>And I''ma fuck the pain away, and I know I''ll be okay
	<br>They said our love is just a game, I don''t care what they say
	<br>But I''ma drink the pain away, I''ll be back to my old ways
	<br>And I got two red pills to take the blues away, oh
	<br>
	<br>I don''t wanna hear that no more, no more
	<br>No more, no more
	<br>I don''t wanna hear that no more',  
    153, -- secondi
    '2018-03-30',
    'Inglese',
    '',  
    'https://www.youtube.com/watch?v=JcVDXHeD59c',
    6  -- genere_id
);

INSERT INTO brano VALUES (
	'7',
    'Call Out My Name - A Cappella',
    'We found each other
	<br>I helped you out of a broken place
	<br>You gave me comfort
	<br>But falling for you was my mistake
	<br>
	<br>I put you on top, I put you on top
	<br>I claimed you so proud and openly
	<br>And when times were rough, when times were rough
	<br>I made sure I held you close to me
	<br>
	<br>
	So call out my name (call out my name)
	<br>Call out my name when I kiss you
	<br>So gently, I want you to stay (want you to stay)
	<br>I want you to stay even though you don''t want me
	<br>Girl, why can''t you wait (why can''t you wait baby)
	<br>Girl, why can''t you wait til'' I fall out of love
	<br>Won''t you call out my name
	<br>Girl, call out my name and I''ll be on my way
	<br>I''ll be on my
	<br>
	<br>I said I didn''t feel nothing baby, but I lied
	<br>I almost cut a piece of myself for your life
	<br>Guess I was just another pitstop
	<br>Til'' you made up your mind
	<br>You just wasted my time
	<br>You''re on top
	<br>
	<br>I put you on top
	<br>I claimed you so proud and openly, babe
	<br>And when times were rough, when times were rough
	I made sure I held you close to me
	<br>
	<br>So call out my name (call out my name baby)
	<br>Call out my name when I kiss you
	<br>So gently, I want you to stay (I want you to stay)
	<br>I want you to stay even though you don''t want me
	<br>Girl, why can''t you wait
	<br>(Girl, why can''t you wait til'' I)
	<br>Girl, why can''t you wait til'' I fall out of love
	<br>Won''t you call out my name (say call out my name baby)
	<br>Girl, call out my name and I''ll be on my way
	<br>Girl, I''ll be on my
	<br>
	<br>On my way
	<br>On my way
	<br>
	<br>On my way
	<br>On my way
	<br>On my way
	<br>
	<br>On my way
	<br>On my way
	<br>On my way
	<br>
	<br>On my way
	<br>On my way
	<br>On my way
	<br>
	<br>On, on',  
    '224',  
    '2018-03-30',
    'Inglese',
    '',  -- cosa avevamo detto per la foto??
    'https://www.youtube.com/watch?v=HQfCoXAPowo',  -- Link ufficiale del video su YouTube
    '6' -- genere_id
);

INSERT INTO album (titolo, descrizione, durata, data_uscita, foto, artista_id, genere_id) 
VALUES (
    'After Hours',
    'After Hours è il quarto album in studio di The Weeknd, rilasciato il 20 marzo 2020. L''album esplora temi di cuori spezzati, auto-riflessione e decadenza, mescolando sonorità R&B con influenze synthwave e pop anni ''80. È stato trainato da singoli di successo come "Blinding Lights" e "Heartless".',
    3377,  
    '2020-03-20',
    'https://i.scdn.co/image/ab67616d0000b2738863bc11d2aa12b54f5aeb36',
    1,  -- The Weeknd
    6  
);

INSERT INTO brano (titolo, testo, durata, data_uscita, lingua, foto, yt_link, genere_id) 
VALUES (
    'Alone Again',
    'Take off my disguise
	<br>I''m living someone else''s life
	<br>Suppressing who I was inside
	<br>So I throw 2,000 ones in the sky
	<br>Together we''re alone (Together we''re alone)
	<br>In Vegas I feel so at home (In Vegas I feel so at home)
	<br>I''m falling only for the night
	<br>So I throw 2,000 ones in the sky (The sky)
	<br>How much to light up my star again
	<br>And rewire all my thoughts?
    <br>
	Oh baby, won''t you remind me what I am?
	<br>And break, break my little cold heart
	<br>
	<br>Call me up and I''ll send for you
	<br>Take me down to your altitude
	<br>I don''t know if I can be alone again
	<br>I don''t know if I can sleep alone again
	<br>
	<br>Check my pulse for a second time
	<br>I took too much, I don''t wanna die
	<br>I don''t know if I can be alone again
	<br>I don''t know if I can sleep alone again
	<br>
	<br>Count it up, it''s all for you, count it up
	<br>Count it up, it''s all for you, count it up
	<br>I don''t know if I can be alone again
	<br>I don''t know if I can be alone again', 
    241,  
    '2020-03-20',
    'Inglese',
    '', 
    'https://www.youtube.com/watch?v=JH398xAYpZA',
    6  
);

INSERT INTO brano (titolo, testo, durata, data_uscita, lingua, foto, yt_link, genere_id) 
VALUES (
    'Too Late',
    'No-no, no-no, no-no-no
	<br>
	<br>I let you down, I led you on
	<br>I never thought I''d be here without you
	<br>Don''t let me drown inside your arms
	<br>Bad thoughts inside my mind
	<br>When the darkness comes, you''re my light, baby
	<br>My light, baby, my light when it''s dark, yeah
	<br>I''m too high, baby, too high, baby
	<br>''Cause I know right now, that I lost it (Hey)
	<br>It''s way too late to save our souls, baby (Oh, oh, yeah)
	<br>It''s way too late, we''re on our own (Baby, on my own)
	<br>I made mistakes, I did you wrong, baby (Oh, oh, yeah)
	<br>It''s way too late to save my—
	<br>
	<br>I can''t trust (I can''t trust) where I live (Where I live) anymore (Anymore, anymore, anymore)
	<br>Sources say that we''re done, how would they know?
	<br>We''re in Hell, it''s disguised as a paradise with flashing lights
	<br>I just wanna believe there''s so much more (Hey, hey, hey)
	<br>
	<br>It''s way too late to save our souls, baby (Oh, oh, yeah)
	<br>It''s way too late, we''re on our own (Baby, on my own)
	<br>I made mistakes, I did you wrong, baby (Oh, oh, yeah)
	<br>It''s way too late to save my—
	<br>
	<br>And, ooh, I tell myself I should get over you
	<br>I said ooh, I know I''d rather be all over you
	<br>I''m trying, trying, but I, I just want your body
	<br>Riding slow on top of me, girl, on top of me
	<br>
	I want you, babe, ooh-ooh
	<br>
	<br>It''s way too late (Late) to save our souls, baby (Souls, baby, oh, oh, yeah)
	<br>It''s way too late, we''re on our own (Baby, on my own)
	<br>I made mistakes, I did you wrong, baby (Oh, oh, yeah)
	<br>It''s way too late to save my	',  
    239,  
    '2020-03-20',
    'Inglese',
    '',  
    'https://www.youtube.com/watch?v=nl71vFvVOvw',
    6  
);

INSERT INTO brano (titolo, testo, durata, data_uscita, lingua, foto, yt_link, genere_id) 
VALUES (
    'Hardest to Love',
    'No, yeah
	<br>Oh, yeah
	<br>Oh, yeah
	<br>Yeah, uh
	<br>
	<br>You try with me so many times, yeah
	<br>You''re cryin'' out behind the smiles
	<br>And I can see right through the lies
	<br>Yeah, yeah, yeah, yeah, yeah
	<br>And what we had is dead inside, yeah
	<br>
	You''re actin'' like it''s still alive, ayy
	<br>And you still wanna make it right, yeah
	<br>I know
	<br>
	<br>But I''ve been the hardest to love
	<br>You''re tryna let me go, yeah
	<br>And I can see it, I can see it
	<br>I''ve been the hardest to love
	<br>It''s hard to let me go, yeah
	<br>And I can feel it, I can feel it (Oh, yeah)
	<br>
	<br>I don''t feel it anymore (Yeah)
	<br>The house I bought is not a home (No)
	<br>Together we are so alone
	<br>Yeah, yeah, yeah, yeah, yeah (Oh)
	<br>Don''t regret the day we met (We met)
	<br>Don''t forget that time we spent (We spent)
	<br>Forget that we''re in different beds
	<br>I know
	<br>
	''Cause I''ve been the hardest to love
	<br>You''re tryna let me go, yeah
	<br>And I can see it, I can see it
	<br>I''ve been the hardest to love
	<br>It''s hard to let me go, yeah
	<br>And I can feel it, I can feel it
	<br>
	<br>I can''t, can''t believe you want me
	<br>After all the heart breaks, after all I''ve done, oh-oh-oh (Oh, oh, oh)
	<br>No, I can''t, can''t believe you trust me (Trust me)
	<br>After all the rough days, you still call me up (Me up, oh-oh-oh)
	<br>
	<br>''Cause I''ve been the hardest to love
	<br>You''re tryna let me go, (Tryna let me go) yeah
	<br>And I can see it, I can see it (I can see it)
	<br>I''ve been the hardest to love (Love, baby)
	<br>You''re tryna let me go, yeah
	<br>And I can feel it, I can feel it	',  
    208,  
    '2020-03-20',
    'Inglese',
    '',  
    'https://www.youtube.com/watch?v=pM3nIOYF2W8',
    6  
);

INSERT INTO brano (titolo, testo, durata, data_uscita, lingua, foto, yt_link, genere_id) 
VALUES (
    'Scared to Live',
    'When I saw the signs, I shoulda let you go
	<br>But I kept you beside me
	<br>And if I held you back, at least I held you close
	<br>Should have known you were lonely
	<br>I know things will never be the same
	<br>Time we lost will never be replaced
	<br>I''m the reason you forgot to love
	<br>
	<br>So don''t be scared to live again
	<br>Be scared to live again
	<br>
	No, don''t be scared to live again
	<br>Be scared to live again
	<br>
	<br>You always miss the chance to fall for someone else
	<br>''Cause your heart only knows me
	<br>They try to win your love, there was nothing left
	<br>They just made you feel lonely (Hey)
	<br>But I am not the man I used to be
	<br>Did some things I couldn''t let you see
	<br>Refused to be the one who taints your heart
	<br>
	<br>So don''t be scared to live again
	<br>Be scared to live again
	<br>No, don''t be scared to live again, baby
	<br>Be scared to live again (Say)
	<br>
	<br>I hope you know that (Oh), I hope you know that (Oh)
	<br>That I''ll be praying that you find yourself
	<br>I hope you know that (Oh), I hope you know that (Oh)
	<br>We fell apart right from the start
	<br>I should have made you my only
	<br>When it''s said and done, woah-oah-oah
	<br>
	<br>So don''t be scared to live again, baby
	<br>Be scared to live again
	<br>No, don''t be scared to live again, baby
	<br>Be scared to live again (Hey)
	<br>
	<br>I hope you know that (Oh), I hope you know that (Oh)
	<br>That I''ll be praying that you find yourself
	<br>I hope you know that (Oh), I hope you know that (Oh)
	<br>We fell apart right from the start	',  
    224,  
    '2020-03-20',
    'Inglese',
    '',  
    'https://www.youtube.com/watch?v=MzsU_sn2aIE',
    14  
);

INSERT INTO brano (titolo, testo, durata, data_uscita, lingua, foto, yt_link, genere_id) 
VALUES (
    'Snowchild',
    'I used to pray when I was sixteen
	<br>If I didn''t make it then I''d probably make my wrist bleed
	<br>Not to mislead turn my nightmares into big dreams
	<br>Whole squad mobbin'' even though we only six deep
	<br>I was singing notes while my niggas played with six keys
	<br>Walking in the snow before I ever made my wrist freeze
	<br>I was blowing smoke, had me dizzy like Gillespie
	<br>Niggas had no homes we were living in the dead streets
	<br>You couldn''t find me like I''m Hoffa
	<br>Cover girls jumping out the page like they pop ups
	<br>
	Spending all my money on these niggas that I brought up
	<br>Taking care of families for my brothers when they locked up
	<br>And I had nothing to believe in
	<br>Double cup leanin''
	<br>Couldn''t even breathe and
	<br>For that money I was fiending
	<br>Cali was the mission but now a nigga leaving
	<br>
	<br>Leaving, leaving into the night
	<br>Now a nigga leaving, leaving
	<br>Leaving into the night, oh
	<br>
	<br>She like my futuristic sounds in the new spaceship
	<br>Futuristic sex give her Phillip K dick
	<br>She never need a man, she what a man need
	<br>So I keep on falling for her daily
	<br>We was at Coachella going brazy
	<br>Stack a couple M''s like I was Shady
	<br>Now I''m in Tribeca like I''m Jay-Z
	<br>Rockin'' Sorayama like he pay me
	<div id="mobile-banner" avoid-selection class="user-noselection">
	<div class="native-angolo-multi">
	<script>consentCallbackQueue.push(function(){var n=document.querySelector(".native-angolo-multi"),e=document.createElement("script");e.async="true",e.src="//a.teads.tv/page/156512/tag",e.classList.add("teads"),n.appendChild(e)});</script>
	</div>
	</div>
	I just signed a new deal with Mercedes
	<br>Got me movin'' dirty like I''m Swayze
	<br>All my diamonds dancing like they Swayze
	<br>All my diamonds hitting like they Swae Lee
	<br>Jet so big got a business and a coach
	<br>Always livin'' on the road, rockin'' Louis a la mode, nigga
	<br>And for that money I been fiending
	<br>Cali was the mission but now a nigga leaving
	<br>
	<br>Leaving, leaving into the night
	<br>Now a nigga leaving, leaving
	<br>Leaving into the night, oh
	<br>
	<br>Twenty mill'' mansion, never lived in it
	<br>Zero edge pool, never dipped in it
	<br>Superstar neighbor in my business
	<br>Paparazzi tryna catch me slippin'' and
	<br>Going on tour is my vacation
	<br>Every month another accusation
	<br>Only thing I''m phobic of is failing
	<br>I was never blessed with any patience
	<br>
	<br>So a nigga leaving, leaving, leaving into the night
	<br>Now a nigga leaving, leaving
	<br>Leaving into the night, oh	',  
    241,  
    '2020-03-20',
    'Inglese',
    '',  
    'https://www.youtube.com/watch?v=UxPEFFHA4xw',
    6  
);

INSERT INTO brano (titolo, testo, durata, data_uscita, lingua, foto, yt_link, genere_id) 
VALUES (
    'Escape from LA',
    'You pillow talk to me about the men who try to get in between us
	<br>They buy you bags and jewelry, yeah
	<br>They think your kindness is so weak
	<br>Know you don''t give it up so easy, baby
	<br>But you just wanted my attention
	<br>You just wanted my affection
	<br>You got me tattooed on your mind
	<br>You just want me all the time
	<br>We''ll figure out our shit and find a way (Oh, yeah)
	<br>When you say that you need space, I give you space (You space)
	<br>
	Girl, when you''re ready, you know where I stay
	<br>When it comes to all these hoes, I''ll never chase
	<br>But this world is such a, such an evil place
	<br>Man, these hoes will always find a way
	<br>''Cause when I''m on the liquor, I go crazy
	<br>And for that pussy, you know I''m a slave, yeah
	<br>
	<br>Well this place is never what it seems
	<br>Take me out, LA
	<br>Take me out of LA
	<br>This place will be the end of me
	<br>Take me out, LA
	<br>Take me out of LA, yeah
	<br>
	<br>Yeah
	<br>I''m in the Spyder Porsche cruisin'' down the street
	<br>Black on black venom colored seats
	<br>Keanu Reeves, the way a nigga speed
	<br>Diamond cross hangin'' off of me
	<br>I''m fighting for my soul, Constantine
	<br>
	And it''s slowly burning, it was never cheap
	<br>If you see what I seen, you wouldn''t sleep
	<br>I can''t sleep
	<br>''Cause I got everything I wanted
	<br>Got the money, got the cars, got the ceiling with the stars
	<br>Got everything I wanted
	<br>But I''d be nothing without you
	<br>Gave you everything you wanted
	<br>Gave you power, gave you life, gave you space so you can shine
	<br>Gave you everything you wanted
	<br>But none of that matters to you, oh-oh
	<br>
	<br>This place (This place) is never what it seems
	<br>Take me out, LA
	<br>Take me out of LA
	<br>(Oh, out of it, woah-oh) This place will be the end of me
	<br>Take me out, LA
	<br>Take me out of LA, yeah
	<br>
	<br>Woah, no, oh, no, no
	<br>No, no, no, no, no, ooh-woah
	<br>Oh-ah, no, no, no, no, woah-woah
	<br>Oh, no, oh
	<br>Hold up
	<br>She pulled up to the studio
	<br>Nobody''s watching
	<br>She closed the door and then she locked it
	<br>For me, for me
	<br>We had sex in the studio
	<br>Nobody walked in
	<br>I cut my verse and then she popped it
	<br>For me, for me
	<br>LA girls all look the same
	<br>I can''t recognize
	<br>The same work done on their face
	<br>I don''t criticize
	<br>She a coldhearted bitch with no shame
	<br>But her throat too fire
	<br>She got Chrome Hearts hangin'' from her neck
	<br>And them shits going wild
	<br>When she ride, she hold tight
	<br>She gon'' ride ''til sweat fall down her spine
	<br>She''s all mine for the night
	<br>She''s all mine until he calls her line
	<br>
	<br>She pulled up to the studio
	<br>Nobody''s watching
	<br>She closed the door and then she locked it
	<br>For me, for me
	<br>We had sex in the studio
	<br>Nobody walked in
	<br>I cut my verse and then she popped it
	<br>For me, for me
	<br>Oh-oh, oh-oh	',  
    302,  
    '2020-03-20',
    'Inglese',
    '',  
    'https://youtu.be/vsARlcGW0jE',
    6  
);

INSERT INTO brano (titolo, testo, durata, data_uscita, lingua, foto, yt_link, genere_id) 
VALUES (
    'Heartless',
    '(Sheesh)
	<br>I shouldn''t rush it
	<br>
	<br>Never need a bitch, I''m what a bitch need (Bitch need)
	<br>Tryna find the one that can fix me
	<br>I''ve been dodgin'' death in the six speed
	<br>Amphetamine got my stummy feelin'' sickly
	<br>Yeah, I want it all now
	<br>I''ve been runnin'' through the pussy, need a dog pound
	<br>Hundred models gettin'' faded in the compound
	<br>
	Tryna love me, but they never get a pulse down
	<br>
	<br>Why? ''Cause I''m heartless
	<br>And I''m back to my ways ''cause I''m heartless
	<br>All this money and this pain got me heartless
	<br>Low life for life ''cause I''m heartless
	<br>Said I''m heartless
	<br>Tryna be a better man, but I''m heartless
	<br>Never be a weddin'' plan for the heartless
	<br>Low life for life ''cause I''m heartless
	<br>
	<br>Said I''m heartless
	<br>So much pussy, it be fallin'' out the pocket
	<br>Metro Boomin turn this ho into a moshpit
	<br>Tesla pill got me flyin'' like a cockpit
	<br>Yeah, I got her watchin''
	<br>Call me up, turn that pussy to a faucet
	<br>Duffle bags full of drugs and a rocket
	<br>Stix drunk, but he never miss a target
	<br>Photoshoots, I''m a star now (Star)
	<br>
	I''m talkin'' Time, Rolling Stone, and Bazaar now (''Zaar)
	<br>Sellin'' dreams to these girls with their guard down (What?)
	<br>Seven years, I''ve been swimmin'' with the sharks now
	<br>
	<br>Why? ''Cause I''m heartless
	<br>And I''m back to my ways ''cause I''m heartless
	<br>All this money and this pain got me heartless
	<br>Low life for life ''cause I''m heartless
	<br>Said I''m heartless
	<br>Tryna be a better man, but I''m heartless
	<br>Never be a weddin'' plan for the heartless
	<br>Low life for life ''cause I''m heartless
	<br>
	<br>I lost my heart and my mind
	<br>I try to always do right
	<br>I thought I lost you this time
	<br>You just came back in my life
	<br>You never gave up on me (Why don''t you?)
	<br>I''ll never know what you see (Why won''t you?)
	<br>I don''t do well when alone (Oh yeah)
	<br>You hear it clear in my tone
	<br>
	<br>''Cause I''m heartless
	<br>And I''m back to my ways ''cause I''m heartless
	<br>All this money and this pain got me heartless
	<br>Low life for life ''cause I''m heartless
	<br>Said I''m heartless
	<br>Tryna be a better man, but I''m heartless
	<br>Never be a weddin'' plan for the heartless
	<br>Low life for life ''cause I''m heartless	',  
    200,  
    '2020-03-20',
    'Inglese',
    '',  
    'https://www.youtube.com/watch?v=1DpH-icPpl0',
    6  
);

INSERT INTO brano (titolo, testo, durata, data_uscita, lingua, foto, yt_link, genere_id) 
VALUES (
    'Faith',
    'Light a blunt up with the flame
	<br>Put that cocaine on a plate
	<br>Molly with the purple rain
	<br>''Cause I lost my faith
	<br>So I cut away the pain, uh
	<br>Got it swimming in my veins
	<br>Now my mind is outta place, yeah, uh
	<br>''Cause I lost my faith
	<br>
	<br>And I feel everything
	<br>
	I feel everything from my body to my soul
	<br>No, no
	<br>Well, I feel everything
	<br>When I''m coming down is the most I feel alone
	<br>No, no
	<br>
	<br>I''ve been sober for a year, now it''s time for me
	<br>To go back to my old ways, don''t you cry for me
	<br>Thought I''d be a better man, but I lied to me and to you
	<br>
	<br>I take half a Xan'' and I still stay awake
	<br>All my demons wanna pull me to my grave
	<br>I choose Vegas if they offer heaven''s gate
	<br>I tried to love, but you know I''d never stay
	<br>I''d never stay
	<br>But if I OD, I want you to OD right beside me
	<br>I want you to follow right behind me
	<br>I want you to hold me while I''m smiling
	<br>While I''m dying
	<br>And if you know me
	<br>
	When I go missing, you know where to find me
	<br>Driving down the boulevard is blinding
	<br>Always blinded by the desert lights and
	<br>I''m alive when
	<br>
	<br>I feel everything
	<br>I feel everything from my body to my soul
	<br>No, no
	<br>Girl, I feel everything
	<br>When I''m coming down is the most I feel alone
	<br>No, no
	<br>
	<br>I lost my faith
	<br>I''m losing my religion every day
	<br>Time hasn''t been kind to me, I pray
	<br>When I look inside the mirror and see someone I love
	<br>Oh, someone I love
	<br>Faith
	<br>I''m losing my religion every day
	<br>Time hasn''t been kind to me, I pray
	<br>When I look inside the mirror and see someone I love
	<br>Oh, someone I love
	<br>
	<br>I ended up in the back of a flashing car
	<br>With the city shining on my face
	<br>The lights are blinding me again
	<br>I ended up in the back of a flashing car
	<br>With the city shining on my face
	<br>The lights are blinding me again
	<br>I ended up (I ended up), in the back of a flashing car (Back of a flashing car)	', 
    280,  
    '2020-03-20',
    'Inglese',
    '', 
    'https://www.youtube.com/watch?v=RcS_8-a-sMg',
    14 
);

INSERT INTO brano (titolo, testo, durata, data_uscita, lingua, foto, yt_link, genere_id) 
VALUES (
    'Blinding Lights',
    'Yeah
	<br>
	<br>I''ve been tryna call
	<br>I''ve been on my own for long enough
	<br>Maybe you can show me how to love, maybe
	<br>I''m going through withdrawals
	<br>You don''t even have to do too much
	<br>You can turn me on with just a touch, baby
	<br>
	<br>I look around and
	<br>
	Sin City''s cold and empty (Oh)
	<br>No one''s around to judge me (Oh)
	<br>I can''t see clearly when you''re gone
	<br>
	<br>I said, ooh, I''m blinded by the lights
	<br>No, I can''t sleep until I feel your touch
	<br>I said, ooh, I''m drowning in the night
	<br>Oh, when I''m like this, you''re the one I trust
	<br>Hey, hey, hey
	<br>
	<br>I''m running out of time
	<br>''Cause I can see the sun light up the sky
	<br>So I hit the road in overdrive, baby, oh
	<br>
	<br>The city''s cold and empty (Oh)
	<br>No one''s around to judge me (Oh)
	<br>I can''t see clearly when you''re gone
	<br>
	<br>I said, ooh, I''m blinded by the lights
	<br>No, I can''t sleep until I feel your touch
	<br>
	I said, ooh, I''m drowning in the night
	<br>Oh, when I''m like this, you''re the one I trust
	<br>
	<br>I''m just walking by to let you know (By to let you know)
	<br>I can never say it on the phone (Say it on the phone)
	<br>Will never let you go this time (Ooh)
	<br>
	<br>I said, ooh, I''m blinded by the lights
	<br>No, I can''t sleep until I feel your touch
	<br>Hey, hey, hey
	<br>Hey, hey, hey
	<br>
	<br>I said, ooh, I''m blinded by the lights
	<br>No, I can''t sleep until I feel your touch	', 
    200,  
    '2020-03-20',
    'Inglese',
    '', 
    'https://www.youtube.com/watch?v=4NRXx6U8ABQ',
    6  
);

INSERT INTO brano (titolo, testo, durata, data_uscita, lingua, foto, yt_link, genere_id) 
VALUES (
    'In Your Eyes',
    'I just pretend that I''m in the dark
	<br>I don''t regret ''cause my heart can''t take a loss
	<br>I''d rather be so oblivious
	<br>I''d rather be with you
	<br>
	<br>When it''s said, when it''s done, yeah
	<br>I don''t ever wanna know
	<br>I can tell what you done, yeah
	<br>When I look at you
	<br>
	In your eyes
	<br>I see there''s something burning inside you
	<br>Oh, inside you
	<br>In your eyes, I know it hurts to smile but you try to
	<br>Oh, you try to
	<br>
	<br>You always try to hide the pain
	<br>You always know just what to say
	<br>I always look the other way
	<br>I''m blind, I''m blind
	<br>In your eyes, you lie, but I don''t let it define you
	<br>Oh, define you
	<br>
	<br>I tried to find love
	<br>In someone else too many times
	<br>But I hope you know I mean it (Mean it)
	<br>When I tell you you''re the one that was on my mind, oh
	<br>
	<br>When it''s said, when it''s done, yeah
	<br>I would never let you know (Let you know)
	<br>
	I''m ashamed of what I''ve done, yeah
	<br>When I look at you
	<br>
	<br>In your eyes (Your eyes)
	<br>I see there''s something burning inside you (Inside you)
	<br>Oh, inside you (Oh, inside you)
	<br>In your eyes, I know it hurts to smile but you try to (But you try to)
	<br>Oh, you try to (You try to)
	<br>
	<br>You always try to hide the pain (Oh, oh)
	<br>You always know just what to say (Oh, dear)
	<br>I always look the other way
	<br>I''m blind, I''m blind
	<br>In your eyes, you lie, but I don''t let it define you (Hey)
	<br>Oh, define you
	<br>
	<br>In your eyes
	<br>I see there''s something burning inside you
	<br>Oh, inside you
	<br>
	<br>You always try to hide the pain
	<br>You always know just what to say
	<br>I always look the other way
	<br>I''m blind, I''m blind
	<br>In your eyes, you lie, but I don''t let it define you
	<br>Oh, define you	', 
    234,  
    '2020-03-20',
    'Inglese',
    '', 
    'https://www.youtube.com/watch?v=dqRZDebPIGs&rco=1',
    6 
);

INSERT INTO brano (titolo, testo, durata, data_uscita, lingua, foto, yt_link, genere_id) 
VALUES (
    'Save Your Tears',
    'Ooh
	<br>Na na, yeah
	<br>
	<br>I saw you dancing in a crowded room
	<br>You look so happy when I''m not with you
	<br>But then you saw me, caught you by surprise
	<br>A single teardrop falling from your eye
	<br>
	<br>I don''t know why I run away
	<br>I''ll make you cry when I run away
	<br>
	<br>You could''ve asked me why I broke your heart
	<br>You could''ve told me that you fell apart
	<br>But you walked past me like I wasn''t there
	<br>And just pretended like you didn''t care
	<br>
	<br>I don''t know why I run away
	<br>I''ll make you cry when I run away
	<br>
	<br>Take me back ''cause I wanna stay
	<br>Save your tears for another
	<br>Save your tears for another day
	<br>Save your tears for another day
	<br>
	<br>So, I made you think that I would always stay
	<br>I said some things that I should never say
	<br>Yeah, I broke your heart like someone did to mine
	<br>And now you won''t love me for a second time
	<br>
	<br>I don''t know why I run away, oh, girl
	<br>
	Said I''ll make you cry when I run away
	<br>
	<br>Girl, take me back ''cause I wanna stay
	<br>Save your tears for another
	<br>I realize that I''m much too late
	<br>And you deserve someone better
	<br>Save your tears for another day (Ooh, yeah)
	<br>Save your tears for another day (Yeah)
	<br>
	<br>I don''t know why I run away
	<br>I''ll make you cry when I run away
	<br>
	<br>Save your tears for another day, ooh, girl (Ah)
	<br>I said save your tears for another day (Ah)
	<br>
	<br>Save your tears for another day (Ah)
	<br>Save your tears for another day (Ah)	',  
    215,  
    '2020-03-20',
    'Inglese',
    '',  
    'https://www.youtube.com/watch?v=XXYlFuWEuKI',
    14  
);

INSERT INTO brano (titolo, testo, durata, data_uscita, lingua, foto, yt_link, genere_id) 
VALUES (
    'Repeat After Me (Interlude)',
    'You don''t love him, you don''t love him
	<br>You don''t love him if you''re thinking of me
	<br>You don''t love him, you''re just fucking
	<br>You''re just fucking, it means nothing to me
	<br>You don''t love him, you don''t love him
	<br>You don''t love him if you''re thinking of me
	<br>You don''t love him, you''re just fucking
	<br>You''re just fucking, it means nothing to me, yeah
	<br>
	<br>It''s been too long, you changed up over time
	<br>
	Why you, why you gonna even try to hide?
	<br>It''s natural to find someone to treat you right
	<br>But it ain''t right if you fuck him out of spite
	<br>You don''t have to cry, girl, let me wipe your eyes
	<br>Your eyes, your eyes, your eyes
	<br>I promise you will always be mine
	<br>Oh-oh, just repeat after me
	<br>
	<br>You don''t love him, you don''t love him
	<br>You don''t love him if you''re thinking of me (It''s all right)
	<br>You don''t love him, you''re just fucking
	<br>You''re just fucking, you''re thinking of me
	<br>You don''t love him, you don''t love him
	<br>You don''t love him if you''re thinking of me
	<br>You don''t love him, you''re just fucking
	<br>You''re just fucking, it means nothing to me', 
    195,   
    '2020-03-20',
    'Inglese',
    '',   
    'https://www.youtube.com/watch?v=CE-Iy24NOTY',
    6 
);

INSERT INTO brano (titolo, testo, durata, data_uscita, lingua, foto, yt_link, genere_id) 
VALUES (
    'After Hours',
    'Thought I almost died in my dream again (Baby, almost died)
	<br>Fightin'' for my life, I couldn''t breathe again
	<br>I''m fallin'' into new (Oh, oh)
	<br>Without you goin'' smooth (Fallin'' in)
	<br>''Cause my heart belongs to you
	<br>I''ll risk it all for you
	<br>I won''t just leave
	<br>This time, I''ll never leave
	<br>I wanna share babies
	<br>Protection, we won''t need
	<br>
	Your body next to me
	<br>Is just a memory
	<br>I''m fallin'' in too deep, oh
	<br>Without you, I''m asleep
	<br>It''s on me, only me, oh
	<br>Talk to me, without you, I can''t breathe
	<br>
	<br>
	<br>My darkest hours
	<br>Girl, I felt so alone inside of this crowded room
	<br>Different girls on the floor, distractin'' my thoughts of you
	<br>I turned into the man I used to be, to be
	<br>Put myself to sleep
	<br>Just so I can get closer to you inside my dreams
	<br>Didn''t wanna wake up ''less you were beside me
	<br>I just wanted to call you and say, and say
	<br>
	<br>Oh, baby
	<br>Where are you now when I need you most?
	<br>I''d give it all just to hold you close
	<br>
	Sorry that I broke your heart, your heart
	<br>
	<br>Never comin'' through
	<br>I was running away from facin'' reality
	<br>Wastin'' all of my time on living my fantasies
	<br>Spendin'' money to compensate, compensate
	<br>''Cause I want you, baby
	<br>I''ll be livin'' in Heaven when I''m inside of you
	<br>It was definitely a blessing, wakin'' beside you
	<br>I''ll never let you down again, again
	<br>
	<br>Oh, baby
	<br>Where are you now when I need you most?
	<br>I''d give it all just to hold you close
	<br>Sorry that I broke your heart, your heart
	<br>I said, baby
	<br>I''ll treat you better than I did before
	<br>I''ll hold you down and not let you go
	<br>This time, I won''t break your heart, your heart, yeah
	<br>
	<br>I know it''s all my fault
	<br>Made you put down your guard
	<br>I know I made you fall
	<br>I said you were wrong for me
	<br>I lied to you, I lied to you, I lied to you (To you)
	<br>Can''t hide the truth, I stayed with her in spite of you
	<br>You did some things that you regret, still right for you
	<br>''Cause this house is not a home
	<br>
	<br>Without my baby
	<br>Where are you now when I need you most?
	<br>I gave it all just to hold you close
	<br>Sorry that I broke your heart, your heart
	<br>And I said, baby
	<br>I''ll treat you better than I did before
	<br>I''ll hold you down and not let you go
	<br>This time, I won''t break your heart, your heart, no	',  
    361, 
    '2020-03-20',
    'Inglese',
    '',  
    'https://www.youtube.com/watch?v=v5PZw1Wr-l0',
    6  
);

INSERT INTO brano (titolo, testo, durata, data_uscita, lingua, foto, yt_link, genere_id) 
VALUES (
    'Until I Bleed Out',
    'I can''t move, I''m so paralyzed
	<br>I''m so paralyzed
	<br>I can''t explain why I''m terrified
	<br>I''m so terrified
	<br>
	<br>Well, I don''t wanna touch the sky no more
	<br>I just wanna feel the ground when I''m coming down
	<br>It''s been way too long
	<br>And I don''t even wanna get high no more
	<br>I just want it out of my life
	<br>
	Out of my life, out
	<br>
	<br>I wanna cut you outta my dreams
	<br>''Til I''m bleeding out
	<br>''Til I''m bleeding
	<br>I wanna cut you outta my mind
	<br>''Til I''m bleeding out
	<br>''Til I''m bleeding
	<br>I wanna cut you outta my dreams
	<br>Woah, I''m bleeding out
	<br>Girl, I''m bleeding
	<br>I wanna cut you outta my mind
	<br>''Cause I''m bleeding out
	<br>Oh, I''m bleeding
	<br>Girl, I''m bleeding
	<br>
	<br>I keep telling myself I don''t need it
	<br>I keep telling myself I don''t need it anymore
	<br>I keep telling myself I don''t need it anymore
	<br>Need it anymore	',  
    190,  
    '2020-03-20',
    'Inglese',
    '', 
    'https://www.youtube.com/watch?v=i58MNnk6BhY',
    6  
);

INSERT INTO album (titolo, descrizione, durata, data_uscita, foto, artista_id, genere_id) 
VALUES (
    'Dawn FM', 
    'Dawn FM è il quinto album in studio di The Weeknd, pubblicato il 7 gennaio 2022. Il disco si caratterizza per un sound futuristico, ispirato agli anni ''80, con elementi di pop, R&B ed elettronica. 
    <br>L''album è stato acclamato per la sua produzione sofisticata e la narrazione unica, che esplora temi di introspezione e rinascita. Include collaborazioni con artisti come Tyler, The Creator e Lil Wayne, ed è stato presentato come una trasmissione radiofonica immaginaria.', 
    3117,  -- Durata totale in secondi (es. 51 minuti e 57 secondi)
    '2022-01-07', 
    'https://i.scdn.co/image/ab67616d0000b2734ab2520c2c77a1d66b9ee21d',  
    1, 
    6   
);

INSERT INTO brano (titolo, testo, durata, data_uscita, lingua, foto, yt_link, genere_id) 
VALUES (
    'Dawn FM',
    'This part I do alone
	<br>I''ll take my lead, I''ll take my lead on this road
	<br>And I need something (Something) to hold (To hold)
	<br>Make me believe in make-beliefs
	<br>''Cause after the light, is it dark? Is it dark all alone?
	<br>All alone
	<br>
	<br>You are now listening to 103.5 Dawn FM
	<br>You''ve been in the dark for way too long
	<br>It''s time to walk into the light
	<br>
	And accept your fate with open arms
	<br>Scared? Don''t worry
	<br>We''ll be there to hold your hand and guide you through this painless transition
	<br>But what''s the rush?
	<br>Just relax and enjoy another hour of commercial free yourself music on 103.5 Dawn FM
	<br>Stay tuned
	<br>
	<br>103.5 Dawn FM	',  
    171, 
    '2022-01-07',
    'Inglese',
    '',  
    'https://www.youtube.com/watch?v=w8eFZoOcYKc&list=PLtdokPm7vPss1TXrV4gr2pnSXmMu-UFF4',  
    12  
);

INSERT INTO brano (titolo, testo, durata, data_uscita, lingua, foto, yt_link, genere_id) 
VALUES (
    'Gasoline',
    'It''s 5 AM my time again
	<br>I''ve soakin'' up the moon, can''t sleep
	<br>It''s 5 AM my time again
	<br>I''m calling and you know it''s me
	<br>I''m pushin'' myself further
	<br>I''m just tryin'' to feel my heartbeat beat (Beat)
	<br>I wrap my hands around your neck
	<br>You love it when I always squeeze
	<br>It''s 5 AM, I''m high again
	<br>And you can see that I''m in pain (Ooh, ooh)
	<br>
	I''ve fallen into emptiness
	<br>I want you ''cause we''re both insane
	<br>I''m staring into the abyss
	<br>I''m lookin'' at myself again
	<br>I''m dozing off to R.E.M.
	<br>I''m trying not to lose my faith
	<br>
	<br>And I love it when you watch me sleep
	<br>You spin me ''round so I can breathe
	<br>It''s only safe for you and me
	<br>I know you won''t let me OD
	<br>And if I finally die in peace
	<br>Just wrap my body in these sheets (Sheets)
	<br>And pour out the gasolinе
	<br>It don''t mean much to me
	<br>
	<br>It''s 5 AM, I''m nihilist
	<br>I know therе''s nothing after this (After this)
	<br>Obsessing over aftermaths
	<br>Apocalypse and hopelessness (Hopelessness)
	<br>
	The only thing I understand
	<br>Is zero sum of tenderness (Tenderness)
	<br>Oh, baby, please, just hold me close
	<br>Make me believe there''s more to live
	<br>
	<br>Around, around, around, around we go
	<br>In this game called life, we are not free
	<br>
	<br>And I love it when you watch me sleep
	<br>You spin me ''round so I can breathe
	<br>It''s only safe for you and me (Don''t let me go)
	<br>I know you won''t let me OD (Don''t you let me go)
	<br>And if I finally die in peace (Oh yeah)
	<br>Just wrap my body in these sheets
	<br>And pour out the gasoline
	<br>It don''t mean much to me	',  
    214,  
    '2022-01-07',
    'Inglese',
    '', 
    'https://www.youtube.com/watch?v=iOa7uE23qc4',
    6  
);

INSERT INTO brano (titolo, testo, durata, data_uscita, lingua, foto, yt_link, genere_id) 
VALUES (
    'How Do I Make You Love Me?',
    'We''re goin'' back in time
	<br>I''d like to see you try
	<br>Unpackin'' thoughts through tunnels in your mind
	<br>I''ll fix you mushroom tea
	<br>And cross the restless sea
	<br>Release yourself to escape reality
	<br>
	<br>It doesn''t phase you
	<br>I need a breakthrough
	<br>I only want what''s right in front of me
	<br>
	It''s quite unusual
	<br>Seekin'' approval
	<br>Beggin'' for it desperately
	<br>I said
	<br>
	<br>How do I make you love me?
	<br>How do I make you fall for me?
	<br>How do I make you want me
	<br>And make it last eternally?
	<br>How do I make you love me? (Ooh, ah)
	<br>How do I make you fall for me?
	<br>How do I make you want me (Ooh, ah)
	<br>And make it last eternally?
	<br>
	<br>I can see the real you, girl
	<br>You don''t have to hide
	<br>Forget ''bout what your daddy said
	<br>I''ll teach you how to shine
	<br>And all the things you tolerated
	<br>Made you cold inside
	<br>
	But I can light you up again
	<br>Like embers of a fire
	<br>
	<br>It doesn''t phase you
	<br>I need a breakthrough
	<br>I only want what''s right in front of me
	<br>It''s quite unusual
	<br>Seekin'' approval
	<br>Beggin'' for it desperately
	<br>I said
	<br>
	<br>How do I make you love me? (Make you love me)
	<br>How do I make you fall for me? (How do I make you fall?)
	<br>How do I make you want me
	<br>And make it last eternally?
	<br>How do I make you love me? (Ooh, ah)
	<br>How do I make you fall for me?
	<br>How do I make you want me (Ooh, ah)
	<br>And make it last eternally?	',  
    228,  
    '2022-01-07',
    'Inglese',
    '', 
    'https://www.youtube.com/watch?v=VLMo0rthnoo',
    6  
);

INSERT INTO brano (titolo, testo, durata, data_uscita, lingua, foto, yt_link, genere_id) 
VALUES (
    'Take My Breath',
    'Take my breath
	<br>Take my breath
	<br>Take my breath
	<br>Take my breath
	<br>
	<br>I saw the fire in your eyes
	<br>I saw the fire when I look into your eyes
	<br>You tell me things you wanna try (Uh)
	<br>I know temptation is the devil in disguise
	<br>You risk it all to feel alive, oh yeah
	<br>
	You''re offering yourself to me like sacrifice
	<br>You said you do this all the time
	<br>Tell me you love me if I bring you to the light
	<br>
	<br>It''s like a dream what she feels with me
	<br>Shе loves to be on the еdge
	<br>Her fantasy is okay with me
	<br>Then suddenly, baby says
	<br>
	<br>Take my breath away
	<br>And make it last forever, babe
	<br>Do it now or never, babe (Ah)
	<br>Take my breath away
	<br>Nobody does it better, babe
	<br>Bring me close to—
	<br>
	<br>Want me to hold on to you tight
	<br>You pull me closer, feel the heat between your thighs (Uh, say)
	<br>You''re way too young to end your life (Huh)
	<br>Girl, I don''t wanna be the one who pays the price
	<br>
	<br>Ooh, it''s like a dream what she feels with me
	<br>She loves to be on the edge
	<br>Her fantasy is okay with me
	<br>Then suddenly, baby says
	<br>
	<br>Take my breath away
	<br>And make it last forever, babe
	<br>Do it now or never, babe (Ah)
	<br>Take my breath away
	<br>Nobody does it better, babe
	<br>Bring me close to heaven, babe (Uh)
	<br>Take my breath
	<br>
	<br>Oh, oh-ooh
	<br>And they''ll see me
	<br>Oh-ooh, ooh (Yeah, say)
	<br>Oh-oh, oh-oh
	<br>Oh-oh, oh-oh
	<br>Oh-oh, oh-oh
	<br>Oh-oh
	<br>
	<br>Take my breath away (Take my breath away)
	<br>And make it last forever, babe
	<br>Do it now or never, babe (Ah)
	<br>Take my breath away (Take my breath away)
	<br>Nobody does it better, babe
	<br>Bring me close to heaven, babe (Take my breath)
	<br>Take my breath (Take my breath a—, breath away)
	<br>(Nobody)
	<br>Take my breath (Take my breath a—, breath away)
	<br>Nobody does it better, babe
	<br>Bring me close to heaven, babe (Uh)
	<br>Take my breath	', 
    220,  
    '2022-01-07',
    'Inglese',
    '',  
    'https://www.youtube.com/watch?v=rhTl_OyehF8',
    12  
);

INSERT INTO brano (titolo, testo, durata, data_uscita, lingua, foto, yt_link, genere_id) 
VALUES (
    'Sacrifice',
    'I was born in a city
	<br>Where the winter nights don''t ever sleep
	<br>So this life''s always with me
	<br>The ice inside my veins will never bleed
	<br>
	<br>My, ooh
	<br>My, ooh
	<br>
	<br>Uh, every time you try to fix me
	<br>I know you''ll never find that missing piece
	<br>
	When you cry and say you miss me
	<br>I lie and tell you that I''ll never leave, but
	<br>
	<br>I sacrifice (Sacrifice)
	<br>Your love for more of the night (Of the night)
	<br>I try to put up a fight (Up a fight)
	<br>Can''t tie me down (Down)
	<br>
	<br>I don''t want to sacrifice
	<br>For your love, I try
	<br>I don''t wanna sacrifice
	<br>But I love my timе
	<br>
	<br>My, ooh
	<br>My, ooh
	<br>
	<br>I hold you through the toughest parts
	<br>When you feel likе it''s the end
	<br>''Cause life is still worth living
	<br>Yeah, this life is still worth living
	<br>
	I can break you down and pick you up
	<br>And fuck like we are friends
	<br>But don''t be catchin'' feelings
	<br>Don''t be out here catchin'' feelings ''cause
	<br>
	<br>I sacrifice (Sacrifice)
	<br>Your love for more of the night (Of the night)
	<br>I try to put up a fight (Up a fight)
	<br>Can''t tie me down (Down, down, down)
	<br>
	<br>I don''t want to sacrifice
	<br>For your love, I try
	<br>I don''t wanna sacrifice
	<br>But I love my time
	<br>I don''t want to sacrifice
	<br>For your love (Oh), I try
	<br>I don''t wanna sacrifice
	<br>But I love my time (My, ooh)
	<br>
	<br>Oh, baby
	<br>I hope you know that I, I tried
	<br>Oh, baby (Baby)
	<br>I hope you know I love my time, oh
	<br>
	<br>I don''t wanna sacrifice
	<br>I don''t wanna, I try (Hey)
	<br>I don''t wanna sacrifice
	<br>But I love my time
	<br>My, ooh
	<br>My, ooh	',  
    195,  
    '2022-01-07',
    'Inglese',
    '',  
    'https://www.youtube.com/watch?v=VafTMsrnSTU',
    15  
);

INSERT INTO brano (titolo, testo, durata, data_uscita, lingua, foto, yt_link, genere_id) 
VALUES (
    'A Tale By Quincy',
    'That''s it
	<br>Looking back now, I didn''t know what it was supposed to be
	<br>And it''s like raising kids, man
	<br>If you weren''t raised, you don''t know how to raise, you know?
	<br>I just did the best that I could with them because
	<br>They know fuckin'' well I love them
	<br>But I didn''t do the best I could
	<br>I didn''t know what the fuck I was doing
	<br>I didn''t
	<br>I will never forget watching my mother get put in a straightjacket
	<br>
	And taken out of my home when I was only seven years old
	<br>She was diagnosed with Dementia praecox and put in a mental institution
	<br>Leaving my daddy alone with me and my little brother Lloyd
	<br>I latеr had an evil stepmother who furthеr cemented the idea that I didn''t need a mother
	<br>Growing up without one had long lasting influence I didn''t fully understand until much later in life
	<br>It bled into my relationships with family and those I had became romantically involved with
	<br>Whenever I got too close to a woman, I would cut her off
	<br>Part of that was vindictive and partially based on fear
	<br>But it was also totally subconsious
	<br>Looking back is a bitch, isn''t it?	', 
    171,  
    '2022-01-07',
    'Inglese',
    '',  
    'https://www.youtube.com/watch?v=ioL_Ozo_6iI',
    6 
);

INSERT INTO brano (titolo, testo, durata, data_uscita, lingua, foto, yt_link, genere_id) 
VALUES (
    'Out of Time',
    'Yeah, yeah
	<br>
	<br>The last few months, I''ve been workin'' on me, baby
	<br>There''s so much trauma in my life
	<br>I''ve been so cold to the ones who loved me, baby
	<br>I look back now and I realize
	<br>
	<br>And I remember when I held you
	<br>You begged me with your drowning eyes to stay
	<br>And I regret I didn''t tell you
	<br>
	Now I can''t keep you from loving him
	<br>You made up your mind
	<br>
	<br>Say I love you, girl, but I''m out of time
	<br>Say I''m there for you, but I''m out of time
	<br>Say that I''ll care for you, but I''m out of time
	<br>Said I''m too late to make you mine, out of time (Ah)
	<br>
	<br>If he mess up just a little
	<br>Baby, you know my line
	<br>If you don''t trust him a little
	<br>Then come right back, girl, come right back
	<br>Give me one chance, just a little
	<br>Baby, I''ll treat you right
	<br>And I''ll love you like I shoulda loved you all the time
	<br>
	<br>And I remember when I held you (Held you, baby)
	<br>You begged me with your drowning eyes to stay (Never again, baby)
	<br>And I regret I didn''t tell you (Hey)
	<br>Now I can''t keep you from loving him
	<br>
	You made up your mind (Uh)
	<br>
	<br>Say I love you, girl, but I''m out of time
	<br>Say I''m there for you, but I''m out of time
	<br>Say that I''ll care for you, but I''m out of time
	<br>Said I''m too late to make you mine, out of time (Ah)
	<br>
	<br>Ooh, singin'', out of time
	<br>Said I had you to myself, but I''m out of time
	<br>Say that I''ll care for you, but I''m out of time
	<br>But I''m too late to make you mine, out of time
	<br>Out of time
	<br>Out of time
	<br>
	<br>Don''t you dare touch that dial
	<br>Because like the song says, you are out of time
	<br>You''re almost there, but don''t panic
	<br>There''s still more music to come
	<br>Before you''re completely engulfed in the blissful embrace of that little light you see in the distance
	<br>Soon you''ll be healed, forgiven, and refreshed
	<br>Free from all trauma, pain, guilt, and shame
	<br>You may even forget your own name
	<br>But before you dwell in that house forever
	<br>Here''s thirty minutes of easy listening to some slow tracks
	<br>On 103.5 Dawn FM	', 
    220,  
    '2022-01-07',
    'Inglese',
    '',  
    'https://www.youtube.com/watch?v=2fDzCWNS3ig',
    6 
);

INSERT INTO brano (titolo, testo, durata, data_uscita, lingua, foto, yt_link, genere_id) 
VALUES (
    'Here We Go... Again',
    'Strike a pose with my kinfolk
	<br>Front page of the billboards
	<br>Suit and tie and cigar smokes
	<br>Macallan shots ''til it burn throats
	<br>We still celebratin'' Super Bowl
	<br>Catalog lookin'' legendary
	<br>Ring froze like it''s February
	<br>XO, that''s a mercenary
	<br>A quarter bill on an off-year
	<br>Used to sing on lofts
	<br>
	But now we cruisin'' on a yacht, we clear, yeah
	<br>Said you wanted your boyfriend jealous with a couple pics
	<br>And you didn''t expect to fall for me once you got this dick
	<br>The city dark, city dangerous
	<br>Your girlfriend''s tryna pair you with somebody more famous
	<br>But instead you ended up with someone so basic, faceless
	<br>Someone to take your pictures and frame it
	<br>And my new girl, she a movie star
	<br>My new girl, she a movie star
	<br>I loved her right, make her scream like Neve Campbell
	<br>But when I make her laugh, swear it cures my depressin'' thoughts
	<br>''Cause baby girl, she a movie star
	<br>Baby girl, she a movie star
	<br>I told myself that I''d never fall
	<br>But here we go again
	<br>
	<br>Ooh
	<br>Here we go again
	<br>Life''s a dream
	<br>''Cause it''s never what it seems
	<br>
	But you''d rather love and lost with tears
	<br>Than never love at all
	<br>So here we go again
	<br>
	<br>Although this love is strong to me
	<br>Some things can change, go wrong with me
	<br>We don''t know how it''s gonna be
	<br>Forever is too long to me
	<br>We don''t need the government involved because we like to touch
	<br>We don''t need no damn religion telling us that we in love
	<br>But if we did crush down the road, spendin'' lawyer fees up
	<br>Pen and pad gon'' save my ass if these feelings freeze up
	<br>You gon'' sign this prenup, you gon'' sign this prenup
	<br>You gon'' sign this prenup, you gon'' sign this prenup
	<br>
	<br>Ooh
	<br>Here we go again
	<br>Life''s a dream
	<br>''Cause it''s never what it seems
	<br>But you''d rather love and lost with tears
	<br>Than never love at all
	<br>So here we go again
	<br>
	<br>The number one station to free your soul (Free your soul)
	<br>Dawn 103.5	',  
    197,  
    '2022-01-07',
    'Inglese',
    '', 
    'https://www.youtube.com/watch?v=_WMkhkbF6js',
    6  
);

INSERT INTO brano (titolo, testo, durata, data_uscita, lingua, foto, yt_link, genere_id) 
VALUES (
    'Best Friends',
    'Yeah, yeah, yeah
	<br>Yeah, yeah, yeah, yeah
	<br>Oh, oh, oh
	<br>Hey
	<br>Yeah, yeah, yeah, uh
	<br>Yeah, yeah, yeah, yeah
	<br>
	<br>Oh, what we got
	<br>Baby, what we got is secure
	<br>Been a part of toxic love
	<br>
	It tore us apart
	<br>Things you want, I''m not lookin'' for
	<br>You''re my best friend now
	<br>You''re my best friend now
	<br>Oh, I don''t want to be responsible
	<br>For your heart if we fall
	<br>''Cause I''ll get clumsy and tear it apart
	<br>I love you so, but we can''t get close
	<br>You''re my best friend now
	<br>You''re my best friend now
	<br>
	<br>Oh, I love it when we climax (Climax)
	<br>And I would never burn you
	<br>I could never hurt you
	<br>If we do it like that
	<br>Don''t try to take it further
	<br>Focus on the friendship
	<br>Get a little sidetracked
	<br>Catchin'' little feelings
	<br>Thought we had arrangements
	<br>
	Thought you weren''t like that
	<br>Yeah (Uh-uh), I thought you weren''t like that
	<br>
	<br>Oh, friends no more
	<br>Sex as friends no more
	<br>You don''t wanna have sex as friends no more
	<br>Friends no more
	<br>Ooh, friends no more, uh
	<br>Sex as friends no more
	<br>You don''t wanna have sex as friends no more
	<br>Oh
	<br>
	<br>Oh, what we got (Oh yeah)
	<br>Baby, what we got is secure
	<br>Been a part of toxic love
	<br>It tore us apart (Oh yeah)
	<br>Things you want, I''m not lookin'' for (I''m not searchin'')
	<br>You''re my best friend now (Oh baby)
	<br>You''re my best friend now
	<br>Oh, I don''t want to be responsible
	<br>For your heart if we fall (Oh no)
	<br>''Cause I''ll get clumsy and tear it apart
	<br>I love you so (Oh yeah), but we can''t get close
	<br>You''re my best friend now (Best friend now)
	<br>You''re my best friend now (Best friend now)
	<br>
	<br>Dawn FM (Radio)',  
    169, 
    '2022-01-07',
    'Inglese',
    '',  
    'https://www.youtube.com/watch?v=jkEzNvdKGeA',
    6 
);

INSERT INTO brano (titolo, testo, durata, data_uscita, lingua, foto, yt_link, genere_id) 
VALUES (
    'Is There Someone Else?',
    'I know that you''re hiding something from me
	<br>That''s been close to your heart
	<br>And I felt it creeping up every day
	<br>Baby, right from the start
	<br>I know that look you give when we''re fighting (Fighting)
	<br>We''re fighting (Fighting)
	<br>''Cause I used to be the one who was lying (Lying)
	<br>Oh, lying (Lying)
	<br>
	<br>Oh, is there someone else or not?
	<br>
	''Cause I wanna keep you close
	<br>I don''t wanna lose my spot
	<br>''Cause I need to know
	<br>If you''re hurting him, or you''re hurting me
	<br>If I ain''t with you, I don''t wanna be
	<br>Is there someone else or not?
	<br>Ooh, or not
	<br>
	<br>I don''t deservе someone loyal to me
	<br>Don''t you think I see?
	<br>And I don''t want to bе a prisoner to who I used to be
	<br>I swear I changed my ways for the better, the better
	<br>''Cause I wanna be with you forever, forever
	<br>
	<br>Oh, is there someone else or not?
	<br>''Cause I wanna keep you close
	<br>I don''t wanna lose my spot
	<br>''Cause I need to know
	<br>If you''re hurting him, or you''re hurting me
	<br>If I ain''t with you, I don''t wanna be
	<br>
	Is there someone else or not?
	<br>Ooh, or not	',  
    173, 
    '2022-01-07',
    'Inglese',
    '',  
    'https://www.youtube.com/watch?v=1XqIWr_WqM4',
    6  
);

INSERT INTO brano (titolo, testo, durata, data_uscita, lingua, foto, yt_link, genere_id) 
VALUES (
    'Starry Eyes',
    'I only met you in my dreams before
	<br>When I was young and alone in the world
	<br>You were there when I needed someone
	<br>To call my girl
	<br>And now you''re my reality
	<br>And I wanna feel you close
	<br>But you''re defeated, baby
	<br>Broken, hurtin'', sufferin'' from a shattered soul
	<br>Oh woah, a shattered soul
	<br>Oh, oh-oh
	<br>
	<br>Let me be there
	<br>Let me be there for your heart
	<br>Let me be there
	<br>I can be there ''til you''re whole
	<br>You weren''t touched by a man in so long
	<br>''Cause the last time it was way too strong
	<br>Let me be there
	<br>Let me be there for your heart
	<br>Let me love you
	<br>Let me love you like you need
	<br>And I''ll make it
	<br>Make it my responsibility
	<br>I''ll be there every step of the way
	<br>I''ll get you back on your feet
	<br>Let me love you
	<br>Let me love you like you need
	<br>And you can kick me
	<br>Kick me to the curb
	<br>It''s okay, baby
	<br>
	I promise that I felt worse
	<br>Back then, I was starry eyed
	<br>And now I''m so cynical
	<br>Baby, break me
	<br>Kick me to the curb
	<br>Oh woah
	<br>Mm-mm	',  
    157,  
    '2022-01-07',
    'Inglese',
    '',  
    'https://www.youtube.com/watch?v=kDGyiXAMJAk',
    6  
);

INSERT INTO brano (titolo, testo, durata, data_uscita, lingua, foto, yt_link, genere_id) 
VALUES (
    'Every Angel Is Terrifying',
    'Ooh
	<br>Ooh, ooh
	<br>Ah, ah, woah
	<br>
	<br>Who, if I cried out, would hear me among the angels'' order?
	<br>Even if they pressed me against their heart, I’d be consumed
	<br>For beauty is the terror we endure
	<br>While we stand and wonder, we''re annihilated
	<br>Every angel is terrifying
	<br>
	<br>
	Intense, graphic, sexy, euphoric
	<br>Provocative, edgy, thought-provoking
	<br>Technically and visually stunning
	<br>A compelling work of science fiction
	<br>A suspenseful еxposé
	<br>Cinema like you''ve nеver seen it before
	<br>The exotic, bizarre and beautiful world of "After Life"
	<br>And this is your invitation to enter
	<br>Critics say "After Life" makes your current life look like a total comatose snooze fest
	<br>It''s action-packed
	<br>The future of everyone''s fate
	<br>Nigel and Frank call it a **** classic
	<br>Arthur Fleminger says, "I can''t keep my eyes off the screen"
	<br>"After Life" can be yours for only $4.95 with a subscription
	<br>When you order the "Best of Your Current Life" Collection Series
	<br>You will enter a world beyond your imagination
	<br>A future out of control
	<br>And an experience you will never forget
	<br>(Don''t say we didn''t warn you)
	<br>The wait is over
	<br>
	Call 1-800-414-4444
	<br>That''s 1-800-444-4444 now to order "After Life"
	<br>$4.95 plus
	<br>(Now)
	<br>To order "After Life" plus $3.79 shipping and handling
	<br>Now',  
    180,  
    '2022-01-07',
    'Inglese',
    '',  
    'https://www.youtube.com/watch?v=_gaCXN99pC8',
    6 
);

INSERT INTO brano (titolo, testo, durata, data_uscita, lingua, foto, yt_link, genere_id) 
VALUES (
    'Don''t Break My Heart',
    'Ooh (I''m paralyzed)
	<br>Ooh
	<br>Ooh (Let''s go)
	<br>
	<br>I see you drowning in the purple lights
	<br>Diamonds shinin'' bright
	<br>I see every ice on you
	<br>You snatch my soul, I''m crucified
	<br>I feel paralyzed
	<br>I''m so mesmerized by you (By you)
	<br>
	<br>But I know you''re right for me
	<br>Ecstasy
	<br>I keep coming back for more
	<br>I think that you would die for me
	<br>Destiny
	<br>And this time, I know for sure
	<br>
	<br>Just don''t break my heart (Don''t break my heart)
	<br>Don''t let me down, please
	<br>Don''t you break my heart (Don''t break my heart)
	<br>I don''t know if I can take it anymore
	<br>
	<br>Take it anymore, take it anymore
	<br>I can''t take another heartbreak or I''ll end it all
	<br>And the girl I used to love
	<br>We broke up in the club
	<br>And I almost died in the discotheque
	<br>
	<br>And now I know she wasn''t right for me
	<br>
	Enemy
	<br>I kept coming back for more
	<br>I''d rather you would die for me
	<br>Destiny
	<br>And this time I know for sure
	<br>
	<br>Just don''t break my heart (Don''t break my heart)
	<br>Don''t let me down, please
	<br>Don''t you break my heart (Don''t break my heart)
	<br>I don''t know if I can take it anymore
	<br>Don''t break my heart (Don''t you, don''t you)
	<br>I''m falling apart already
	<br>Don''t you break my heart (Don''t you, don''t you)
	<br>I don''t know if I can take it anymore
	<br>
	<br>I believe the liquor''s talking
	<br>I just need the room to stop and
	<br>I could be the one you want
	<br>Just as long as you don''t break my heart
	<br>And I realized
	<br>When I kissed your neck
	<br>That the room is hot
	<br>I can taste your sweat
	<br>It''s just you and I
	<br>In the discotheque
	<br>But don''t you worry
	<br>
	<br>Just don''t break my heart (Don''t break my heart)
	<br>Don''t let me down, please
	<br>Don''t you break my heart (Don''t break my heart)
	<br>I don''t know if I can take it anymore
	<br>Don''t break my heart (Don''t you, don''t you)
	<br>I''m falling apart already
	<br>Don''t you break my heart (Don''t you, don''t you)
	<br>I don''t know if I can take it anymore	', 
    205,  
    '2022-01-07',
    'Inglese',
    '',  
    'https://www.youtube.com/watch?v=PHFWp5s-KNQ',
    6
);

INSERT INTO brano (titolo, testo, durata, data_uscita, lingua, foto, yt_link, genere_id) 
VALUES (
    'I Heard You''re Married',
    'Yeah
	<br>Yeah, yeah (Ah)
	<br>Oh, oh yeah
	<br>Mm-mm
	<br>
	<br>The way you hypnotized me, I could tell (Uh)
	<br>You''ve been in control
	<br>You manifested this, but girl, I blame myself
	<br>Things I shoulda known
	<br>The whispers that I hear
	<br>
	Are blowin'' through my ears
	<br>These words I need to hear from you
	<br>And I know this is a fling
	<br>But you''re hidin'' someone''s ring
	<br>It hurts to think I''m sharin'' you
	<br>
	<br>Ooh, I heard you''re married, girl
	<br>I knew that this was too good to be true
	<br>Ooh, I heard you''re married, girl, oh, oh, oh
	<br>
	<br>If you don''t love him (Oh no)
	<br>Then do yourself a favor and just leave him
	<br>Your number in my phone, I''m gon'' delete it
	<br>Girl, I''m way too grown for that deceivin''
	<br>''Cause I don''t play, I don''t play
	<br>Now I''m sure you have your issues and your reasons (Reasons)
	<br>But why you even with him if you''re cheatin''? (Cheatin'')
	<br>And I thought you were someone that I could be with (Yeah)
	<br>And it kills me that I''m sharin'' you
	<br>
	Oh, I heard you''re married, girl
	<br>I knew that this was too good to be true
	<br>Ooh, I heard you''re married, girl, oh, oh, oh
	<br>And I hate it
	<br>Ooh, I heard you''re married, girl (Married, girl)
	<br>The way you had me wrapped around your fingertip
	<br>Ooh, I heard you''re married, girl, oh, oh, oh
	<br>
	<br>I can''t be with you
	<br>No, I can''t be with you
	<br>You''re too deceiving, girl, oh (Ooh)
	<br>I can''t be with you (Yeah)
	<br>No, I can''t be with you
	<br>You''re too deceiving, girl
	<br>Oh, yeah
	<br>
	<br>Can''t be your side bitch
	<br>That shit ain''t fly, bitch
	<br>Can''t be your pilot
	<br>Can''t be your private
	<br>Make me your obvious
	<br>If I ain''t your husband, I can''t be your hybrid
	<br>I heard you''re married
	<br>I bet he treats you like Virgin Mary
	<br>You like it dirty and I''m Dirty Harry
	<br>I thought we were some love birds, canaries, word to Larry
	<br>But I can''t fuck with you
	<br>You put my love on the line and then hang up on you
	<br>That''s a long kiss goodbye, I gotta tongue kiss you
	<br>And when doves cry, we ain''t got enough tissue
	<br>I''m still in love with you
	<br>Where the love at?
	<br>You walk down the aisle, I can make you run back
	<br>Like fuck that, where the love at?
	<br>And tell hubby I''ll kill him, no hub cap
	<br>
	<br>Woah, woah (Woah, woah)
	<br>Oh, I heard you''re married, girl (Married, girl)
	<br>I knew that this was too good to be true
	<br>Oh, I heard you''re married, girl, oh, oh, oh (Woah, woah)
	<br>And I hate it (Oh, I hate it)
	<br>Ooh, I heard you''re married, girl (Married, girl)
	<br>The way you had me wrapped around your fingertip (Your fingertip)
	<br>Ooh, I heard you''re married, girl, oh, oh, oh (I heard you''re married, and baby, I hate it)
	<br>
	<br>I can''t be with you
	<br>No, I can''t be with you
	<br>You''re too deceiving, girl, oh (Ooh)
	<br>I can''t be with you (Yeah)
	<br>No, I can''t be with you
	<br>You''re too deceiving, girl (Ooh, ooh)
	<br>I can''t be with you (Oh yeah)
	<br>No, I can''t be with you
	<br>You''re too deceiving, girl, oh (Talk to me, say)
	<br>I can''t be with you
	<br>No, I can''t be with you
	<br>You''re too deceiving, girl (Ooh)', 
    263,  
    '2022-01-07',
    'Inglese',
    '',  
    'https://www.youtube.com/watch?v=srxa-cWPJTo',
    14  
);

INSERT INTO brano (titolo, testo, durata, data_uscita, lingua, foto, yt_link, genere_id) 
VALUES (
    'Less Than Zero',
    'Remember I was your hero, yeah
	<br>I''d wear your heart like a symbol
	<br>I couldn''t save you from my darkest truth of all
	<br>I know
	<br>I''ll always be less than zero
	<br>Oh, yeah
	<br>You tried your best with me, I know
	<br>I couldn''t face you with my darkest truth of all
	<br>Oh
	<br>
	''Cause I can''t get it out of my head
	<br>No, I can''t shake this feeling that crawls in my bed
	<br>I try to hide it, but I know you know me
	<br>I try to fight it, but I''d rather be free
	<br>Oh
	<br>
	<br>Oh yeah
	<br>Can we meet in the middle?
	<br>Oh yeah
	<br>''Cause you were just like me before
	<br>Now you''d rather leavе me
	<br>Than to watch me die in your arms, oh
	<br>
	<br>But I can''t gеt it out of my head
	<br>No, I can''t shake this feeling that crawls in my bed
	<br>I try to hide it, but I know you know me
	<br>I try to fight it, but I''d rather be free
	<br>Oh
	<br>
	<br>(I can''t get it out of my head)
	<br>
	(No, I can''t shake this feeling that crawls in my bed)
	<br>
	<br>I can''t get it out of my head
	<br>No, I can''t shake this feeling that crawls in my bed
	<br>I try to hide it, but I know you know me
	<br>I try to fight it, but I''d rather be free
	<br>
	<br>Yeah
	<br>I''ll always be less than zero
	<br>You tried your best with me, I know',  
    211, 
    '2022-01-07',
    'Inglese',
    '',  
    'https://www.youtube.com/watch?v=LKsgDcckur0',
    11  
);

INSERT INTO brano (titolo, testo, durata, data_uscita, lingua, foto, yt_link, genere_id) 
VALUES (
    'Phantom Regret by Jim',
    'You''re tuned to Dawn FM
	<br>The middle of nowhere on your dial
	<br>So sit back and unpack
	<br>You may be here a while
	<br>Now that all future plans have been postponed
	<br>And it''s time to look back on the things you thought you owned
	<br>Do you remember them well?
	<br>Were you high or just stoned?
	<br>And how many grudges did you take to your grave?
	<br>When you weren''t liked or followed, how did you behave?
	Was it often a dissonant chord you were strumming?
	<br>Were you ever in tune with the song life was humming?
	<br>
	<br>If pain''s living on when your body''s long gone
	<br>And your phantom regret hasn''t let it go yet
	<br>You may not have died in the way that you must
	<br>All specters are haunted by their own lack of trust
	<br>When you''re all out of time, there''s nothing but space
	<br>No hunting, no gathering, no nations, no race
	<br>And Heaven is closer than those tears on your face
	<br>When the purple rain falls, we''re all bathed in its grace
	<br>
	<br>Heaven''s for those who let go of regret
	<br>And you have to wait here when you''re not all there yet
	<br>But you could be there by the end of this song
	<br>Where The Weeknd''s so good and he plays all week long
	<br>Bang a gong, get it on
	<br>And if your broken heart''s heavy when you step on the scale
	<br>You''ll be lighter than air when they pull back the veil
	<br>Consider the flowers, they don''t try to look right
	<br>
	They just open their petals and turn to the light
	<br>Are you listening real close? Heaven''s not that, it''s this
	<br>It''s the depth of this moment, we don''t reach for bliss
	<br>God knows life is chaos, but He made one thing true
	<br>You gotta unwind your mind, train your soul to align
	<br>And dance ''til you find that divine boogaloo
	<br>In other words
	<br>You gotta be Heaven to see Heaven
	<br>May peace be with you',  
    179,  
    '2022-01-07',
    'Inglese',
    '',  
    'https://www.youtube.com/watch?v=vCOXTEzfoJ4',
    11  
);

select * from brano;

-- id - brano_id - album_id BIGINT NOT NULL,
INSERT INTO album_brano VALUES ('1','1','1');
INSERT INTO album_brano VALUES ('2','2','1');
INSERT INTO album_brano VALUES ('3','3','1');
INSERT INTO album_brano VALUES ('4','4','1');
INSERT INTO album_brano VALUES ('5','5','1');
INSERT INTO album_brano VALUES ('6','6','1');
INSERT INTO album_brano VALUES ('7','7','1');
INSERT INTO album_brano VALUES ('8','8','2');
INSERT INTO album_brano VALUES ('9','9','2');
INSERT INTO album_brano VALUES ('10','10','2');
INSERT INTO album_brano VALUES ('11','11','2');
INSERT INTO album_brano VALUES ('12','12','2');
INSERT INTO album_brano VALUES ('13','13','2');
INSERT INTO album_brano VALUES ('14','14','2');
INSERT INTO album_brano VALUES ('15','15','2');
INSERT INTO album_brano VALUES ('16','16','2');
INSERT INTO album_brano VALUES ('17','17','2');
INSERT INTO album_brano VALUES ('18','18','2');
INSERT INTO album_brano VALUES ('19','19','2');
INSERT INTO album_brano VALUES ('20','20','2');
INSERT INTO album_brano VALUES ('21','21','2');
INSERT INTO album_brano VALUES ('22','22','3');
INSERT INTO album_brano VALUES ('23','23','3');
INSERT INTO album_brano VALUES ('24','24','3');
INSERT INTO album_brano VALUES ('25','25','3');
INSERT INTO album_brano VALUES ('26','26','3');
INSERT INTO album_brano VALUES ('27','27','3');
INSERT INTO album_brano VALUES ('28','28','3');
INSERT INTO album_brano VALUES ('29','29','3');
INSERT INTO album_brano VALUES ('30','30','3');
INSERT INTO album_brano VALUES ('31','31','3');
INSERT INTO album_brano VALUES ('32','32','3');
INSERT INTO album_brano VALUES ('33','33','3');
INSERT INTO album_brano VALUES ('34','34','3');
INSERT INTO album_brano VALUES ('35','35','3');
INSERT INTO album_brano VALUES ('36','36','3');
INSERT INTO album_brano VALUES ('37','37','3');