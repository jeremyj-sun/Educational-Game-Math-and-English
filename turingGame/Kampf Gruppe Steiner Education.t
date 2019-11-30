%Name: Jeremy Sun
%Description: Kampf Gruppe Steiner Education
%Date: January 20, 2016
%Final Evaluation

setscreen ("graphics; 640:480")

%variables
var font1, font2, font3, font4, font5, font6 : int

%pics
var pic1 : int := Pic.FileNew ("tiger2.jpg")
%var pic2 : int := Pic.FileNew ("mute.jpg")
var pic3 : int := Pic.FileNew ("unmute.jpg")
var pic4 : int := Pic.FileNew ("tiger1.jpg")
var pic5 : int := Pic.FileNew ("panther.jpg")
var pic6 : int := Pic.FileNew ("addition.jpg")
var pic7 : int := Pic.FileNew ("subtraction.jpg")
var pic8 : int := Pic.FileNew ("multiplication.jpg")
var pic9 : int := Pic.FileNew ("bismarck.jpg")
var pic10 : int := Pic.FileNew ("pickelhaube.jpg")
var pic11 : int := Pic.FileNew ("kaiser.jpg")
var pic12 : int := Pic.FileNew ("back.jpg")
var pic13 : int := Pic.FileNew ("eagle.jpg")
var pic14 : int := Pic.FileNew ("montgomery.jpg")
var pic15 : int := Pic.FileNew ("haig.jpg")
var pic16 : int := Pic.FileNew ("britishdude.jpg")
var pic17 : int := Pic.FileNew ("dog.jpg")
var pic18 : int := Pic.FileNew ("party.jpg")
var pic19 : int := Pic.FileNew ("sick.jpg")
var pic20 : int := Pic.FileNew ("bluesky.jpg")
var pic21 : int := Pic.FileNew ("snakesladders.jpg")
var pic22 : int := Pic.FileNew ("school.jpg")
var pic23 : int := Pic.FileNew ("car.jpg")
var pic24 : int := Pic.FileNew ("tank.jpg")
var pic25 : int := Pic.FileNew ("fish.jpg")
var pic26 : int := Pic.FileNew ("bird.jpg")
var pic27 : int := Pic.FileNew ("window.jpg")
var pic28 : int := Pic.FileNew ("house.jpg")
var pic29 : int := Pic.FileNew ("abrams.jpg")
var pic30 : int := Pic.FileNew ("t54.jpg")
var pic31 : int := Pic.FileNew ("t72.jpg")
%scaling
pic13 := Pic.Scale (pic13, 200, 200)
pic14 := Pic.Scale (pic14, 200, 300)
pic15 := Pic.Scale (pic15, 200, 300)
pic16 := Pic.Scale (pic16, 200, 300)
pic17 := Pic.Scale (pic17, 200, 200)
pic18 := Pic.Scale (pic18, 200, 200)
pic19 := Pic.Scale (pic19, 200, 200)
pic20 := Pic.Scale (pic20, 200, 200)
pic21 := Pic.Scale (pic21, 200, 200)
pic22 := Pic.Scale (pic22, 200, 200)
pic23 := Pic.Scale (pic23, 250, 250)
pic24 := Pic.Scale (pic24, 250, 250)
pic25 := Pic.Scale (pic25, 250, 250)
pic26 := Pic.Scale (pic26, 250, 250)
pic27 := Pic.Scale (pic27, 250, 250)
pic28 := Pic.Scale (pic28, 250, 250)
pic29 := Pic.Scale (pic29, 640, 480)
pic30 := Pic.Scale (pic30, 640, 480)
pic31 := Pic.Scale (pic31, 640, 480)

var x, y, button : int
var continue : int
var name : string
var menu : int %to prevent overlapping button interactions
menu := 0

var change1 : int %switches music
var change2 : int %switch between math and enlglish menus
var change3 : int %switches music
var change4 : int %switches music
change1 := 0
change3 := 0
change4 := 0

var a, b, c, d, e : int
var score, retries : int

%shape variables
var x2, x3, y2, y3 : int
x2 := 150
x3 := 400
y2 := 275
y3 := 275
var aG : int
var aG2 : int
var bG : int
var bG2 : int
var mathanswer : int

%fonts
font1 := Font.New ("Elephant:25")
font2 := Font.New ("Elephant:15")
font3 := Font.New ("Impact:15")
font4 := Font.New ("Impact:50")
font5 := Font.New ("Impact:20")
font6 := Font.New ("Elephant:13")

% english variables
var enganswer : string
var again1, again2, again3, again4, again5, again6 : int
again1 := 0
again2 := 0
again3 := 0
again4 := 0
again5 := 0
again6 := 0
var norepeat : int
var col : int
col := 9
var shape : int
shape := 1

Music.PlayFileLoop ("Company of Heroes 2 - Western Front Armies Theme.mp3")

% ADD ANIMATION

%mouse
process mouse2
    loop
	mousewhere (x, y, button)
    end loop
end mouse2
fork mouse2

process GAME1
    loop
	if menu = 10 then
	    if x > 0 and x < 50 and y > 355 and y < 405 and button = 1 then
		col := 4
	    elsif x > 0 and x < 50 and y > 305 and y < 355 and button = 1 then
		col := 43
	    elsif x > 0 and x < 50 and y > 255 and y < 305 and button = 1 then
		col := 9
	    elsif x > 0 and x < 50 and y > 205 and y < 255 and button = 1 then
		shape := 1
	    elsif x > 0 and x < 50 and y > 155 and y < 205 and button = 1 then
		shape := 2
	    elsif x > 0 and x < 50 and y > 105 and y < 155 and button = 1 then
		cls
		drawfillbox (0, 0, 640, 480, 0)
		drawfillbox (0, 355, 50, 405, 4)
		drawfillbox (0, 305, 50, 355, 43)
		drawfillbox (0, 255, 50, 305, 9)
		drawfillbox (0, 205, 50, 255, 8)
		drawfilloval (25, 230, 8, 8, 7)
		drawfillbox (0, 155, 50, 205, 8)
		drawfillbox (10, 165, 40, 195, 7)
		drawfillbox (0, 105, 50, 155, 14)
		Font.Draw ("C", 20, 115, font2, 7)
		pic3 := Pic.Scale (pic3, 30, 30)
		Pic.Draw (pic3, 30, 0, 0)
		pic12 := Pic.Scale (pic12, 30, 30)
		Pic.Draw (pic12, 0, 0, 0)
	    end if
	end if
    end loop
end GAME1
fork GAME1

process GAME2
    loop
	if menu = 10 then
	    delay (250)
	    if x > 50 and y > 30 and button = 1 then
		if shape = 1 then
		    loop
			drawfilloval (x, y, 2, 2, col)
			exit when button = 0
		    end loop
		elsif shape = 2 then
		    loop
			drawfillbox (x, y, x + 2, y + 2, col)
			exit when button = 0
		    end loop
		end if
	    end if
	end if
    end loop
end GAME2
fork GAME2

process MUSIC
    loop
	if x > 0 and x < 30 and y > 0 and y < 30 and button = 1 and change3 = 0 and menu >= 3 and menu < 10 then
	    change3 := 1
	    Music.PlayFileStop
	    Draw.ThickLine (0, 0, 30, 30, 1, 7)
	    delay (500)
	elsif x > 0 and x < 30 and y > 0 and y < 30 and button = 1 and change3 = 1 and menu >= 3 and menu < 10 then
	    change3 := 0
	    Music.PlayFileLoop ("Red_Army_Choir_-_The_Hunt_For_Red_October.mp3")
	    pic3 := Pic.Scale (pic3, 30, 30)
	    Pic.Draw (pic3, 0, 0, 0)
	    delay (500)
	elsif x > 550 and x < 600 and y > 250 and y < 300 and button = 1 and change1 = 0 and menu <= 2 then
	    change1 := 1
	    Music.PlayFileStop
	    Draw.ThickLine (550, 250, 600, 300, 2, 7)
	    delay (500)
	elsif x > 550 and x < 600 and y > 250 and y < 300 and button = 1 and change1 = 1 and menu <= 2 then
	    change1 := 0
	    Music.PlayFileLoop ("Company of Heroes 2 - Western Front Armies Theme.mp3")
	    pic3 := Pic.Scale (pic3, 50, 50)
	    Pic.Draw (pic3, 550, 250, 0)
	    delay (500)
	elsif x > 30 and x < 60 and y > 0 and y < 30 and button = 1 and change4 = 0 and menu = 10 then
	    change4 := 1
	    Music.PlayFileStop
	    Draw.ThickLine (30, 0, 60, 30, 1, 7)
	    delay (500)
	elsif x > 30 and x < 60 and y > 0 and y < 30 and button = 1 and change4 = 1 and menu = 10 then
	    change4 := 0
	    Music.PlayFileLoop ("Red_Army_Choir_-_The_Hunt_For_Red_October.mp3")
	    pic3 := Pic.Scale (pic3, 30, 30)
	    Pic.Draw (pic3, 30, 0, 0)
	    delay (500)
	end if
    end loop
end MUSIC
fork MUSIC

var x4, y4 : int
var x5, y5 : int
%var key2 : string (1)
%key2 := "1"
%var start : int
%start := 0
x4 := 0
y4 := 0
x5 := 0
y5 := 0
%var I_UNDERSTAND_WHAT_A_REAL_VARIABLE_IS : real

process slideshow
    loop
	Pic.Draw (pic29, x4, y4, 0)
	Pic.Draw (pic30, x4 - 640, y4, 0)
	Pic.Draw (pic31, x4 - 1280, y4, 0)
	delay (50)
	cls
	x4 := x4 + 5
	exit when x4 = 1280
    end loop
end slideshow
fork slideshow

/*
 process slideshow2
 loop
 if start = 1 then
 loop
 Pic.Draw (pic29, x5, y5, 0)
 Pic.Draw (pic30, x5 - 640, y5, 0)
 Pic.Draw (pic31, x5 - 1280, y5, 0)
 delay (50)
 x5 := x5 + 5
 exit when x5 = 1920 or key2 = ("13")
 end loop
 end if
 if x5 = 1920 then
 start := 0
 end if
 exit when key2 = ("13")
 end loop
 end slideshow2
 fork slideshow2
 */

%mouse + mainmethod
process mouse
    loop
	%back button
	if menu = 1 and x > 0 and x < 30 and y > 0 and y < 30 and button = 1 then
	    cls
	    menu := menu - 1
	    drawfillbox (0, 0, 640, 480, 25)
	    font1 := Font.New ("Elephant:25")
	    drawfillbox (35, 320, 625, 395, 7)
	    drawfillbox (40, 325, 620, 390, 4)
	    Font.Draw ("Kampf Gruppe Steiner Education", 50, 350, font1, 0)
	    drawfillbox (128, 98, 532, 302, 7)
	    pic1 := Pic.Scale (pic1, 400, 200)
	    Pic.Draw (pic1, 130, 100, 0)
	    pic3 := Pic.Scale (pic3, 50, 50)
	    if change1 = 0 then
		Pic.Draw (pic3, 550, 250, 0)
	    elsif change1 = 1 then
		Pic.Draw (pic3, 550, 250, 0)
		Draw.ThickLine (550, 250, 600, 300, 2, 7)
	    end if
	    drawfillbox (130, 80, 530, 95, 8)
	    locate (20, 30)
	    colorback (8)
	    put "Enter Your Name: " ..
	    get name : *
	    cls
	    menu := menu + 1
	    drawfillbox (0, 0, 640, 480, 25)
	    font1 := Font.New ("Elephant:25")
	    drawfillbox (35, 320, 625, 395, 7)
	    drawfillbox (40, 325, 620, 390, 4)
	    Font.Draw ("Kampf Gruppe Steiner Education", 50, 350, font1, 0)
	    drawfillbox (128, 98, 532, 302, 7)
	    pic1 := Pic.Scale (pic1, 400, 200)
	    Pic.Draw (pic1, 130, 100, 0)
	    if change1 = 0 then
		Pic.Draw (pic3, 550, 250, 0)
	    elsif change1 = 1 then
		Pic.Draw (pic3, 550, 250, 0)
		Draw.ThickLine (550, 250, 600, 300, 2, 7)
	    end if
	    drawfillbox (130, 80, 530, 95, 8)
	    locate (20, 28)
	    colorback (8)
	    put "Choose below : Math or English"
	    drawfillbox (530, 80, 640, 95, 25)
	    drawfillbox (150, 10, 300, 60, 4)
	    drawfillbox (350, 10, 500, 60, 30)
	    font2 := Font.New ("Elephant:15")
	    Font.Draw ("Math", 200, 30, font2, 0)
	    Font.Draw ("English", 385, 30, font2, 4)
	    pic12 := Pic.Scale (pic12, 30, 30)
	    Pic.Draw (pic12, 0, 0, 0)

	    %menu math
	elsif menu = 1 and x > 150 and x < 300 and y > 10 and y < 60 and button = 1 then
	    cls
	    menu := menu + 1
	    change2 := 1
	    drawfillbox (0, 0, 640, 480, 25)
	    drawfillbox (35, 320, 625, 395, 7)
	    drawfillbox (40, 325, 620, 390, 4)
	    Font.Draw ("Kampf Gruppe Steiner Education", 50, 350, font1, 0)
	    drawfillbox (128, 98, 532, 302, 7)
	    pic4 := Pic.Scale (pic4, 400, 200)
	    Pic.Draw (pic4, 130, 100, 0)
	    if change1 = 0 then
		Pic.Draw (pic3, 550, 250, 0)
	    elsif change1 = 1 then
		Pic.Draw (pic3, 550, 250, 0)
		Draw.ThickLine (550, 250, 600, 300, 2, 7)
	    end if
	    drawfillbox (130, 80, 530, 95, 8)
	    locate (20, 18)
	    colorback (8)
	    put "Choose : Addition, Subtraction, or Multiplication"
	    drawfillbox (530, 80, 640, 95, 25)
	    drawfillbox (130, 10, 230, 60, 4)
	    pic6 := Pic.Scale (pic6, 40, 40)
	    Pic.Draw (pic6, 162, 15, 0)
	    drawfillbox (280, 10, 380, 60, 0)
	    pic7 := Pic.Scale (pic7, 40, 40)
	    Pic.Draw (pic7, 312, 15, 0)
	    drawfillbox (430, 10, 530, 60, 7)
	    pic8 := Pic.Scale (pic8, 40, 40)
	    Pic.Draw (pic8, 462, 15, 0)
	    pic12 := Pic.Scale (pic12, 30, 30)
	    Pic.Draw (pic12, 0, 0, 0)
	    delay (500)
	    %back button
	elsif menu = 2 and x > 0 and x < 30 and y > 0 and y < 30 and button = 1 then
	    cls
	    menu := menu - 1
	    drawfillbox (0, 0, 640, 480, 25)
	    font1 := Font.New ("Elephant:25")
	    drawfillbox (35, 320, 625, 395, 7)
	    drawfillbox (40, 325, 620, 390, 4)
	    Font.Draw ("Kampf Gruppe Steiner Education", 50, 350, font1, 0)
	    drawfillbox (128, 98, 532, 302, 7)
	    pic1 := Pic.Scale (pic1, 400, 200)
	    Pic.Draw (pic1, 130, 100, 0)
	    if change1 = 0 then
		Pic.Draw (pic3, 550, 250, 0)
	    elsif change1 = 1 then
		Pic.Draw (pic3, 550, 250, 0)
		Draw.ThickLine (550, 250, 600, 300, 2, 7)
	    end if
	    drawfillbox (130, 80, 530, 95, 8)
	    locate (20, 28)
	    colorback (8)
	    put "Choose below : Math or English"
	    drawfillbox (530, 80, 640, 95, 25)
	    drawfillbox (150, 10, 300, 60, 4)
	    drawfillbox (350, 10, 500, 60, 30)
	    font2 := Font.New ("Elephant:15")
	    Font.Draw ("Math", 200, 30, font2, 0)
	    Font.Draw ("English", 385, 30, font2, 4)
	    Pic.Draw (pic12, 0, 0, 0)
	    delay (500)

	    %menu english
	elsif menu = 1 and x > 350 and x < 500 and y > 10 and y < 60 and button = 1 then
	    cls
	    change2 := 2
	    menu := menu + 1
	    drawfillbox (0, 0, 640, 480, 25)
	    drawfillbox (35, 320, 625, 395, 7)
	    drawfillbox (40, 325, 620, 390, 4)
	    Font.Draw ("Kampf Gruppe Steiner Education", 50, 350, font1, 0)
	    drawfillbox (128, 98, 532, 302, 7)
	    pic5 := Pic.Scale (pic5, 400, 200)
	    Pic.Draw (pic5, 130, 100, 0)
	    if change1 = 0 then
		Pic.Draw (pic3, 550, 250, 0)
	    elsif change1 = 1 then
		Pic.Draw (pic3, 550, 250, 0)
		Draw.ThickLine (550, 250, 600, 300, 2, 7)
	    end if
	    drawfillbox (130, 10, 230, 60, 4)
	    Font.Draw ("Grammar", 137, 25, font6, 0)
	    drawfillbox (280, 10, 380, 60, 0)
	    Font.Draw ("Vocab", 303, 25, font6, 7)
	    drawfillbox (430, 10, 530, 60, 7)
	    Font.Draw ("Game", 453, 25, font6, 0)
	    pic12 := Pic.Scale (pic12, 30, 30)
	    Pic.Draw (pic12, 0, 0, 0)
	    delay (500)

	    %grammar
	elsif menu = 2 and x > 130 and x < 230 and y > 10 and y < 60 and change2 = 2 and button = 1 then
	    menu := menu + 1
	    Music.PlayFileStop
	    Music.PlayFileLoop ("Red_Army_Choir_-_The_Hunt_For_Red_October.mp3")
	    cls
	    drawfillbox (0, 0, 640, 480, 66)
	    Pic.Draw (pic14, 25, 50, 0)
	    drawfillbox (275, 50, 620, 350, 43)
	    pic3 := Pic.Scale (pic3, 30, 30)
	    Pic.Draw (pic3, 0, 0, 0)
	    change3 := 0
	    locate (5, 36)
	    colorback (43)
	    put "Welcome, Commander ", name, "!"
	    locate (6, 36)
	    put "In this campaign, you will attack multiple"
	    locate (7, 36)
	    put "grammer questions."
	    locate (8, 36)
	    put "Good luck commander, be careful!"
	    locate (11, 36)
	    put "Instructions: "
	    locate (12, 36)
	    put "Add the appropriate punctuation"
	    locate (13, 36)
	    put "to complete the sentences."
	    locate (15, 36)
	    put "Press any key to continue..."
	    drawfillbox (620, 50, 640, 350, 66)
	    var key : string (1)
	    locate (16, 36)
	    getch (key)
	    cls
	    menu := menu + 1
	    score := 0
	    retries := 0
	    again1 := 0
	    again2 := 0
	    again3 := 0
	    again4 := 0
	    again5 := 0
	    again6 := 0
	    %drawfillbox (0, 0, 640, 480, 66)
	    %drawfillbox (0, 0, 640, 480, 66)
	    %drawfillbox (20, 45, 230, 355, 7)

	    %TIME FOR ENGLISH!
	    for questions : 1 .. 3
		cls
		randint (e, 1, 6)
		drawfillbox (0, 0, 640, 480, 66)
		drawfillbox (35, 320, 625, 395, 7)
		drawfillbox (40, 325, 620, 390, 4)
		drawfillbox (530, 0, 640, 110, 4)
		drawfillbox (540, 0, 640, 100, 8)
		pic3 := Pic.Scale (pic3, 30, 30)
		Pic.Draw (pic3, 0, 0, 0)
		%Font.Draw
		if questions = 1 then
		    Font.Draw ("Question 1", 225, 350, font1, 0)
		elsif questions = 2 then
		    Font.Draw ("Question 2", 225, 350, font1, 0)
		elsif questions = 3 then
		    Font.Draw ("Question 3", 225, 350, font1, 0)
		end if

		%creating new question
		loop
		    norepeat := 0
		    if e = 1 and again1 = 0 then
			Font.Draw ("The dog barked loudly _", 100, 250, font2, 7)
			drawfillbox (215, 20, 425, 230, 7)
			Pic.Draw (pic17, 220, 25, 0)
			again1 := 1
			norepeat := 1
		    elsif e = 2 and again2 = 0 then
			Font.Draw ("The party was awesome _", 100, 250, font2, 7)
			drawfillbox (215, 20, 425, 230, 7)
			Pic.Draw (pic18, 220, 25, 0)
			again2 := 1
			norepeat := 1
		    elsif e = 3 and again3 = 0 then
			Font.Draw ("Are you feeling better _", 100, 250, font2, 7)
			drawfillbox (215, 20, 425, 230, 7)
			Pic.Draw (pic19, 220, 25, 0)
			again3 := 1
			norepeat := 1
		    elsif e = 4 and again4 = 0 then
			Font.Draw ("The sky is blue _", 100, 250, font2, 7)
			drawfillbox (215, 20, 425, 230, 7)
			Pic.Draw (pic20, 220, 25, 0)
			again4 := 1
			norepeat := 1
		    elsif e = 5 and again5 = 0 then
			Font.Draw ("The game is so fun _", 100, 250, font2, 7)
			drawfillbox (215, 20, 425, 230, 7)
			Pic.Draw (pic21, 220, 25, 0)
			again5 := 1
			norepeat := 1
		    elsif e = 6 and again6 = 0 then
			Font.Draw ("When does school start tomorrow _", 100, 250, font2, 7)
			drawfillbox (215, 20, 425, 230, 7)
			Pic.Draw (pic22, 220, 25, 0)
			again6 := 1
			norepeat := 1
		    else
			randint (e, 1, 6)
		    end if
		    exit when norepeat = 1
		end loop

		%answer
		locate (20, 70)
		colorback (8)
		put "Answer: "
		locate (21, 70)
		get enganswer

		%validating answer
		loop
		    if e = 1 or e = 4 then
			if enganswer = "." then
			    score := score + 1
			    cls
			    drawfillbox (0, 0, 640, 480, 42)
			    drawfillbox (35, 320, 625, 395, 7)
			    drawfillbox (40, 325, 620, 390, 4)
			    drawfillbox (215, 95, 425, 305, 7)
			    Pic.Draw (pic13, 220, 100, 0)
			    Font.Draw ("Correct!", 230, 350, font1, 0)
			    delay (3000)
			    continue := 1
			else
			    cls
			    drawfillbox (0, 0, 640, 480, 8)
			    drawfillbox (240, 190, 400, 270, 0)
			    drawfillbox (280, 310, 360, 150, 0)
			    drawfillbox (300, 150, 340, 310, 7)
			    drawfillbox (240, 210, 400, 250, 7)
			    drawfillbox (35, 320, 625, 395, 7)
			    drawfillbox (40, 325, 620, 390, 4)
			    Font.Draw ("Incorrect...", 220, 350, font1, 0)
			    Font.Draw ("Enter c to continue or r to retry: ", 100, 115, font5, 7)
			    locate (18, 58)
			    getch (key)
			    if key = "c" or key = "C" then
				continue := 1
			    elsif key = "r" or key = "R" then
				retries := retries + 1
				continue := 2
			    end if


			end if
		    elsif e = 2 or e = 5 then
			if enganswer = "!" then
			    score := score + 1
			    cls
			    drawfillbox (0, 0, 640, 480, 42)
			    drawfillbox (35, 320, 625, 395, 7)
			    drawfillbox (40, 325, 620, 390, 4)
			    drawfillbox (215, 95, 425, 305, 7)
			    Pic.Draw (pic13, 220, 100, 0)
			    Font.Draw ("Correct!", 230, 350, font1, 0)
			    delay (3000)
			    continue := 1
			else
			    cls
			    drawfillbox (0, 0, 640, 480, 8)
			    drawfillbox (240, 190, 400, 270, 0)
			    drawfillbox (280, 310, 360, 150, 0)
			    drawfillbox (300, 150, 340, 310, 7)
			    drawfillbox (240, 210, 400, 250, 7)
			    drawfillbox (35, 320, 625, 395, 7)
			    drawfillbox (40, 325, 620, 390, 4)
			    Font.Draw ("Incorrect...", 220, 350, font1, 0)
			    Font.Draw ("Enter c to continue or r to retry: ", 100, 115, font5, 7)
			    locate (18, 58)
			    getch (key)
			    if key = "c" or key = "C" then
				continue := 1
			    elsif key = "r" or key = "R" then
				retries := retries + 1
				continue := 2
			    end if
			end if
		    elsif e = 3 or e = 6 then
			if enganswer = "?" then
			    score := score + 1
			    cls
			    drawfillbox (0, 0, 640, 480, 42)
			    drawfillbox (35, 320, 625, 395, 7)
			    drawfillbox (40, 325, 620, 390, 4)
			    drawfillbox (215, 95, 425, 305, 7)
			    Pic.Draw (pic13, 220, 100, 0)
			    Font.Draw ("Correct!", 230, 350, font1, 0)
			    delay (3000)
			    continue := 1
			else
			    cls
			    drawfillbox (0, 0, 640, 480, 8)
			    drawfillbox (240, 190, 400, 270, 0)
			    drawfillbox (280, 310, 360, 150, 0)
			    drawfillbox (300, 150, 340, 310, 7)
			    drawfillbox (240, 210, 400, 250, 7)
			    drawfillbox (35, 320, 625, 395, 7)
			    drawfillbox (40, 325, 620, 390, 4)
			    Font.Draw ("Incorrect...", 220, 350, font1, 0)
			    Font.Draw ("Enter c to continue or r to retry: ", 100, 115, font5, 7)
			    locate (18, 58)
			    getch (key)
			    if key = "c" or key = "C" then
				continue := 1
			    elsif key = "r" or key = "R" then
				retries := retries + 1
				continue := 2
			    end if
			end if
		    end if

		    exit when continue = 1

		    cls
		    drawfillbox (0, 0, 640, 480, 66)
		    drawfillbox (35, 320, 625, 395, 7)
		    drawfillbox (40, 325, 620, 390, 4)
		    drawfillbox (530, 0, 640, 110, 4)
		    drawfillbox (540, 0, 640, 100, 8)
		    pic3 := Pic.Scale (pic3, 30, 30)
		    if change3 = 0 then
			Pic.Draw (pic3, 0, 0, 0)
		    elsif change3 = 1 then
			Pic.Draw (pic3, 0, 0, 0)
			Draw.ThickLine (0, 0, 30, 30, 1, 7)
		    end if
		    %Font.Draw
		    if questions = 1 then
			Font.Draw ("Question 1", 225, 350, font1, 0)
		    elsif questions = 2 then
			Font.Draw ("Question 2", 225, 350, font1, 0)
		    elsif questions = 3 then
			Font.Draw ("Question 3", 225, 350, font1, 0)
		    end if

		    if e = 1 then
			Font.Draw ("The dog barked loudly _", 100, 250, font2, 7)
			drawfillbox (215, 20, 425, 230, 7)
			Pic.Draw (pic17, 220, 25, 0)
		    elsif e = 2 then
			Font.Draw ("The party was awesome _", 100, 250, font2, 7)
			drawfillbox (215, 20, 425, 230, 7)
			Pic.Draw (pic18, 220, 25, 0)
		    elsif e = 3 then
			Font.Draw ("Are you feeling better _", 100, 250, font2, 7)
			drawfillbox (215, 20, 425, 230, 7)
			Pic.Draw (pic19, 220, 25, 0)
		    elsif e = 4 then
			Font.Draw ("The sky is blue _", 100, 250, font2, 7)
			drawfillbox (215, 20, 425, 230, 7)
			Pic.Draw (pic20, 220, 25, 0)
		    elsif e = 5 then
			Font.Draw ("The game is so fun _", 100, 250, font2, 7)
			drawfillbox (215, 20, 425, 230, 7)
			Pic.Draw (pic21, 220, 25, 0)
		    elsif e = 6 then
			Font.Draw ("When does school start tomorrow _", 100, 250, font2, 7)
			drawfillbox (215, 20, 425, 230, 7)
			Pic.Draw (pic22, 220, 25, 0)
		    end if

		    locate (20, 70)
		    colorback (8)
		    put "Answer: "
		    locate (21, 70)
		    get enganswer
		end loop
	    end for

	    cls
	    %score
	    drawfillbox (0, 0, 640, 480, 77)
	    drawfillbox (100, 80, 540, 380, 7)
	    drawfillbox (110, 90, 530, 370, 4)
	    pic3 := Pic.Scale (pic3, 30, 30)
	    if change3 = 0 then
		Pic.Draw (pic3, 0, 0, 0)
	    elsif change3 = 1 then
		Pic.Draw (pic3, 0, 0, 0)
		Draw.ThickLine (0, 0, 30, 30, 1, 7)
	    end if
	    if score = 1 then
		Font.Draw ("Score: 1/3", 250, 310, font2, 0)
		Font.Draw ("Nice Try!", 250, 220, font2, 0)
	    elsif score = 2 then
		Font.Draw ("Score: 2/3", 250, 310, font2, 0)
		Font.Draw ("Good Job!", 250, 220, font2, 0)
	    elsif score = 3 then
		Font.Draw ("Score: 3/3", 250, 310, font2, 0)
		Font.Draw ("Excellent!", 250, 220, font2, 0)
	    elsif score = 0 then
		Font.Draw ("Score: 0", 250, 300, font2, 0)
		Font.Draw ("Better luck next time!", 250, 220, font2, 0)
	    end if
	    Font.Draw ("Retries: ", 250, 270, font2, 0)
	    Font.Draw (intstr (retries), 340, 270, font2, 0)
	    continue := 0
	    drawfillbox (250, 160, 350, 200, 10)
	    Font.Draw ("Play Again", 260, 175, font3, 7)
	    drawfillbox (250, 100, 350, 140, 42)
	    Font.Draw ("Main Menu", 260, 115, font3, 7)
	    menu := menu + 1
	    delay (500)

	    %vocab
	elsif menu = 2 and x > 280 and x < 380 and y > 10 and y < 60 and change2 = 2 and button = 1 then
	    menu := menu + 1
	    Music.PlayFileStop
	    Music.PlayFileLoop ("Red_Army_Choir_-_The_Hunt_For_Red_October.mp3")
	    cls
	    drawfillbox (0, 0, 640, 480, 141)
	    Pic.Draw (pic14, 25, 50, 0)
	    drawfillbox (275, 50, 620, 350, 166)
	    pic3 := Pic.Scale (pic3, 30, 30)
	    Pic.Draw (pic3, 0, 0, 0)
	    change3 := 0
	    locate (5, 36)
	    colorback (166)
	    put "Welcome, Commander ", name, "!"
	    locate (6, 36)
	    put "In this campaign, you will attack multiple"
	    locate (7, 36)
	    put "vocabulary questions."
	    locate (8, 36)
	    put "Good luck commander, prepare your defenses!"
	    locate (11, 36)
	    put "Instructions: "
	    locate (12, 36)
	    put "Write the appropriate word that"
	    locate (13, 36)
	    put "corresponds with each image."
	    locate (15, 36)
	    put "Press any key to continue..."
	    drawfillbox (620, 50, 640, 350, 141)
	    var key : string (1)
	    locate (16, 36)
	    getch (key)
	    cls
	    menu := menu + 1
	    score := 0
	    retries := 0
	    again1 := 0
	    again2 := 0
	    again3 := 0
	    again4 := 0
	    again5 := 0
	    again6 := 0

	    %TIME FOR ENGLISH!!!!
	    for questions : 1 .. 3
		cls
		randint (e, 1, 6)
		drawfillbox (0, 0, 640, 480, 141)
		drawfillbox (35, 320, 625, 395, 7)
		drawfillbox (40, 325, 620, 390, 4)
		drawfillbox (530, 0, 640, 110, 4)
		drawfillbox (540, 0, 640, 100, 8)
		pic3 := Pic.Scale (pic3, 30, 30)
		if change3 = 0 then
		    Pic.Draw (pic3, 0, 0, 0)
		elsif change3 = 1 then
		    Pic.Draw (pic3, 0, 0, 0)
		    Draw.ThickLine (0, 0, 30, 30, 1, 7)
		end if
		Font.Draw ("What am I?", 325, 250, font5, 0)
		%Font.Draw
		if questions = 1 then
		    Font.Draw ("Question 1", 225, 350, font1, 0)
		elsif questions = 2 then
		    Font.Draw ("Question 2", 225, 350, font1, 0)
		elsif questions = 3 then
		    Font.Draw ("Question 3", 225, 350, font1, 0)
		end if

		loop     %pics 23 - 28
		    norepeat := 0
		    if e = 1 and again1 = 0 then     %car
			Pic.Draw (pic23, 50, 50, 0)
			again1 := 1
			norepeat := 1
		    elsif e = 2 and again2 = 0 then     %tank
			Pic.Draw (pic24, 50, 50, 0)
			again2 := 1
			norepeat := 1
		    elsif e = 3 and again3 = 0 then     %fish
			Pic.Draw (pic25, 50, 50, 0)
			again3 := 1
			norepeat := 1
		    elsif e = 4 and again4 = 0 then     %bird
			Pic.Draw (pic26, 50, 50, 0)
			again4 := 1
			norepeat := 1
		    elsif e = 5 and again5 = 0 then     %window
			Pic.Draw (pic27, 50, 50, 0)
			again5 := 1
			norepeat := 1
		    elsif e = 6 and again6 = 0 then     %house
			Pic.Draw (pic28, 50, 50, 0)
			again6 := 1
			norepeat := 1
		    else
			randint (e, 1, 6)
		    end if
		    exit when norepeat = 1
		end loop

		%answer
		locate (20, 70)
		colorback (8)
		put "Answer: "
		locate (21, 70)
		get enganswer

		%validating answer
		loop
		    if e = 1 then
			if enganswer = "car" then
			    score := score + 1
			    cls
			    drawfillbox (0, 0, 640, 480, 42)
			    drawfillbox (35, 320, 625, 395, 7)
			    drawfillbox (40, 325, 620, 390, 4)
			    drawfillbox (215, 95, 425, 305, 7)
			    Pic.Draw (pic13, 220, 100, 0)
			    Font.Draw ("Correct!", 230, 350, font1, 0)
			    delay (3000)
			    continue := 1
			else
			    cls
			    drawfillbox (0, 0, 640, 480, 8)
			    drawfillbox (240, 190, 400, 270, 0)
			    drawfillbox (280, 310, 360, 150, 0)
			    drawfillbox (300, 150, 340, 310, 7)
			    drawfillbox (240, 210, 400, 250, 7)
			    drawfillbox (35, 320, 625, 395, 7)
			    drawfillbox (40, 325, 620, 390, 4)
			    Font.Draw ("Incorrect...", 220, 350, font1, 0)
			    Font.Draw ("Enter c to continue or r to retry: ", 100, 115, font5, 7)
			    locate (18, 58)
			    getch (key)
			    if key = "c" or key = "C" then
				continue := 1
			    elsif key = "r" or key = "R" then
				retries := retries + 1
				continue := 2
			    end if
			end if
		    elsif e = 2 then
			if enganswer = "tank" then
			    score := score + 1
			    cls
			    drawfillbox (0, 0, 640, 480, 42)
			    drawfillbox (35, 320, 625, 395, 7)
			    drawfillbox (40, 325, 620, 390, 4)
			    drawfillbox (215, 95, 425, 305, 7)
			    Pic.Draw (pic13, 220, 100, 0)
			    Font.Draw ("Correct!", 230, 350, font1, 0)
			    delay (3000)
			    continue := 1
			else
			    cls
			    drawfillbox (0, 0, 640, 480, 8)
			    drawfillbox (240, 190, 400, 270, 0)
			    drawfillbox (280, 310, 360, 150, 0)
			    drawfillbox (300, 150, 340, 310, 7)
			    drawfillbox (240, 210, 400, 250, 7)
			    drawfillbox (35, 320, 625, 395, 7)
			    drawfillbox (40, 325, 620, 390, 4)
			    Font.Draw ("Incorrect...", 220, 350, font1, 0)
			    Font.Draw ("Enter c to continue or r to retry: ", 100, 115, font5, 7)
			    locate (18, 58)
			    getch (key)
			    if key = "c" or key = "C" then
				continue := 1
			    elsif key = "r" or key = "R" then
				retries := retries + 1
				continue := 2
			    end if
			end if
		    elsif e = 3 then
			if enganswer = "fish" then
			    score := score + 1
			    cls
			    drawfillbox (0, 0, 640, 480, 42)
			    drawfillbox (35, 320, 625, 395, 7)
			    drawfillbox (40, 325, 620, 390, 4)
			    drawfillbox (215, 95, 425, 305, 7)
			    Pic.Draw (pic13, 220, 100, 0)
			    Font.Draw ("Correct!", 230, 350, font1, 0)
			    delay (3000)
			    continue := 1
			else
			    cls
			    drawfillbox (0, 0, 640, 480, 8)
			    drawfillbox (240, 190, 400, 270, 0)
			    drawfillbox (280, 310, 360, 150, 0)
			    drawfillbox (300, 150, 340, 310, 7)
			    drawfillbox (240, 210, 400, 250, 7)
			    drawfillbox (35, 320, 625, 395, 7)
			    drawfillbox (40, 325, 620, 390, 4)
			    Font.Draw ("Incorrect...", 220, 350, font1, 0)
			    Font.Draw ("Enter c to continue or r to retry: ", 100, 115, font5, 7)
			    locate (18, 58)
			    getch (key)
			    if key = "c" or key = "C" then
				continue := 1
			    elsif key = "r" or key = "R" then
				retries := retries + 1
				continue := 2
			    end if
			end if
		    elsif e = 4 then
			if enganswer = "bird" then
			    score := score + 1
			    cls
			    drawfillbox (0, 0, 640, 480, 42)
			    drawfillbox (35, 320, 625, 395, 7)
			    drawfillbox (40, 325, 620, 390, 4)
			    drawfillbox (215, 95, 425, 305, 7)
			    Pic.Draw (pic13, 220, 100, 0)
			    Font.Draw ("Correct!", 230, 350, font1, 0)
			    delay (3000)
			    continue := 1
			else
			    cls
			    drawfillbox (0, 0, 640, 480, 8)
			    drawfillbox (240, 190, 400, 270, 0)
			    drawfillbox (280, 310, 360, 150, 0)
			    drawfillbox (300, 150, 340, 310, 7)
			    drawfillbox (240, 210, 400, 250, 7)
			    drawfillbox (35, 320, 625, 395, 7)
			    drawfillbox (40, 325, 620, 390, 4)
			    Font.Draw ("Incorrect...", 220, 350, font1, 0)
			    Font.Draw ("Enter c to continue or r to retry: ", 100, 115, font5, 7)
			    locate (18, 58)
			    getch (key)
			    if key = "c" or key = "C" then
				continue := 1
			    elsif key = "r" or key = "R" then
				retries := retries + 1
				continue := 2
			    end if
			end if
		    elsif e = 5 then
			if enganswer = "window" then
			    score := score + 1
			    cls
			    drawfillbox (0, 0, 640, 480, 42)
			    drawfillbox (35, 320, 625, 395, 7)
			    drawfillbox (40, 325, 620, 390, 4)
			    drawfillbox (215, 95, 425, 305, 7)
			    Pic.Draw (pic13, 220, 100, 0)
			    Font.Draw ("Correct!", 230, 350, font1, 0)
			    delay (3000)
			    continue := 1
			else
			    cls
			    drawfillbox (0, 0, 640, 480, 8)
			    drawfillbox (240, 190, 400, 270, 0)
			    drawfillbox (280, 310, 360, 150, 0)
			    drawfillbox (300, 150, 340, 310, 7)
			    drawfillbox (240, 210, 400, 250, 7)
			    drawfillbox (35, 320, 625, 395, 7)
			    drawfillbox (40, 325, 620, 390, 4)
			    Font.Draw ("Incorrect...", 220, 350, font1, 0)
			    Font.Draw ("Enter c to continue or r to retry: ", 100, 115, font5, 7)
			    locate (18, 58)
			    getch (key)
			    if key = "c" or key = "C" then
				continue := 1
			    elsif key = "r" or key = "R" then
				retries := retries + 1
				continue := 2
			    end if
			end if
		    elsif e = 6 then
			if enganswer = "house" then
			    score := score + 1
			    cls
			    drawfillbox (0, 0, 640, 480, 42)
			    drawfillbox (35, 320, 625, 395, 7)
			    drawfillbox (40, 325, 620, 390, 4)
			    drawfillbox (215, 95, 425, 305, 7)
			    Pic.Draw (pic13, 220, 100, 0)
			    Font.Draw ("Correct!", 230, 350, font1, 0)
			    delay (3000)
			    continue := 1
			else
			    cls
			    drawfillbox (0, 0, 640, 480, 8)
			    drawfillbox (240, 190, 400, 270, 0)
			    drawfillbox (280, 310, 360, 150, 0)
			    drawfillbox (300, 150, 340, 310, 7)
			    drawfillbox (240, 210, 400, 250, 7)
			    drawfillbox (35, 320, 625, 395, 7)
			    drawfillbox (40, 325, 620, 390, 4)
			    Font.Draw ("Incorrect...", 220, 350, font1, 0)
			    Font.Draw ("Enter c to continue or r to retry: ", 100, 115, font5, 7)
			    locate (18, 58)
			    getch (key)
			    if key = "c" or key = "C" then
				continue := 1
			    elsif key = "r" or key = "R" then
				retries := retries + 1
				continue := 2
			    end if
			end if
		    end if

		    exit when continue = 1

		    cls
		    drawfillbox (0, 0, 640, 480, 141)
		    drawfillbox (35, 320, 625, 395, 7)
		    drawfillbox (40, 325, 620, 390, 4)
		    drawfillbox (530, 0, 640, 110, 4)
		    drawfillbox (540, 0, 640, 100, 8)
		    pic3 := Pic.Scale (pic3, 30, 30)
		    if change3 = 0 then
			Pic.Draw (pic3, 0, 0, 0)
		    elsif change3 = 1 then
			Pic.Draw (pic3, 0, 0, 0)
			Draw.ThickLine (0, 0, 30, 30, 1, 7)
		    end if
		    Font.Draw ("What am I?", 325, 250, font5, 0)
		    %Font.Draw
		    if questions = 1 then
			Font.Draw ("Question 1", 225, 350, font1, 0)
		    elsif questions = 2 then
			Font.Draw ("Question 2", 225, 350, font1, 0)
		    elsif questions = 3 then
			Font.Draw ("Question 3", 225, 350, font1, 0)
		    end if

		    if e = 1 then
			Pic.Draw (pic23, 50, 50, 0)
		    elsif e = 2 then
			Pic.Draw (pic24, 50, 50, 0)
		    elsif e = 3 then
			Pic.Draw (pic25, 50, 50, 0)
		    elsif e = 4 then
			Pic.Draw (pic26, 50, 50, 0)
		    elsif e = 5 then
			Pic.Draw (pic27, 50, 50, 0)
		    elsif e = 6 then
			Pic.Draw (pic28, 50, 50, 0)
		    end if

		    locate (20, 70)
		    colorback (8)
		    put "Answer: "
		    locate (21, 70)
		    get enganswer
		end loop
	    end for

	    %score
	    cls
	    drawfillbox (0, 0, 640, 480, 77)
	    drawfillbox (100, 80, 540, 380, 7)
	    drawfillbox (110, 90, 530, 370, 4)
	    pic3 := Pic.Scale (pic3, 30, 30)
	    if change3 = 0 then
		Pic.Draw (pic3, 0, 0, 0)
	    elsif change3 = 1 then
		Pic.Draw (pic3, 0, 0, 0)
		Draw.ThickLine (0, 0, 30, 30, 1, 7)
	    end if
	    if score = 1 then
		Font.Draw ("Score: 1/3", 250, 310, font2, 0)
		Font.Draw ("Nice Try!", 250, 220, font2, 0)
	    elsif score = 2 then
		Font.Draw ("Score: 2/3", 250, 310, font2, 0)
		Font.Draw ("Good Job!", 250, 220, font2, 0)
	    elsif score = 3 then
		Font.Draw ("Score: 3/3", 250, 310, font2, 0)
		Font.Draw ("Excellent!", 250, 220, font2, 0)
	    elsif score = 0 then
		Font.Draw ("Score: 0", 250, 300, font2, 0)
		Font.Draw ("Better luck next time!", 250, 220, font2, 0)
	    end if
	    Font.Draw ("Retries: ", 250, 270, font2, 0)
	    Font.Draw (intstr (retries), 340, 270, font2, 0)
	    continue := 0
	    drawfillbox (250, 160, 350, 200, 10)
	    Font.Draw ("Play Again", 260, 175, font3, 7)
	    drawfillbox (250, 100, 350, 140, 42)
	    Font.Draw ("Main Menu", 260, 115, font3, 7)
	    menu := menu + 1

	    %game
	elsif menu = 2 and x > 430 and x < 530 and y > 10 and y < 60 and change2 = 2 and button = 1 then
	    cls
	    menu := 10
	    Music.PlayFileStop
	    Music.PlayFileLoop ("Red_Army_Choir_-_The_Hunt_For_Red_October.mp3")
	    drawfillbox (0, 0, 640, 480, 0)
	    drawfillbox (0, 355, 50, 405, 4)
	    drawfillbox (0, 305, 50, 355, 43)
	    drawfillbox (0, 255, 50, 305, 9)
	    drawfillbox (0, 205, 50, 255, 8)
	    drawfilloval (25, 230, 8, 8, 7)
	    drawfillbox (0, 155, 50, 205, 8)
	    drawfillbox (10, 165, 40, 195, 7)
	    drawfillbox (0, 105, 50, 155, 14)
	    Font.Draw ("C", 20, 115, font2, 7)
	    pic3 := Pic.Scale (pic3, 30, 30)
	    Pic.Draw (pic3, 30, 0, 0)
	    change4 := 0
	    pic12 := Pic.Scale (pic12, 30, 30)
	    Pic.Draw (pic12, 0, 0, 0)

	    %back button
	elsif menu = 10 and x > 0 and x < 30 and y > 0 and y < 30 and button = 1 then
	    cls
	    change2 := 2
	    menu := 2
	    pic3 := Pic.Scale (pic3, 50, 50)
	    Music.PlayFileStop
	    Music.PlayFileLoop ("Company of Heroes 2 - Western Front Armies Theme.mp3")
	    drawfillbox (0, 0, 640, 480, 25)
	    drawfillbox (35, 320, 625, 395, 7)
	    drawfillbox (40, 325, 620, 390, 4)
	    Font.Draw ("Kampf Gruppe Steiner Education", 50, 350, font1, 0)
	    drawfillbox (128, 98, 532, 302, 7)
	    pic5 := Pic.Scale (pic5, 400, 200)
	    Pic.Draw (pic5, 130, 100, 0)
	    Pic.Draw (pic3, 550, 250, 0)
	    change1 := 0
	    drawfillbox (130, 10, 230, 60, 4)
	    Font.Draw ("Grammar", 137, 25, font6, 0)
	    drawfillbox (280, 10, 380, 60, 0)
	    Font.Draw ("Vocab", 303, 25, font6, 7)
	    drawfillbox (430, 10, 530, 60, 7)
	    Font.Draw ("Game", 453, 25, font6, 0)
	    pic12 := Pic.Scale (pic12, 30, 30)
	    Pic.Draw (pic12, 0, 0, 0)
	    delay (500)

	    %addition
	elsif menu = 2 and x > 130 and x < 230 and y > 10 and y < 60 and change2 = 1 and button = 1 then
	    menu := menu + 1
	    cls
	    Music.PlayFileStop
	    Music.PlayFileLoop ("Red_Army_Choir_-_The_Hunt_For_Red_October.mp3")
	    drawfillbox (0, 0, 640, 480, 66)
	    drawfillbox (20, 45, 230, 355, 7)
	    pic9 := Pic.Scale (pic9, 200, 300)
	    Pic.Draw (pic9, 25, 50, 0)
	    %Pic.Draw (pic12, 0, 0, 0)
	    drawfillbox (275, 50, 620, 350, 43)
	    pic3 := Pic.Scale (pic3, 30, 30)
	    Pic.Draw (pic3, 0, 0, 0)
	    change3 := 0
	    locate (5, 36)
	    colorback (43)
	    put "Welcome, Commander ", name, "!"
	    locate (6, 36)
	    put "In this campaign, you will attack multiple"
	    locate (7, 36)
	    put "addition questions."
	    locate (8, 36)
	    put "Good luck commander, success adds up!"
	    locate (11, 36)
	    put "Instructions: "
	    locate (12, 36)
	    put "Determine the sum"
	    locate (13, 36)
	    put "of the left column + the right column."
	    locate (15, 36)
	    put "Press any key to continue..."
	    drawfillbox (620, 50, 640, 350, 66)
	    var key : string (1)
	    locate (16, 36)
	    getch (key)
	    cls
	    menu := menu + 1
	    drawfillbox (0, 0, 640, 480, 66)
	    drawfillbox (35, 320, 625, 395, 7)
	    drawfillbox (40, 325, 620, 390, 4)
	    pic3 := Pic.Scale (pic3, 30, 30)
	    Pic.Draw (pic3, 30, 0, 0)
	    Pic.Draw (pic12, 0, 0, 0)
	    score := 0
	    retries := 0

	    %ITS TIME FOR MATH
	    for questions : 1 .. 3
		cls
		drawfillbox (0, 0, 640, 480, 66)
		drawfillbox (35, 320, 625, 395, 7)
		drawfillbox (40, 325, 620, 390, 4)
		drawfillbox (120, 0, 250, 315, 43)
		drawfillbox (370, 0, 500, 315, 43)
		Draw.ThickLine (120, 0, 120, 315, 2, 7)
		Draw.ThickLine (250, 0, 250, 315, 2, 7)
		Draw.ThickLine (370, 0, 370, 315, 2, 7)
		Draw.ThickLine (500, 0, 500, 315, 2, 7)
		drawfillbox (270, 195, 350, 215, 0)
		drawfillbox (300, 170, 320, 240, 0)
		drawfillbox (270, 200, 350, 210, 7)
		drawfillbox (305, 170, 315, 240, 7)
		drawfillbox (530, 0, 640, 110, 4)
		drawfillbox (540, 0, 640, 100, 8)
		pic3 := Pic.Scale (pic3, 30, 30)
		if change3 = 0 then
		    Pic.Draw (pic3, 0, 0, 0)
		elsif change3 = 1 then
		    Pic.Draw (pic3, 0, 0, 0)
		    Draw.ThickLine (0, 0, 30, 30, 1, 7)
		end if
		Font.Draw (" =  ? ", 525, 200, font4, 7)

		randint (a, 1, 10)     %first num
		randint (b, 1, 10)     %second num
		randint (c, 1, 3)     %third num
		randint (d, 32, 42)     %color

		if questions = 1 then
		    Font.Draw ("Question 1", 225, 350, font1, 0)
		elsif questions = 2 then
		    Font.Draw ("Question 2", 225, 350, font1, 0)
		elsif questions = 3 then
		    Font.Draw ("Question 3", 225, 350, font1, 0)
		end if
		y2 := 250
		x2 := 150
		y3 := 250
		x3 := 400

		if a = 1 then
		    aG := 1
		    aG2 := 0
		elsif a = 3 then
		    aG := 2
		    aG2 := 1
		elsif a = 5 then
		    aG := 3
		    aG2 := 2
		elsif a = 7 then
		    aG := 4
		    aG2 := 3
		elsif a = 9 then
		    aG := 5
		    aG2 := 4
		elsif a = 2 then
		    aG := 1
		    aG2 := 1
		elsif a = 4 then
		    aG := 2
		    aG2 := 2
		elsif a = 6 then
		    aG := 3
		    aG2 := 3
		elsif a = 8 then
		    aG := 4
		    aG2 := 4
		elsif a = 10 then
		    aG := 5
		    aG2 := 5
		end if

		if b = 1 then
		    bG := 1
		    bG2 := 0
		elsif b = 3 then
		    bG := 2
		    bG2 := 1
		elsif b = 5 then
		    bG := 3
		    bG2 := 2
		elsif b = 7 then
		    bG := 4
		    bG2 := 3
		elsif b = 9 then
		    bG := 5
		    bG2 := 4
		elsif b = 2 then
		    bG := 1
		    bG2 := 1
		elsif b = 4 then
		    bG := 2
		    bG2 := 2
		elsif b = 6 then
		    bG := 3
		    bG2 := 3
		elsif b = 8 then
		    bG := 4
		    bG2 := 4
		elsif b = 10 then
		    bG := 5
		    bG2 := 5
		end if


		for count : 1 .. aG
		    if c = 1 then
			drawfilloval (x2, y2, 20, 20, d)
			y2 := y2 - 50
		    elsif c = 2 then
			drawfillstar (x2, y2, x2 + 40, y2 + 40, d)
			y2 := y2 - 50
		    elsif c = 3 then
			drawfillbox (x2, y2, x2 + 40, y2 + 40, d)
			y2 := y2 - 50
		    end if
		end for
		x2 := x2 + 50
		y2 := 250
		if aG2 > 0 then
		    for count : 1 .. aG2
			if c = 1 then
			    drawfilloval (x2, y2, 20, 20, d)
			    y2 := y2 - 50
			elsif c = 2 then
			    drawfillstar (x2, y2, x2 + 40, y2 + 40, d)
			    y2 := y2 - 50
			elsif c = 3 then
			    drawfillbox (x2, y2, x2 + 40, y2 + 40, d)
			    y2 := y2 - 50
			end if
		    end for
		end if

		%next column

		for count : 1 .. bG
		    if c = 1 then
			drawfilloval (x3, y3, 20, 20, d)
			y3 := y3 - 50
		    elsif c = 2 then
			drawfillstar (x3, y3, x3 + 40, y3 + 40, d)
			y3 := y3 - 50
		    elsif c = 3 then
			drawfillbox (x3, y3, x3 + 40, y3 + 40, d)
			y3 := y3 - 50
		    end if
		end for
		x3 := x3 + 50
		y3 := 250
		if bG2 > 0 then
		    for count3 : 1 .. bG2
			if c = 1 then
			    drawfilloval (x3, y3, 20, 20, d)
			    y3 := y3 - 50
			elsif c = 2 then
			    drawfillstar (x3, y3, x3 + 40, y3 + 40, d)
			    y3 := y3 - 50
			elsif c = 3 then
			    drawfillbox (x3, y3, x3 + 40, y3 + 40, d)
			    y3 := y3 - 50
			end if
		    end for
		end if
		locate (20, 70)
		colorback (8)
		put "Answer: "
		locate (21, 70)
		get mathanswer
		loop
		    continue := 0
		    if mathanswer = a + b then
			score := score + 1
			cls
			drawfillbox (0, 0, 640, 480, 42)
			drawfillbox (35, 320, 625, 395, 7)
			drawfillbox (40, 325, 620, 390, 4)
			drawfillbox (215, 95, 425, 305, 7)
			Pic.Draw (pic13, 220, 100, 0)
			Font.Draw ("Correct!", 230, 350, font1, 0)

			continue := 1
			delay (3000)
		    else
			cls
			drawfillbox (0, 0, 640, 480, 8)
			drawfillbox (240, 190, 400, 270, 0)
			drawfillbox (280, 310, 360, 150, 0)
			drawfillbox (300, 150, 340, 310, 7)
			drawfillbox (240, 210, 400, 250, 7)
			drawfillbox (35, 320, 625, 395, 7)
			drawfillbox (40, 325, 620, 390, 4)
			Font.Draw ("Incorrect...", 220, 350, font1, 0)
			Font.Draw ("Enter c to continue or r to retry: ", 100, 115, font5, 7)
			locate (18, 58)
			getch (key)
			if key = "c" or key = "C" then
			    continue := 1
			elsif key = "r" or key = "R" then
			    retries := retries + 1
			    continue := 2
			end if
		    end if

		    exit when continue = 1

		    if continue = 2 then
			cls
			drawfillbox (0, 0, 640, 480, 66)
			drawfillbox (35, 320, 625, 395, 7)
			drawfillbox (40, 325, 620, 390, 4)
			drawfillbox (120, 0, 250, 315, 43)
			drawfillbox (370, 0, 500, 315, 43)
			Draw.ThickLine (120, 0, 120, 315, 2, 7)
			Draw.ThickLine (250, 0, 250, 315, 2, 7)
			Draw.ThickLine (370, 0, 370, 315, 2, 7)
			Draw.ThickLine (500, 0, 500, 315, 2, 7)
			drawfillbox (270, 195, 350, 215, 0)
			drawfillbox (300, 170, 320, 240, 0)
			drawfillbox (270, 200, 350, 210, 7)
			drawfillbox (305, 170, 315, 240, 7)
			drawfillbox (530, 0, 640, 110, 4)
			drawfillbox (540, 0, 640, 100, 8)
			pic3 := Pic.Scale (pic3, 30, 30)
			if change3 = 0 then
			    Pic.Draw (pic3, 0, 0, 0)
			elsif change3 = 1 then
			    Pic.Draw (pic3, 0, 0, 0)
			    Draw.ThickLine (0, 0, 30, 30, 1, 7)
			end if
			Font.Draw (" =  ? ", 525, 200, font4, 7)
			if questions = 1 then
			    Font.Draw ("Question 1", 225, 350, font1, 0)
			elsif questions = 2 then
			    Font.Draw ("Question 2", 225, 350, font1, 0)
			elsif questions = 3 then
			    Font.Draw ("Question 3", 225, 350, font1, 0)
			end if
			y2 := 250
			x2 := 150
			y3 := 250
			x3 := 400
			for count : 1 .. aG
			    if c = 1 then
				drawfilloval (x2, y2, 20, 20, d)
				y2 := y2 - 50
			    elsif c = 2 then
				drawfillstar (x2, y2, x2 + 40, y2 + 40, d)
				y2 := y2 - 50
			    elsif c = 3 then
				drawfillbox (x2, y2, x2 + 40, y2 + 40, d)
				y2 := y2 - 50
			    end if
			end for
			x2 := x2 + 50
			y2 := 250
			if aG2 > 0 then
			    for count : 1 .. aG2
				if c = 1 then
				    drawfilloval (x2, y2, 20, 20, d)
				    y2 := y2 - 50
				elsif c = 2 then
				    drawfillstar (x2, y2, x2 + 40, y2 + 40, d)
				    y2 := y2 - 50
				elsif c = 3 then
				    drawfillbox (x2, y2, x2 + 40, y2 + 40, d)
				    y2 := y2 - 50
				end if
			    end for
			end if

			%next column
			%solve bug on line below

			for count : 1 .. bG
			    if c = 1 then
				drawfilloval (x3, y3, 20, 20, d)
				y3 := y3 - 50
			    elsif c = 2 then
				drawfillstar (x3, y3, x3 + 40, y3 + 40, d)
				y3 := y3 - 50
			    elsif c = 3 then
				drawfillbox (x3, y3, x3 + 40, y3 + 40, d)
				y3 := y3 - 50
			    end if
			end for
			x3 := x3 + 50
			y3 := 250
			if bG2 > 0 then
			    for count3 : 1 .. bG2
				if c = 1 then
				    drawfilloval (x3, y3, 20, 20, d)
				    y3 := y3 - 50
				elsif c = 2 then
				    drawfillstar (x3, y3, x3 + 40, y3 + 40, d)
				    y3 := y3 - 50
				elsif c = 3 then
				    drawfillbox (x3, y3, x3 + 40, y3 + 40, d)
				    y3 := y3 - 50
				end if
			    end for
			end if
			locate (20, 70)
			colorback (8)
			put "Answer: "
			locate (21, 70)
			get mathanswer
		    end if
		end loop
	    end for

	    cls
	    drawfillbox (0, 0, 640, 480, 77)
	    drawfillbox (100, 80, 540, 380, 7)
	    drawfillbox (110, 90, 530, 370, 4)
	    pic3 := Pic.Scale (pic3, 30, 30)
	    if change3 = 0 then
		Pic.Draw (pic3, 0, 0, 0)
	    elsif change3 = 1 then
		Pic.Draw (pic3, 0, 0, 0)
		Draw.ThickLine (0, 0, 30, 30, 1, 7)
	    end if
	    if score = 1 then
		Font.Draw ("Score: 1/3", 250, 310, font2, 0)
		Font.Draw ("Nice Try!", 250, 220, font2, 0)
	    elsif score = 2 then
		Font.Draw ("Score: 2/3", 250, 310, font2, 0)
		Font.Draw ("Good Job!", 250, 220, font2, 0)
	    elsif score = 3 then
		Font.Draw ("Score: 3/3", 250, 310, font2, 0)
		Font.Draw ("Excellent!", 250, 220, font2, 0)
	    elsif score = 0 then
		Font.Draw ("Score: 0", 250, 300, font2, 0)
		Font.Draw ("Better luck next time!", 250, 220, font2, 0)
	    end if
	    Font.Draw ("Retries: ", 250, 270, font2, 0)
	    Font.Draw (intstr (retries), 340, 270, font2, 0)
	    continue := 0
	    drawfillbox (250, 160, 350, 200, 10)
	    Font.Draw ("Play Again", 260, 175, font3, 7)
	    drawfillbox (250, 100, 350, 140, 42)
	    Font.Draw ("Main Menu", 260, 115, font3, 7)
	    menu := menu + 1

	    %subtraction
	elsif menu = 2 and x > 280 and x < 380 and y > 10 and y < 60 and change2 = 1 and button = 1 then
	    menu := menu + 1
	    cls
	    Music.PlayFileStop
	    Music.PlayFileLoop ("Red_Army_Choir_-_The_Hunt_For_Red_October.mp3")
	    drawfillbox (0, 0, 640, 480, 141)
	    drawfillbox (20, 45, 230, 355, 7)
	    pic10 := Pic.Scale (pic10, 200, 300)
	    Pic.Draw (pic10, 25, 50, 0)
	    %Pic.Draw (pic12, 0, 0, 0)
	    drawfillbox (275, 50, 620, 350, 166)
	    pic3 := Pic.Scale (pic3, 30, 30)
	    Pic.Draw (pic3, 0, 0, 0)
	    change3 := 0
	    locate (5, 36)
	    colorback (166)
	    put "Welcome, Commander ", name, "!"
	    locate (6, 36)
	    put "In this campaign, you will attack multiple"
	    locate (7, 36)
	    put "subtraction questions."
	    locate (8, 36)
	    put "Good luck commander, prepare your defenses!"
	    locate (11, 36)
	    put "Instructions: "
	    locate (12, 36)
	    put "Determine the difference"
	    locate (13, 36)
	    put "of the left column - the right column."
	    locate (15, 36)
	    put "Press any key to continue..."
	    drawfillbox (620, 50, 640, 350, 141)
	    var key : string (1)
	    locate (16, 36)
	    getch (key)
	    cls
	    menu := menu + 1
	    drawfillbox (0, 0, 640, 480, 141)
	    drawfillbox (35, 320, 625, 395, 7)
	    drawfillbox (40, 325, 620, 390, 4)
	    pic3 := Pic.Scale (pic3, 30, 30)
	    Pic.Draw (pic3, 30, 0, 0)
	    Pic.Draw (pic12, 0, 0, 0)
	    score := 0
	    retries := 0

	    %ITS TIME FOR MATH
	    for questions : 1 .. 3
		cls
		drawfillbox (0, 0, 640, 480, 141)
		drawfillbox (35, 320, 625, 395, 7)
		drawfillbox (40, 325, 620, 390, 4)
		drawfillbox (120, 0, 250, 315, 96)
		drawfillbox (370, 0, 500, 315, 96)
		Draw.ThickLine (120, 0, 120, 315, 2, 7)
		Draw.ThickLine (250, 0, 250, 315, 2, 7)
		Draw.ThickLine (370, 0, 370, 315, 2, 7)
		Draw.ThickLine (500, 0, 500, 315, 2, 7)
		drawfillbox (270, 195, 350, 215, 0)
		%drawfillbox (300, 170, 320, 240, 0)
		drawfillbox (270, 200, 350, 210, 7)
		%drawfillbox (305, 170, 315, 240, 7)
		drawfillbox (530, 0, 640, 110, 4)
		drawfillbox (540, 0, 640, 100, 8)
		pic3 := Pic.Scale (pic3, 30, 30)
		if change3 = 0 then
		    Pic.Draw (pic3, 0, 0, 0)
		elsif change3 = 1 then
		    Pic.Draw (pic3, 0, 0, 0)
		    Draw.ThickLine (0, 0, 30, 30, 1, 7)
		end if
		Font.Draw (" =  ? ", 525, 200, font4, 7)

		randint (a, 1, 10)     %first num
		randint (b, 1, a)     %second num
		randint (c, 1, 3)     %third num
		randint (d, 32, 42)     %color

		if questions = 1 then
		    Font.Draw ("Question 1", 225, 350, font1, 0)
		elsif questions = 2 then
		    Font.Draw ("Question 2", 225, 350, font1, 0)
		elsif questions = 3 then
		    Font.Draw ("Question 3", 225, 350, font1, 0)
		end if
		y2 := 250
		x2 := 150
		y3 := 250
		x3 := 400

		if a = 1 then
		    aG := 1
		    aG2 := 0
		elsif a = 3 then
		    aG := 2
		    aG2 := 1
		elsif a = 5 then
		    aG := 3
		    aG2 := 2
		elsif a = 7 then
		    aG := 4
		    aG2 := 3
		elsif a = 9 then
		    aG := 5
		    aG2 := 4
		elsif a = 2 then
		    aG := 1
		    aG2 := 1
		elsif a = 4 then
		    aG := 2
		    aG2 := 2
		elsif a = 6 then
		    aG := 3
		    aG2 := 3
		elsif a = 8 then
		    aG := 4
		    aG2 := 4
		elsif a = 10 then
		    aG := 5
		    aG2 := 5
		end if

		if b = 1 then
		    bG := 1
		    bG2 := 0
		elsif b = 3 then
		    bG := 2
		    bG2 := 1
		elsif b = 5 then
		    bG := 3
		    bG2 := 2
		elsif b = 7 then
		    bG := 4
		    bG2 := 3
		elsif b = 9 then
		    bG := 5
		    bG2 := 4
		elsif b = 2 then
		    bG := 1
		    bG2 := 1
		elsif b = 4 then
		    bG := 2
		    bG2 := 2
		elsif b = 6 then
		    bG := 3
		    bG2 := 3
		elsif b = 8 then
		    bG := 4
		    bG2 := 4
		elsif b = 10 then
		    bG := 5
		    bG2 := 5
		end if


		for count : 1 .. aG
		    if c = 1 then
			drawfilloval (x2, y2, 20, 20, d)
			y2 := y2 - 50
		    elsif c = 2 then
			drawfillstar (x2, y2, x2 + 40, y2 + 40, d)
			y2 := y2 - 50
		    elsif c = 3 then
			drawfillbox (x2, y2, x2 + 40, y2 + 40, d)
			y2 := y2 - 50
		    end if
		end for
		x2 := x2 + 50
		y2 := 250
		if aG2 > 0 then
		    for count : 1 .. aG2
			if c = 1 then
			    drawfilloval (x2, y2, 20, 20, d)
			    y2 := y2 - 50
			elsif c = 2 then
			    drawfillstar (x2, y2, x2 + 40, y2 + 40, d)
			    y2 := y2 - 50
			elsif c = 3 then
			    drawfillbox (x2, y2, x2 + 40, y2 + 40, d)
			    y2 := y2 - 50
			end if
		    end for
		end if

		%next column

		for count : 1 .. bG
		    if c = 1 then
			drawfilloval (x3, y3, 20, 20, d)
			y3 := y3 - 50
		    elsif c = 2 then
			drawfillstar (x3, y3, x3 + 40, y3 + 40, d)
			y3 := y3 - 50
		    elsif c = 3 then
			drawfillbox (x3, y3, x3 + 40, y3 + 40, d)
			y3 := y3 - 50
		    end if
		end for
		x3 := x3 + 50
		y3 := 250
		if bG2 > 0 then
		    for count3 : 1 .. bG2
			if c = 1 then
			    drawfilloval (x3, y3, 20, 20, d)
			    y3 := y3 - 50
			elsif c = 2 then
			    drawfillstar (x3, y3, x3 + 40, y3 + 40, d)
			    y3 := y3 - 50
			elsif c = 3 then
			    drawfillbox (x3, y3, x3 + 40, y3 + 40, d)
			    y3 := y3 - 50
			end if
		    end for
		end if
		locate (20, 70)
		colorback (8)
		put "Answer: "
		locate (21, 70)
		get mathanswer
		loop
		    continue := 0
		    if mathanswer = a - b then
			score := score + 1
			cls
			drawfillbox (0, 0, 640, 480, 42)
			drawfillbox (35, 320, 625, 395, 7)
			drawfillbox (40, 325, 620, 390, 4)
			drawfillbox (215, 95, 425, 305, 7)
			Pic.Draw (pic13, 220, 100, 0)
			Font.Draw ("Correct!", 230, 350, font1, 0)

			continue := 1
			delay (3000)
		    else
			cls
			drawfillbox (0, 0, 640, 480, 8)
			drawfillbox (240, 190, 400, 270, 0)
			drawfillbox (280, 310, 360, 150, 0)
			drawfillbox (300, 150, 340, 310, 7)
			drawfillbox (240, 210, 400, 250, 7)
			drawfillbox (35, 320, 625, 395, 7)
			drawfillbox (40, 325, 620, 390, 4)
			Font.Draw ("Incorrect...", 220, 350, font1, 0)
			Font.Draw ("Enter c to continue or r to retry: ", 100, 115, font5, 7)
			locate (18, 58)
			getch (key)
			if key = "c" or key = "C" then
			    continue := 1
			elsif key = "r" or key = "R" then
			    retries := retries + 1
			    continue := 2
			end if
		    end if

		    exit when continue = 1

		    if continue = 2 then
			cls
			drawfillbox (0, 0, 640, 480, 141)
			drawfillbox (35, 320, 625, 395, 7)
			drawfillbox (40, 325, 620, 390, 4)
			drawfillbox (120, 0, 250, 315, 96)
			drawfillbox (370, 0, 500, 315, 96)
			Draw.ThickLine (120, 0, 120, 315, 2, 7)
			Draw.ThickLine (250, 0, 250, 315, 2, 7)
			Draw.ThickLine (370, 0, 370, 315, 2, 7)
			Draw.ThickLine (500, 0, 500, 315, 2, 7)
			drawfillbox (270, 195, 350, 215, 0)
			%drawfillbox (300, 170, 320, 240, 0)
			drawfillbox (270, 200, 350, 210, 7)
			%drawfillbox (305, 170, 315, 240, 7)
			drawfillbox (530, 0, 640, 110, 4)
			drawfillbox (540, 0, 640, 100, 8)
			pic3 := Pic.Scale (pic3, 30, 30)
			if change3 = 0 then
			    Pic.Draw (pic3, 0, 0, 0)
			elsif change3 = 1 then
			    Pic.Draw (pic3, 0, 0, 0)
			    Draw.ThickLine (0, 0, 30, 30, 1, 7)
			end if
			Font.Draw (" =  ? ", 525, 200, font4, 7)
			if questions = 1 then
			    Font.Draw ("Question 1", 225, 350, font1, 0)
			elsif questions = 2 then
			    Font.Draw ("Question 2", 225, 350, font1, 0)
			elsif questions = 3 then
			    Font.Draw ("Question 3", 225, 350, font1, 0)
			end if
			y2 := 250
			x2 := 150
			y3 := 250
			x3 := 400
			for count : 1 .. aG
			    if c = 1 then
				drawfilloval (x2, y2, 20, 20, d)
				y2 := y2 - 50
			    elsif c = 2 then
				drawfillstar (x2, y2, x2 + 40, y2 + 40, d)
				y2 := y2 - 50
			    elsif c = 3 then
				drawfillbox (x2, y2, x2 + 40, y2 + 40, d)
				y2 := y2 - 50
			    end if
			end for
			x2 := x2 + 50
			y2 := 250
			if aG2 > 0 then
			    for count : 1 .. aG2
				if c = 1 then
				    drawfilloval (x2, y2, 20, 20, d)
				    y2 := y2 - 50
				elsif c = 2 then
				    drawfillstar (x2, y2, x2 + 40, y2 + 40, d)
				    y2 := y2 - 50
				elsif c = 3 then
				    drawfillbox (x2, y2, x2 + 40, y2 + 40, d)
				    y2 := y2 - 50
				end if
			    end for
			end if

			%next column

			for count : 1 .. bG
			    if c = 1 then
				drawfilloval (x3, y3, 20, 20, d)
				y3 := y3 - 50
			    elsif c = 2 then
				drawfillstar (x3, y3, x3 + 40, y3 + 40, d)
				y3 := y3 - 50
			    elsif c = 3 then
				drawfillbox (x3, y3, x3 + 40, y3 + 40, d)
				y3 := y3 - 50
			    end if
			end for
			x3 := x3 + 50
			y3 := 250
			if bG2 > 0 then
			    for count3 : 1 .. bG2
				if c = 1 then
				    drawfilloval (x3, y3, 20, 20, d)
				    y3 := y3 - 50
				elsif c = 2 then
				    drawfillstar (x3, y3, x3 + 40, y3 + 40, d)
				    y3 := y3 - 50
				elsif c = 3 then
				    drawfillbox (x3, y3, x3 + 40, y3 + 40, d)
				    y3 := y3 - 50
				end if
			    end for
			end if
			locate (20, 70)
			colorback (8)
			put "Answer: "
			locate (21, 70)
			get mathanswer
		    end if
		end loop
	    end for

	    cls
	    %score
	    drawfillbox (0, 0, 640, 480, 77)
	    drawfillbox (100, 80, 540, 380, 7)
	    drawfillbox (110, 90, 530, 370, 4)
	    pic3 := Pic.Scale (pic3, 30, 30)
	    if change3 = 0 then
		Pic.Draw (pic3, 0, 0, 0)
	    elsif change3 = 1 then
		Pic.Draw (pic3, 0, 0, 0)
		Draw.ThickLine (0, 0, 30, 30, 1, 7)
	    end if
	    if score = 1 then
		Font.Draw ("Score: 1/3", 250, 310, font2, 0)
		Font.Draw ("Nice Try!", 250, 220, font2, 0)
	    elsif score = 2 then
		Font.Draw ("Score: 2/3", 250, 310, font2, 0)
		Font.Draw ("Good Job!", 250, 220, font2, 0)
	    elsif score = 3 then
		Font.Draw ("Score: 3/3", 250, 310, font2, 0)
		Font.Draw ("Excellent!", 250, 220, font2, 0)
	    elsif score = 0 then
		Font.Draw ("Score: 0", 250, 300, font2, 0)
		Font.Draw ("Better luck next time!", 250, 220, font2, 0)
	    end if
	    Font.Draw ("Retries: ", 250, 270, font2, 0)
	    Font.Draw (intstr (retries), 340, 270, font2, 0)
	    continue := 0
	    drawfillbox (250, 160, 350, 200, 10)
	    Font.Draw ("Play Again", 260, 175, font3, 7)
	    drawfillbox (250, 100, 350, 140, 42)
	    Font.Draw ("Main Menu", 260, 115, font3, 7)
	    menu := menu + 1

	    %multiplication
	elsif menu = 2 and x > 430 and x < 530 and y > 10 and y < 60 and change2 = 1 and button = 1 then
	    menu := menu + 1
	    cls
	    Music.PlayFileStop
	    Music.PlayFileLoop ("Red_Army_Choir_-_The_Hunt_For_Red_October.mp3")
	    drawfillbox (0, 0, 640, 480, 115)
	    drawfillbox (20, 45, 230, 355, 7)
	    pic11 := Pic.Scale (pic11, 200, 300)
	    Pic.Draw (pic11, 25, 50, 0)
	    drawfillbox (275, 50, 620, 350, 8)
	    pic3 := Pic.Scale (pic3, 30, 30)
	    Pic.Draw (pic3, 0, 0, 0)
	    change3 := 0
	    locate (5, 36)
	    colorback (8)
	    put "Welcome, Commander ", name, "!"
	    locate (6, 36)
	    put "In this campaign, you will engage with"
	    locate (7, 36)
	    put "multiplication questions."
	    locate (8, 36)
	    put "Good luck commander, prepare your attack!"
	    locate (11, 36)
	    put "Instructions: "
	    locate (12, 36)
	    put "Determine the product"
	    locate (13, 36)
	    put "of the left column x the right column."
	    locate (15, 36)
	    put "Press any key to continue..."
	    drawfillbox (620, 50, 640, 350, 115)
	    var key : string (1)
	    locate (16, 36)
	    getch (key)
	    cls
	    menu := menu + 1
	    drawfillbox (0, 0, 640, 480, 115)
	    drawfillbox (35, 320, 625, 395, 7)
	    drawfillbox (40, 325, 620, 390, 4)
	    pic3 := Pic.Scale (pic3, 30, 30)
	    Pic.Draw (pic3, 30, 0, 0)
	    Pic.Draw (pic12, 0, 0, 0)
	    score := 0
	    retries := 0

	    %ITS TIME FOR MATH
	    for questions : 1 .. 3
		cls
		drawfillbox (0, 0, 640, 480, 66)
		drawfillbox (35, 320, 625, 395, 7)
		drawfillbox (40, 325, 620, 390, 4)
		drawfillbox (120, 0, 250, 315, 43)
		drawfillbox (370, 0, 500, 315, 43)
		Draw.ThickLine (120, 0, 120, 315, 2, 7)
		Draw.ThickLine (250, 0, 250, 315, 2, 7)
		Draw.ThickLine (370, 0, 370, 315, 2, 7)
		Draw.ThickLine (500, 0, 500, 315, 2, 7)
		pic8 := Pic.Scale (pic8, 70, 70)
		Pic.Draw (pic8, 270, 170, 0)
		%drawfillbox (270, 195, 350, 215, 0)
		%drawfillbox (300, 170, 320, 240, 0)
		%drawfillbox (270, 200, 350, 210, 7)
		%drawfillbox (305, 170, 315, 240, 7)
		drawfillbox (530, 0, 640, 110, 4)
		drawfillbox (540, 0, 640, 100, 8)
		pic3 := Pic.Scale (pic3, 30, 30)
		if change3 = 0 then
		    Pic.Draw (pic3, 0, 0, 0)
		elsif change3 = 1 then
		    Pic.Draw (pic3, 0, 0, 0)
		    Draw.ThickLine (0, 0, 30, 30, 1, 7)
		end if
		Font.Draw (" =  ? ", 525, 200, font4, 7)

		randint (a, 1, 10)     %first num
		randint (b, 1, 10)     %second num
		randint (c, 1, 3)     %third num
		randint (d, 32, 42)     %color

		if questions = 1 then
		    Font.Draw ("Question 1", 225, 350, font1, 0)
		elsif questions = 2 then
		    Font.Draw ("Question 2", 225, 350, font1, 0)
		elsif questions = 3 then
		    Font.Draw ("Question 3", 225, 350, font1, 0)
		end if
		y2 := 250
		x2 := 150
		y3 := 250
		x3 := 400

		if a = 1 then
		    aG := 1
		    aG2 := 0
		elsif a = 3 then
		    aG := 2
		    aG2 := 1
		elsif a = 5 then
		    aG := 3
		    aG2 := 2
		elsif a = 7 then
		    aG := 4
		    aG2 := 3
		elsif a = 9 then
		    aG := 5
		    aG2 := 4
		elsif a = 2 then
		    aG := 1
		    aG2 := 1
		elsif a = 4 then
		    aG := 2
		    aG2 := 2
		elsif a = 6 then
		    aG := 3
		    aG2 := 3
		elsif a = 8 then
		    aG := 4
		    aG2 := 4
		elsif a = 10 then
		    aG := 5
		    aG2 := 5
		end if

		if b = 1 then
		    bG := 1
		    bG2 := 0
		elsif b = 3 then
		    bG := 2
		    bG2 := 1
		elsif b = 5 then
		    bG := 3
		    bG2 := 2
		elsif b = 7 then
		    bG := 4
		    bG2 := 3
		elsif b = 9 then
		    bG := 5
		    bG2 := 4
		elsif b = 2 then
		    bG := 1
		    bG2 := 1
		elsif b = 4 then
		    bG := 2
		    bG2 := 2
		elsif b = 6 then
		    bG := 3
		    bG2 := 3
		elsif b = 8 then
		    bG := 4
		    bG2 := 4
		elsif b = 10 then
		    bG := 5
		    bG2 := 5
		end if


		for count : 1 .. aG
		    if c = 1 then
			drawfilloval (x2, y2, 20, 20, d)
			y2 := y2 - 50
		    elsif c = 2 then
			drawfillstar (x2, y2, x2 + 40, y2 + 40, d)
			y2 := y2 - 50
		    elsif c = 3 then
			drawfillbox (x2, y2, x2 + 40, y2 + 40, d)
			y2 := y2 - 50
		    end if
		end for
		x2 := x2 + 50
		y2 := 250
		if aG2 > 0 then
		    for count : 1 .. aG2
			if c = 1 then
			    drawfilloval (x2, y2, 20, 20, d)
			    y2 := y2 - 50
			elsif c = 2 then
			    drawfillstar (x2, y2, x2 + 40, y2 + 40, d)
			    y2 := y2 - 50
			elsif c = 3 then
			    drawfillbox (x2, y2, x2 + 40, y2 + 40, d)
			    y2 := y2 - 50
			end if
		    end for
		end if

		%next column

		for count : 1 .. bG
		    if c = 1 then
			drawfilloval (x3, y3, 20, 20, d)
			y3 := y3 - 50
		    elsif c = 2 then
			drawfillstar (x3, y3, x3 + 40, y3 + 40, d)
			y3 := y3 - 50
		    elsif c = 3 then
			drawfillbox (x3, y3, x3 + 40, y3 + 40, d)
			y3 := y3 - 50
		    end if
		end for
		x3 := x3 + 50
		y3 := 250
		if bG2 > 0 then
		    for count3 : 1 .. bG2
			if c = 1 then
			    drawfilloval (x3, y3, 20, 20, d)
			    y3 := y3 - 50
			elsif c = 2 then
			    drawfillstar (x3, y3, x3 + 40, y3 + 40, d)
			    y3 := y3 - 50
			elsif c = 3 then
			    drawfillbox (x3, y3, x3 + 40, y3 + 40, d)
			    y3 := y3 - 50
			end if
		    end for
		end if
		locate (20, 70)
		colorback (8)
		put "Answer: "
		locate (21, 70)
		get mathanswer
		loop
		    continue := 0
		    if mathanswer = a * b then
			score := score + 1
			cls
			drawfillbox (0, 0, 640, 480, 42)
			drawfillbox (35, 320, 625, 395, 7)
			drawfillbox (40, 325, 620, 390, 4)
			drawfillbox (215, 95, 425, 305, 7)
			Pic.Draw (pic13, 220, 100, 0)
			Font.Draw ("Correct!", 230, 350, font1, 0)

			continue := 1
			delay (3000)
		    else
			cls
			drawfillbox (0, 0, 640, 480, 8)
			drawfillbox (240, 190, 400, 270, 0)
			drawfillbox (280, 310, 360, 150, 0)
			drawfillbox (300, 150, 340, 310, 7)
			drawfillbox (240, 210, 400, 250, 7)
			drawfillbox (35, 320, 625, 395, 7)
			drawfillbox (40, 325, 620, 390, 4)
			Font.Draw ("Incorrect...", 220, 350, font1, 0)
			Font.Draw ("Enter c to continue or r to retry: ", 100, 115, font5, 7)
			locate (18, 58)
			getch (key)
			if key = "c" or key = "C" then
			    continue := 1
			elsif key = "r" or key = "R" then
			    retries := retries + 1
			    continue := 2
			end if
		    end if

		    exit when continue = 1

		    if continue = 2 then
			cls
			drawfillbox (0, 0, 640, 480, 66)
			drawfillbox (35, 320, 625, 395, 7)
			drawfillbox (40, 325, 620, 390, 4)
			drawfillbox (120, 0, 250, 315, 43)
			drawfillbox (370, 0, 500, 315, 43)
			Draw.ThickLine (120, 0, 120, 315, 2, 7)
			Draw.ThickLine (250, 0, 250, 315, 2, 7)
			Draw.ThickLine (370, 0, 370, 315, 2, 7)
			Draw.ThickLine (500, 0, 500, 315, 2, 7)
			%drawfillbox (270, 195, 350, 215, 0)
			%drawfillbox (300, 170, 320, 240, 0)
			%drawfillbox (270, 200, 350, 210, 7)
			%drawfillbox (305, 170, 315, 240, 7)
			Pic.Draw (pic8, 270, 170, 0)
			drawfillbox (530, 0, 640, 110, 4)
			drawfillbox (540, 0, 640, 100, 8)
			pic3 := Pic.Scale (pic3, 30, 30)
			if change3 = 0 then
			    Pic.Draw (pic3, 0, 0, 0)
			elsif change3 = 1 then
			    Pic.Draw (pic3, 0, 0, 0)
			    Draw.ThickLine (0, 0, 30, 30, 1, 7)
			end if
			Font.Draw (" =  ? ", 525, 200, font4, 7)
			if questions = 1 then
			    Font.Draw ("Question 1", 225, 350, font1, 0)
			elsif questions = 2 then
			    Font.Draw ("Question 2", 225, 350, font1, 0)
			elsif questions = 3 then
			    Font.Draw ("Question 3", 225, 350, font1, 0)
			end if
			y2 := 250
			x2 := 150
			y3 := 250
			x3 := 400
			for count : 1 .. aG
			    if c = 1 then
				drawfilloval (x2, y2, 20, 20, d)
				y2 := y2 - 50
			    elsif c = 2 then
				drawfillstar (x2, y2, x2 + 40, y2 + 40, d)
				y2 := y2 - 50
			    elsif c = 3 then
				drawfillbox (x2, y2, x2 + 40, y2 + 40, d)
				y2 := y2 - 50
			    end if
			end for
			x2 := x2 + 50
			y2 := 250
			if aG2 > 0 then
			    for count : 1 .. aG2
				if c = 1 then
				    drawfilloval (x2, y2, 20, 20, d)
				    y2 := y2 - 50
				elsif c = 2 then
				    drawfillstar (x2, y2, x2 + 40, y2 + 40, d)
				    y2 := y2 - 50
				elsif c = 3 then
				    drawfillbox (x2, y2, x2 + 40, y2 + 40, d)
				    y2 := y2 - 50
				end if
			    end for
			end if

			%next column

			for count : 1 .. bG
			    if c = 1 then
				drawfilloval (x3, y3, 20, 20, d)
				y3 := y3 - 50
			    elsif c = 2 then
				drawfillstar (x3, y3, x3 + 40, y3 + 40, d)
				y3 := y3 - 50
			    elsif c = 3 then
				drawfillbox (x3, y3, x3 + 40, y3 + 40, d)
				y3 := y3 - 50
			    end if
			end for
			x3 := x3 + 50
			y3 := 250
			if bG2 > 0 then
			    for count3 : 1 .. bG2
				if c = 1 then
				    drawfilloval (x3, y3, 20, 20, d)
				    y3 := y3 - 50
				elsif c = 2 then
				    drawfillstar (x3, y3, x3 + 40, y3 + 40, d)
				    y3 := y3 - 50
				elsif c = 3 then
				    drawfillbox (x3, y3, x3 + 40, y3 + 40, d)
				    y3 := y3 - 50
				end if
			    end for
			end if
			locate (20, 70)
			colorback (8)
			put "Answer: "
			locate (21, 70)
			get mathanswer
		    end if
		end loop
	    end for

	    cls
	    %score
	    drawfillbox (0, 0, 640, 480, 77)
	    drawfillbox (100, 80, 540, 380, 7)
	    drawfillbox (110, 90, 530, 370, 4)
	    pic3 := Pic.Scale (pic3, 30, 30)
	    if change3 = 0 then
		Pic.Draw (pic3, 0, 0, 0)
	    elsif change3 = 1 then
		Pic.Draw (pic3, 0, 0, 0)
		Draw.ThickLine (0, 0, 30, 30, 1, 7)
	    end if
	    if score = 1 then
		Font.Draw ("Score: 1/3", 250, 310, font2, 0)
		Font.Draw ("Nice Try!", 250, 220, font2, 0)
	    elsif score = 2 then
		Font.Draw ("Score: 2/3", 250, 310, font2, 0)
		Font.Draw ("Good Job!", 250, 220, font2, 0)
	    elsif score = 3 then
		Font.Draw ("Score: 3/3", 250, 310, font2, 0)
		Font.Draw ("Excellent!", 250, 220, font2, 0)
	    elsif score = 0 then
		Font.Draw ("Score: 0", 250, 300, font2, 0)
		Font.Draw ("Better luck next time!", 250, 220, font2, 0)
	    end if
	    Font.Draw ("Retries: ", 250, 270, font2, 0)
	    Font.Draw (intstr (retries), 340, 270, font2, 0)
	    continue := 0
	    drawfillbox (250, 160, 350, 200, 10)
	    Font.Draw ("Play Again", 260, 175, font3, 7)
	    drawfillbox (250, 100, 350, 140, 42)
	    Font.Draw ("Main Menu", 260, 115, font3, 7)
	    menu := menu + 1
	    delay (500)

	    %back button
	elsif menu = 3 and x > 0 and x < 30 and y > 0 and y < 30 and button = 1 then
	    Music.PlayFileStop
	    Music.PlayFileLoop ("Company of Heroes 2 - Western Front Armies Theme.mp3")
	    menu := menu - 1
	    cls
	    drawfillbox (0, 0, 640, 480, 25)
	    drawfillbox (35, 320, 625, 395, 7)
	    drawfillbox (40, 325, 620, 390, 4)
	    Font.Draw ("Kampf Gruppe Steiner Education", 50, 350, font1, 0)
	    drawfillbox (128, 98, 532, 302, 7)
	    pic4 := Pic.Scale (pic4, 400, 200)
	    Pic.Draw (pic4, 130, 100, 0)
	    if change1 = 0 then
		pic3 := Pic.Scale (pic3, 50, 50)
		Pic.Draw (pic3, 550, 250, 0)
	    elsif change1 = 1 then
		Pic.Draw (pic3, 550, 250, 0)
		Draw.ThickLine (550, 250, 600, 300, 2, 7)
	    end if
	    drawfillbox (130, 80, 530, 95, 8)
	    locate (20, 18)
	    colorback (8)
	    put "Choose : Addition, Subtraction, or Multiplication"
	    drawfillbox (530, 80, 640, 95, 25)
	    drawfillbox (130, 10, 230, 60, 4)
	    pic6 := Pic.Scale (pic6, 40, 40)
	    Pic.Draw (pic6, 162, 15, 0)
	    drawfillbox (280, 10, 380, 60, 0)
	    pic7 := Pic.Scale (pic7, 40, 40)
	    Pic.Draw (pic7, 312, 15, 0)
	    drawfillbox (430, 10, 530, 60, 7)
	    pic8 := Pic.Scale (pic8, 40, 40)
	    Pic.Draw (pic8, 462, 15, 0)
	    pic12 := Pic.Scale (pic12, 30, 30)
	    Pic.Draw (pic12, 0, 0, 0)
	    delay (500)

	    %replay function math
	elsif x > 250 and x < 350 and y > 160 and y < 200 and button = 1 and change2 = 1 and menu = 5 then
	    cls
	    continue := 1
	    menu := 2
	    Music.PlayFileStop
	    Music.PlayFileLoop ("Company of Heroes 2 - Western Front Armies Theme.mp3")
	    drawfillbox (0, 0, 640, 480, 25)
	    drawfillbox (35, 320, 625, 395, 7)
	    drawfillbox (40, 325, 620, 390, 4)
	    Font.Draw ("Kampf Gruppe Steiner Education", 50, 350, font1, 0)
	    drawfillbox (128, 98, 532, 302, 7)
	    pic3 := Pic.Scale (pic3, 50, 50)
	    Pic.Draw (pic3, 550, 250, 0)
	    pic4 := Pic.Scale (pic4, 400, 200)
	    Pic.Draw (pic4, 130, 100, 0)
	    Pic.Draw (pic3, 550, 250, 0)
	    change1 := 0
	    drawfillbox (130, 80, 530, 95, 8)
	    locate (20, 18)
	    colorback (8)
	    put "Choose : Addition, Subtraction, or Multiplication"
	    drawfillbox (530, 80, 640, 95, 25)
	    drawfillbox (130, 10, 230, 60, 4)
	    pic6 := Pic.Scale (pic6, 40, 40)
	    Pic.Draw (pic6, 162, 15, 0)
	    drawfillbox (280, 10, 380, 60, 0)
	    pic7 := Pic.Scale (pic7, 40, 40)
	    Pic.Draw (pic7, 312, 15, 0)
	    drawfillbox (430, 10, 530, 60, 7)
	    pic8 := Pic.Scale (pic8, 40, 40)
	    Pic.Draw (pic8, 462, 15, 0)
	    pic12 := Pic.Scale (pic12, 30, 30)
	    Pic.Draw (pic12, 0, 0, 0)

	    %main menu function
	elsif x > 250 and x < 350 and y > 100 and y < 140 and button = 1 and menu = 5 then
	    cls
	    continue := 1
	    change2 := 0
	    menu := 1
	    Music.PlayFileStop
	    Music.PlayFileLoop ("Company of Heroes 2 - Western Front Armies Theme.mp3")
	    drawfillbox (0, 0, 640, 480, 25)
	    font1 := Font.New ("Elephant:25")
	    drawfillbox (35, 320, 625, 395, 7)
	    drawfillbox (40, 325, 620, 390, 4)
	    Font.Draw ("Kampf Gruppe Steiner Education", 50, 350, font1, 0)
	    drawfillbox (128, 98, 532, 302, 7)
	    pic1 := Pic.Scale (pic1, 400, 200)
	    Pic.Draw (pic1, 130, 100, 0)
	    pic3 := Pic.Scale (pic3, 50, 50)
	    Pic.Draw (pic3, 550, 250, 0)
	    change1 := 0
	    drawfillbox (130, 80, 530, 95, 8)
	    locate (20, 28)
	    colorback (8)
	    put "Choose below : Math or English"
	    drawfillbox (530, 80, 640, 95, 25)
	    drawfillbox (150, 10, 300, 60, 4)
	    drawfillbox (350, 10, 500, 60, 30)
	    font2 := Font.New ("Elephant:15")
	    Font.Draw ("Math", 200, 30, font2, 0)
	    Font.Draw ("English", 385, 30, font2, 4)
	    pic12 := Pic.Scale (pic12, 30, 30)
	    Pic.Draw (pic12, 0, 0, 0)

	    %replay function english
	elsif x > 250 and x < 350 and y > 160 and y < 200 and button = 1 and change2 = 2 and menu = 5 then
	    cls
	    Music.PlayFileStop
	    Music.PlayFileLoop ("Company of Heroes 2 - Western Front Armies Theme.mp3")
	    change2 := 2
	    menu := 2
	    drawfillbox (0, 0, 640, 480, 25)
	    drawfillbox (35, 320, 625, 395, 7)
	    drawfillbox (40, 325, 620, 390, 4)
	    Font.Draw ("Kampf Gruppe Steiner Education", 50, 350, font1, 0)
	    drawfillbox (128, 98, 532, 302, 7)
	    pic5 := Pic.Scale (pic5, 400, 200)
	    Pic.Draw (pic5, 130, 100, 0)
	    pic3 := Pic.Scale (pic3, 50, 50)
	    Pic.Draw (pic3, 550, 250, 0)
	    change1 := 0
	    drawfillbox (130, 10, 230, 60, 4)
	    Font.Draw ("Grammar", 137, 25, font6, 0)
	    drawfillbox (280, 10, 380, 60, 0)
	    Font.Draw ("Vocab", 303, 25, font6, 7)
	    drawfillbox (430, 10, 530, 60, 7)
	    Font.Draw ("Game", 453, 25, font6, 0)
	    pic12 := Pic.Scale (pic12, 30, 30)
	    Pic.Draw (pic12, 0, 0, 0)
	    delay (500)
	end if
    end loop
end mouse
fork mouse

% menu0
%Music.PlayFileLoop("coh2.mp3")
var next : int
next := 0
loop
    if x4 = 1280 then
	cls
	drawfillbox (0, 0, 640, 480, 25)
	font1 := Font.New ("Elephant:25")
	drawfillbox (35, 320, 625, 395, 7)
	drawfillbox (40, 325, 620, 390, 4)
	Font.Draw ("Kampf Gruppe Steiner Education", 50, 350, font1, 0)
	drawfillbox (128, 98, 532, 302, 7)
	pic1 := Pic.Scale (pic1, 400, 200)
	Pic.Draw (pic1, 130, 100, 0)
	pic3 := Pic.Scale (pic3, 50, 50)
	if change1 = 0 then
	    Pic.Draw (pic3, 550, 250, 0)
	elsif change1 = 1 then
	    Pic.Draw (pic3, 550, 250, 0)
	    Draw.ThickLine (550, 250, 600, 300, 2, 7)
	end if
	drawfillbox (130, 80, 530, 95, 8)
	locate (20, 30)
	colorback (8)
	put "Enter Your Name: " ..
	get name : *
	cls
	menu := menu + 1
	drawfillbox (0, 0, 640, 480, 25)
	font1 := Font.New ("Elephant:25")
	drawfillbox (35, 320, 625, 395, 7)
	drawfillbox (40, 325, 620, 390, 4)
	Font.Draw ("Kampf Gruppe Steiner Education", 50, 350, font1, 0)
	drawfillbox (128, 98, 532, 302, 7)
	pic1 := Pic.Scale (pic1, 400, 200)
	Pic.Draw (pic1, 130, 100, 0)
	if change1 = 0 then
	    Pic.Draw (pic3, 550, 250, 0)
	elsif change1 = 1 then
	    Pic.Draw (pic3, 550, 250, 0)
	    Draw.ThickLine (550, 250, 600, 300, 2, 7)
	end if
	drawfillbox (130, 80, 530, 95, 8)
	locate (20, 28)
	put "Choose below : Math or English"
	drawfillbox (530, 80, 640, 95, 25)
	drawfillbox (150, 10, 300, 60, 4)
	drawfillbox (350, 10, 500, 60, 30)
	font2 := Font.New ("Elephant:15")
	Font.Draw ("Math", 200, 30, font2, 0)
	Font.Draw ("English", 385, 30, font2, 4)
	pic12 := Pic.Scale (pic12, 30, 30)
	Pic.Draw (pic12, 0, 0, 0)
	next := 1
    end if
    exit when next = 1
end loop
