----------------------------------------------------
--		Copyright：PERFECT WORLD
--		Modified：2012/08
--		Author：向珈辰
--		TaskName：【-精灵祭坛：门口蝴蝶1型-】
--		TaskID：52394_Butter_L1.lua
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		if nIndex == 1 then--开场执行
			a = AI:GetArray(1)	
			if a == 1 then
				PosX = AI:GetPosX()
				PosY = AI:GetPosY()
				AI:SummonMonsterByPos(52421,PosX,PosY,1)
				AI:Exit()
				AI:SetArray(1,2)
			end			
		end--开场执行结束

	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		local Switch = AI:GetEctypeVarShort(mapid,0)
		hpn = AI:GetHP()
		hpmax = AI:GetHPMax()
		hppct = hpn/hpmax*100	
		-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then
				if hppct < 60 then					
					if Switch < 3 then
						AI:ChangeFaction(11)
						AI:SetTimer(1,1000,1)
						AI:SetArray(1,1)
					end
				end
			end


			----------------------------------------------------------normal end
		

--		test=AI:GetEctypeVarShort(mapid,99)
--		if test = 1 then--副本AI测试
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

