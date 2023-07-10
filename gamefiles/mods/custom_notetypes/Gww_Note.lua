--<[PIZZAGLAGGLE LUA, PLEASE CREDIT IN CREDITS]>--
additionValue = 15 --it's a variable so if you need to change this in a event or in a modchart, you can use it
timer = getGlobalFromScript("WIUTimer", "timer") --if you renamed WIUTimer, change the first variable to the new name of the file
function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Gww_Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'Gwgw/notes/Gww_Note');
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', -20);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', 1);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
			end
		end
	end
end

local shootAnims = {"LEFTshoot", "DOWNshoot", "UPshoot", "RIGHTshoot"}
function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Gww_Note' then
		playSound('rice'); --I will chuck rice into your face.
		timer = timer + 15
        playAnim("dad", shootAnims[direction + 1], false, false)
        playAnim("boyfriend", "hey" true, false)
		setProperty('boyfriend.specialAnim', true)
		setProperty('dad.specialAnim', true)
		cameraShake('camGame', 0.01, 0.2)
    end
end

function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'Gww_Note' then
		playAnim("boyfriend", "hurt" true, false)
        if flashingLights = true then
            cameraFlash("hud", "FF0000", 1.0, true)
        end
	end
end
--<[CREDIT AS "PizzaGlaggle's Scripts", AND SET LINK TO "https://github.com/SketchEggYT"]>--