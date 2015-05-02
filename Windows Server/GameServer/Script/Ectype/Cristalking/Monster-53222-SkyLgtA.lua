----------------------------------------------------
--		Copyright：PERFECT WORLD
--		Modified：2012-8
--		Author：胡斌涛
--		TaskName：【-天空雷电风暴-】
--		TaskID：
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--计时器1--start
			a=AI:GetArray(1)
			if a == 1 then
				AI:SetArray(2,2)
			end
		end--计时器1--------------------end
		
		if nIndex == 2 then--计时器2--start
			a=AI:GetArray(2)
			if a == 2 then
				AI:AddSkill(2360,1)
				AI:UseSkill(2360,1)
			end
		end--计时器2--------------------end
		
		if nIndex == 3 then--计时器2--start
			a=AI:GetArray(3)
			if a == 1 then
				AI:DelTimer(1)
				AI:DelTimer(2)
				AI:DelTimer(3)
				AI:Exit()
			end
		end--计时器2--------------------end
		
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

			-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then
				AI:SetTimer(1,5000,1)
				AI:SetArray(1,1)
			end
			a = AI:GetArray(2)
			if a == 0 then
				AI:SetTimer(2,1000,99)
				AI:SetArray(2,1)
			end
			a = AI:GetArray(3)
			if a == 0 then
				AI:SetTimer(3,20000,1)
				AI:SetArray(3,1)
			end
			
			----------------------------------------------------------normal end

	end--functionEvent_ThinkingEND
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		AI:DelTimer(1)
		AI:DelTimer(2)
		AI:DelTimer(3)

	end
