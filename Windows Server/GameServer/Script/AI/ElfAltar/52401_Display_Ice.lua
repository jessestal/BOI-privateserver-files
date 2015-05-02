----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012/08
--		Author:???
--		TaskName:?-????:??BOSS???-?
--		TaskID:
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		if nIndex == 1 then--????
			a = AI:GetArray(1)
			if a == 1 then
				AI:ScreenText("Lantia Wildblaze: I will set you afire if you come near my altar!",1)
				AI:PlayAction("attack1",0,0)
				AI:SetArray(1,2)
			end
			
			if a == 2 then
				AI:ScreenText("Valis Hailstorm: I will rain ice on you!",1)
				AI:PlayAction("specialidle",0,0)
				AI:SetArray(1,3)
			end
			
			if a == 3 then
				AI:ScreenText("Sylvani Oakleaf: I will give you the chance now to leave now before I call upon Aturia to kill you!",1)
				AI:UpdateSeekPath(1)
				AI:SetAIState(0)
				AI:SetArray(1,4)	
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
			if a == 0 then --?????,????,????
				AI:SetTimer(1,4000,3)
				AI:ChangeFaction(11)
				AI:SetAIState(7)
				AI:SetArray(1,1)
			end

			----------------------------------------------------------normal end
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		a = AI:GetArray(2)
		if (( PosX == 167) and ( PosY == 240 )) then	
			if a == 0 then
				AI:Say("Tralala-a-a, I'm home!")
				AI:SetArray(2,1)	
				AI:Exit()
			end
		end
		
	end
	
	
	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		if nIndex == 1 then
			AI:AddSeekPos(mapid,167,240)
		end
		
	end

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


	end

