----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012/08
--		Author:???
--		TaskName:?-????:?????-?
--		TaskID:
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		if nIndex == 1 then--????
			a = AI:GetArray(1)
			if a == 1 then
				rand = AI:GetRand(100)--(????0~100???)
				if rand < 20 then
					AI:Say("We come from the Moon Palace. Despite popular beliefs, it's not cold.")
				elseif rand < 40 then
					AI:Say("The Goddess of Moon is so beautiful! But only few people have seen her.")
				elseif rand < 60 then
					AI:Say("I've taken a lot of effort to obtain these mooncakes. I'll not let you take them away from me!")
				elseif rand < 80 then
					AI:Say("On the Mid-Autumn Day, the Jaden Rabbit will come to send gifts. I will show my best at then!")	
				end
			end	
		
			
		end--??????

	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		hpn = AI:GetHP()
		hpmax = AI:GetHPMax()
		hppct = hpn/hpmax*100
		-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then --?????,????,????
				AI:SetTimer(1,5000,90)
				AI:SetArray(1,1)
				AI:ScreenText("Disruptive Rabbit: it's a pretty wonderful trip to Earth this time! Haha!",2)
			end

			----------------------------------------------------------normal end
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
	end
	
	
	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
	end

--		test=AI:GetEctypeVarShort(mapid,99)
--		if test = 1 then--??AI??
--			AI:Say("hppct="..tostring(hppct))
--			AI:SetEctypeVarShort(mapid,99,0)
--		end

	end--functionEvent_ThinkingEND
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		AI:ScreenText("Disruptive Rabbit: huh, I'll come back to revenge. Wait until the Mid-Autumn Day night!",2)

	end

