----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012/08
--		Author:???
--		TaskName:?-????:M2 ??2?-?
--		TaskID:52408_Tank_L2.lua
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		if nIndex == 1 then--????
			AI:AddSkill(2379,2)
			AI:UseSkill(2379,2)			
			AI:ScreenText("Shrine Repairman: Battle!",1)						
			
		end--??????

	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		hpn = AI:GetHP()
		hpmax = AI:GetHPMax()
		hppct = hpn/hpmax*100
		t = AI:HaveAttackTarget()
		a = AI:GetArray(1)
		if a == 0 then
--			AI:GetRandTarget()	
			if t == false then
				AI:SetAIState(7)
			else
				AI:SetAIState(0)
			end		
		end		
		-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then --
				if hppct < 70 then
					AI:SetTimer(1,1000,1)
					AI:SetArray(1,1)
				end
			end
			if a == 1 then --
				if hppct < 30 then
					AI:SetTimer(1,1000,1)
					AI:SetArray(1,2)
				end
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

