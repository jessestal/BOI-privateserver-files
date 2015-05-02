----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012/08
--		Author:???
--		TaskName:?-????:????-?
--		TaskID:52465_IceSoul_Lv0.lua
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		if nIndex == 1 then--????
			a = AI:GetArray(1)
			Switch = AI:GetEctypeVarShort(mapid,45)
			if a == 1 then
				if Switch >= 4 then
					PosX = AI:GetPosX()
					PosY = AI:GetPosY()
					AI:ScreenText("Nature Fairy: Attack!!!!",1)
					AI:SummonMonsterByPos(52469,PosX,PosY,1)
					AI:Exit()
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
			if a == 0 then --???,exit
				AI:SetTimer(1,500,999)
				AI:SetArray(1,1)
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


	end

