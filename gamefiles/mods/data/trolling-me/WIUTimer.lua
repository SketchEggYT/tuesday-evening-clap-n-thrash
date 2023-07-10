--<[YOU ALREADY KNOW, REMOVE AFTERWARDS (please)]>--
timer = 30 --obviously the global timer, which is to be used everywhere
funnyBPM = 0
subtractionValue = math.floor(funnyBPM / 3) --NO DECIMALS ALLOWED (round up with ceiling if needed/wanted)

function onUpdate()
    funnyBPM = curBpm
    if curBeat % 1 == 0 then--change the 0 for a beat or smth offset, divide by 60 for it to be BPSeconds
        timer = (timer - subtractionValue)
    end
end