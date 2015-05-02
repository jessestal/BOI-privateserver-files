----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012/08
--		Author:???
--		TaskName:?-????:????1?-?
--		TaskID:52422_Butter_L3.lua
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()



			

	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		hpn = AI:GetHP()
		hpmax = AI:GetHPMax()
		hppct = hpn/hpmax*100
		-----------------------------------------------------------normal start


			----------------------------------------------------------normal end
		

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
		
		Switch = AI:GetEctypeVarShort(mapid,0)
--			print (Switch)
		Speak = AI:GetEctypeVarShort(mapid,1)
		if Switch < 3 then
			PosX = AI:GetPosX()
			PosY = AI:GetPosY()
			AI:SummonMonsterByPos(52423,PosX,PosY,1)
			if Speak == 18 then
				AI:ScreenText("Ethereal Butterfly's Ghost: And so, with the wind, the souls return to the light.",1)
			end
		end

	end

