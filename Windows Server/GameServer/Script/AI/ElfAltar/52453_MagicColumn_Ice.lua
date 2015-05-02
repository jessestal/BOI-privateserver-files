----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012/08
--		Author:???
--		TaskName:?-????:???-?
--		TaskID:52417_BomberMother.lua
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		if nIndex == 2 then ---normal start
			a = AI:GetArray(2)
			if a == 1 then
				PosX = AI:GetPosX()
				PosY = AI:GetPosY()
				AI:Say("Ice attack!")
				AI:SummonMonsterByPos(52455,PosX,PosY,1)	
			end
		end					

	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		hpn = AI:GetHP()
		hpmax = AI:GetHPMax()
		hppct = hpn/hpmax*100
		-----------------------------------------------------------normal start
			a = AI:GetArray(2)
			if a == 0 then
				AI:SetTimer(2,8000,999)
				AI:SetArray(2,1)
			end

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
		
		turn = AI:GetEctypeVarShort(mapid,54)
		AI:DelTimer(2)
		if turn >= 1 then
			AI:SetEctypeVarShort(mapid,54,turn-1)
		end
		
		
	end

