----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012/08
--		Author:???
--		TaskName:?-????:M1 ??1?-?
--		TaskID:52395_Tank_L1.lua
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		if nIndex == 1 then--????
			a = AI:GetArray(1)
			if a == 1 then
				AI:PlayAction("specialidle",0,0)				
				AI:ScreenText("Elven Repairer: Gear",1)
				AI:SetArray(1,2)
			end	
			if a == 2 then
				AI:ChangeFaction(1)				
				AI:AddSkill(2379,1)
				AI:UseSkill(2379,1)
				AI:ScreenText("Elven Repairer: Battle",1)
				AI:SetAIState(0)
				AI:SetArray(1,3)
			end	
			if a == 4 then
				AI:PlayAction("specialidle",0,0)				
				AI:ScreenText("Elven Repairer: Gear",1)
				AI:SetArray(1,5)
			end	
			if a == 5 then
				AI:ChangeFaction(1)				
				AI:AddSkill(2379,1)
				AI:UseSkill(2379,1)
				AI:ScreenText("Elven Repairer: Battle",1)
				AI:SetAIState(0)
				AI:SetArray(1,6)
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
				if hppct < 80 then
					AI:ChangeFaction(11)
					AI:SetAIState(7)
					AI:SetTimer(1,4000,2)
					AI:SetArray(1,1)
				end
			end
			if a == 3 then --
				if hppct < 30 then
					AI:ChangeFaction(11)
					AI:SetAIState(7)
					AI:SetTimer(1,4000,2)
					AI:SetArray(1,4)
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

