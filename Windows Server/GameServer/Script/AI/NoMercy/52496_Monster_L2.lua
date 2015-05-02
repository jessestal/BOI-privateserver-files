----------------------------------------------------
--		Copyright：PERFECT WORLD
--		Modified：2012/11
--		Author：向珈辰
--		TaskName：【-绝情海峡：守御巨石Lv1-】
--		TaskID：52496_Monster_L2.lua
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		if nIndex == 1 then--开场执行
			a = AI:GetArray(1)
			if a == 1 then
				AI:UpdateSeekPath(1)
				AI:SetArray(1,2)
			end			
			
		end--开场执行结束
		
		if nIndex == 2 then--开场执行

				t = AI:GetTargetDistance()
				if t < 5 then
					AI:AddSkill(2523,2)
					AI:UseSkill(2523,2)
				end

			
		end--开场执行结束		

	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then
					AI:ChangeFaction(11)
					AI:SetTimer(1,1000,1)
					AI:SetTimer(2,1000,999)
					AI:SetArray(1,1)
			end


			----------------------------------------------------------normal end
		

--		test=AI:GetEctypeVarShort(mapid,99)
--		if test = 1 then--副本AI测试
--			AI:Say("hppct="..tostring(hppct))
--			AI:SetEctypeVarShort(mapid,99,0)
--		end

	end--functionEvent_ThinkingEND
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		if (( PosX == 119) and ( PosY == 129 )) then	
			AI:Exit()
		end
		
	end
	
	
	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		
		if nIndex == 1 then			
			AI:AddSeekPos(mapid,122,160)
			AI:AddSeekPos(mapid,117,155)
			AI:AddSeekPos(mapid,106,156)
			AI:AddSeekPos(mapid,99,149)
			AI:AddSeekPos(mapid,101,147)
			AI:AddSeekPos(mapid,119,129)
		end
		
	end	
	
	
	
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
			
			AI:DelTimer(1)
			AI:DelTimer(2)

	end

