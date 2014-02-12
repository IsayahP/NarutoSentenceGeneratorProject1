----------------------------------------------
--Isayah Phillips Random Sentence Generator Naruto Themed built 02/1/2014
--My Ninja Way!!
---------------------------------------------


--Seed random function ----> a different sequence each time if there is a long enough time between invocations.
math.randomseed(os.time())

local myImage = display.newImage( "EternalMangekyouSharigan.png" )
	myImage:translate( 320, 280 )

    

--Created a array for Naruto Names.


 local backgroundMusic = audio.loadStream("Revenge.mp3",)
 local backgroundMusic = 
 local backgroundMusicChannel = audio.play(backgroundMusic)


local names={
	"Naruto",
	"Sasuke",
	"Sakura",
	"Kakashi",
	"Pain",
	"Kisame",
	"Kabuto",
	"Itachi",
	"Madara",
	"Orochimaru",


}


--Created a array for English Articles.
local Articles={
	"a",
	"the",
}

--Created a array for Adverbs.
local Adverbs={
	"happily",
	"quickly",
	"powerfully",
	"almost",
	"blindly",
	"barely",
	"cautiously",
	"brutally",
	"boldly",
	"flawlessly",
}

--Created a array for Verbs both Past/Present.
local Verbs={
	"possessing",        
	"flashing",         
	"battling",       
	"choking",            
	"destroyed",        
	"fearing",           
	"rejecting",         
	"burning",            
	"adapted",            
	"punching",       

}

--Created a array of adjectives.
local Adjectives={
	"small",
	"big",
	"fast",
	"swift",
	"strong",
	"calm",
	"kind",
	"slow",
	"old",
	"shallow",
}



--Starting Y coordinate highest line of text. The Y coordinate its the total height in pixels minus the (total) of block of text/2. The x coordinate centers the text so divided the width of the phone by 2.
local y= 388
local x= 320
local textheight= 60

local 
--Display Sentence tapping feature with a variable y coordinate to reposition the text used. 
--every time the screen is tapped, then the text is re-positioned/re-shuffled (Sara)
function screenTap ()
	local myImage = display.newImage( "EternalMangekyouSharigan.png" )
	myImage:translate( 320, 320 )
	


	local myTextObject1 = display.newText ( Articles[math.random(1,2)], x, y, "Comic Sans MS", textheight)
	myTextObject1:setFillColor( 0, 0, 225)
	local myTextObject2 = display.newText ( Adjectives[math.random(1,10)], x, y+textheight, "Comic Sans MS", textheight)
	myTextObject2:setFillColor( 0, 255, 0)
	local myTextObject3 = display.newText ( names[math.random(1,10)], x, y+2*textheight, "Comic Sans MS", textheight)
	myTextObject3:setFillColor( 244,32, 12)
	local myTextObject4 = display.newText (  "is", x, y+3*textheight, "Comic Sans MS", textheight)
	myTextObject4:setFillColor( 0, 0, 125)
	local myTextObject5 = display.newText ( Adverbs[math.random(1,10)], x, y+4*textheight, "Comic Sans MS", textheight)
	myTextObject5:setFillColor( 1, 1, 0)
	local myTextObject6 = display.newText (  Verbs[math.random(1,10)], x, y+5*textheight, "Comic Sans MS", textheight)
	myTextObject6:setFillColor( 1, 0, 0)

--Everytime I click the screen the sharigan sound effect activates on channel 2 and only plays after each click. (Sara)
	local sharigan = audio.loadStream("Mangekyou_Sharingan.mp3")
	local shariganChannel = audio.play(sharigan, {channel=2, loops=0})





--Update the Y coordinate for next display text call.
-- for the next time the program is run (Sara)

end

function removemyTextObject ()
	display.remove(myTextObject1)

end	


----I want the app to display a new sentence chunk each time I screentap.



display.currentStage:addEventListener( "tap",  screenTap)


---(sara)textfield option and then removed it with a function that span 9 sentences.
