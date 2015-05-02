----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012/08
--		Author:???
--		TaskName:?-????:M1 ????Lv0-?
--		TaskID:52425_Fire_L2.lua
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		if nIndex == 1 then--????
			PosX = AI:GetPosX()
			PosY = AI:GetPosY()
			a = AI:GetArray(1)
			if a == 1 then
				AI:SetArray(1,2)
			end	
			if a == 2 then
				AI:SetArray(1,3)
				AI:SummonMonsterByPos(52473,PosX,PosY,0)
			end	
			if a == 3 then
				AI:AddSkill(2381,1)
				AI:UseSkill(2381,1)
				AI:SetArray(1,4)
				AI:Exit()
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
			if a == 0 then --
--					AI:ChangeFaction(11)
--					AI:SetAIState(7)
					AI:SetTimer(1,1500,3)
--					AI:Say("GUID:02695000000")
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
				
				AI:DelTimer(1)

	end

