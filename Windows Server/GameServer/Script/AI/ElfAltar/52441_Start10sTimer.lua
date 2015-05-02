----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012/08
--		Author:???
--		TaskName:?-????:????1?-?  ??????,??15?
--		TaskID:52441_Start10sTimer.lua
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--????
			a = AI:GetArray(1)
			if a == 1 then
--			 	AI:ScreenText("GUID:02705000000",2)
			 	AI:SetArray(1,2)
				AI:SelfMurder()
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
		if a == 0 then
			AI:SetTimer(1,15000,1)
			AI:SetArray(1,1)
		end

			----------------------------------------------------------normal end

	end--functionEvent_ThinkingEND
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		AI:DelTimer(1)

	end

