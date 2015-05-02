----------------------------------------------------
--		Copyright：PERFECT WORLD
--		Modified：2012/08
--		Author：向珈辰
--		TaskName：【-精灵祭坛：M2 从左到右冰炸弹型-】
--		TaskID：52414_Light_DtoU.lua
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
		
		if nIndex == 2 then --通常执行
			a = AI:GetArray(2)
			if a == 1 then
				AI:GetRandTarget()
				D = AI:GetTargetDistance()
				if D < 3 then
					AI:AddSkill(2377,2)
					AI:UseSkill(2377,2)
				end
			end
		end

	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()


		-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then 
				AI:SetTimer(1,1000,1)
				AI:SetArray(1,1)
			end
			a = AI:GetArray(2)
			if a == 0 then
				AI:SetTimer(2,1000,999)
				AI:SetArray(2,1)
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

		if (( PosX == PosX1) and ( PosY == PosY1 )) then	
			AI:Exit()
		end
		
	end
	
	
	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		PosX1 = AI:GetPosX()
		PosY = AI:GetPosY()
		PosY1 = PosY - 100		
		if nIndex == 1 then			
			AI:AddSeekPos(mapid,PosX1,PosY1)
		end
		
	end	
	
	
	
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
			
			AI:DelTimer(1)
			AI:DelTimer(2)

	end

