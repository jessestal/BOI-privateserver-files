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
				AI:Say("Come closer, my little darling!")
				AI:SummonMonsterByPos(52462,PosX,PosY,1)	
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
				AI:SetTimer(2,4000,999)
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
		
		AI:DelTimer(2)
		
	end

