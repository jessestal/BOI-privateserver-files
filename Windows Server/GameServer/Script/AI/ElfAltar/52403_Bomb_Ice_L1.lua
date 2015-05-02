----------------------------------------------------
--		Copyright：PERFECT WORLD
--		Modified：2012/08
--		Author：向珈辰
--		TaskName：【-精灵祭坛：M1 冰爆炸弹-】
--		TaskID：52403_Bomb_Ice_L1.lua
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		if nIndex == 1 then--开场执行
			PosX = AI:GetPosX()
			PosY = AI:GetPosY()
			a = AI:GetArray(1)
			if a == 1 then
				AI:SetArray(1,2)
			end	
			if a == 2 then
				AI:SetArray(1,3)
				AI:SummonMonsterByPos(52474,PosX,PosY,0)
			end	
			if a == 3 then
				AI:AddSkill(2386,1)
				AI:UseSkill(2386,1)
				AI:SetArray(1,4)
				AI:Exit()
			end									
			
		end--开场执行结束

	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then --
--					AI:ChangeFaction(11)
--					AI:SetAIState(7)
					AI:SetTimer(1,1500,3)
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

