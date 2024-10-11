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
    '00:25:36', -- durata? come la mettiamo? in secondi?
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
    '00:03:48',  
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
    '00:03:41',
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
    '00:03:40', 
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
    '00:04:01', -- secondi?
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
    '00:03:50', 
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
    '00:02:50', -- secondi
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
    '00:03:44',  
    '2018-03-30',
    'Inglese',
    '',  -- cosa avevamo detto per la foto??
    'https://www.youtube.com/watch?v=HQfCoXAPowo',  -- Link ufficiale del video su YouTube
    '6'  -- genere_id
);

-- id - brano_id - album_id BIGINT NOT NULL,
INSERT INTO album_brano VALUES ('1','1','1');
INSERT INTO album_brano VALUES ('2','2','1');
INSERT INTO album_brano VALUES ('3','3','1');
INSERT INTO album_brano VALUES ('4','4','1');
INSERT INTO album_brano VALUES ('5','5','1');
INSERT INTO album_brano VALUES ('6','6','1');
INSERT INTO album_brano VALUES ('7','7','1');