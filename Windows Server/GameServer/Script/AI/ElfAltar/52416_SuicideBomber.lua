----------------------------------------------------
--		Copyright：PERFECT WORLD
--		Modified：2012/08
--		Author：向珈辰
--		TaskName：【-精灵祭坛：M3 自杀飞蛾Lv1-】
--		TaskID：52416_SuicideBomber.lua
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		if nIndex == 1 then --寻径start
			a = AI:GetArray(1)
			if a == 1 then
				AI:UpdateSeekPath(1)
				AI:SetArray(1,2)
			end
		end -- 寻径end

		if nIndex == 2 then --到达start
			a = AI:GetArray(2)
			if a == 0 then
				AI:AddSkill(2334,1)
				AI:UseSkill(2334,1)
				AI:SetArray(2,1)
			end
			if a == 1 then
				AI:Exit()
				AI:SetArray(2,2)
			end
		end -- 到达end		
		

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
					AI:SetTimer(1,1000,1)
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

		if (( PosX == PosX1) and ( PosY == PosY1 )) then	
			AI:SetTimer(2,500,2)
		end
		
	end
	
	
	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		if nIndex == 1 then
			PlayerID = AI:GetRandTarget()
   		PosX1 = AI:GetPlayerX( PlayerID )
			PosY1 = AI:GetPlayerY( PlayerID )
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

