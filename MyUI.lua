local baka = baka
local total = 0
local jannis = 0 
local tim = 0



local function onUpdate(self, elapsed)
	t2 = random(10,100)
	tz = random(0,100)
	t3 = random(100,200)
	t4 = random(30, 350)
	t1 = random(15,300)
	z = t4
	if t1 < 20 then
		z = z + t1 + t3
	end
	if tz < 50 then
		z = z + t2
	end
	if tz > 50 then
		z = z + t3
	end
	timertime = random(130,960)
		
	total = total + elapsed
	if total >= timertime then
		print("timertime: " .. timertime)
		--print("Baka")
		natschotimer()
		--DEFAULT_CHAT_FRAME:AddMessage("ping!")
		total = 0
	end
end

function natschotimer()
	natschozahl = random(1,6)
	selten = random(4,25)
	
	who = random(0,100)
	if who<50 then
		--SendChatMessage(natschozahl .. " Natschos gehen an den Lucker!", "WHISPER", nil, "Tréè")
		jannis = jannis + natschozahl
		SendChatMessage(natschozahl .. " Natschos gehen an den Baka! Du hast bereits " .. jannis .. " natchos fressen müssen", "PARTY")
		print("who: " .. who)
	end
	if who>50 then
		tim = tim + natschozahl
		--SendChatMessage(natschozahl ..  " Natschos gehen an den Baum","WHISPER", nil, "Tréè")
		SendChatMessage(natschozahl .. " Natschos gehen an den Lucker! Du hast bereits " .. tim .. " natchos fressen müssen" , "PARTY")
		print("who: " .. who)
	end
	if who==50 then
		tim = tim + natschozahl
		jannis = jannis + natschozahl
		--SendChatMessage("Natschoregen für alle!!!!" .. selten .. " Natschos für Jeden!!!","WHISPER", nil, "Tréè")
		SendChatMessage(natschozahl .. " Natschos gehen an Alle!!!!!", "PARTY")
		print("who: " .. who)
	end
	--OnUpdate()
	--local f = CreateFrame("frame")
	--f:SetScript("OnUpdate", onUpdate)
	--wait(timertime)
end
--natschotimer()
local f = CreateFrame("frame")
f:SetScript("OnUpdate", onUpdate)
SendChatMessage("Natschotimer Vrsion: 1337Hax000barrakaullambalucker wurde gestartet...", "PARTY")

