----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012/08
--		Author:???
--		TaskName:?-????:M1 ???1?-?
--		TaskID:52396_Archer_L1.lua
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		if nIndex == 1 then--????
			a = AI:GetArray(1)
			if a == 1 then
				AI:AddSkill(2380,1)
				AI:UseSkill(2380,1)
				--x = AI:GetRand(10)
				--y = AI:GetRand(30)
				--posx = 255
				--posy = 130
				--posx = posx + x
				--posy = posy + y
				--AI:SetArray(8,posx)
				--AI:SetArray(9,posy)
				
--				AI:ScreenText("GUID:02680000000",1)
				--AI:UpdateSeekPath(1)
				AI:SetArray(1,2)
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
		-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then --???,exit
				if hppct < 40 then
--					AI:ChangeFaction(11)
					AI:SetTimer(1,1000,1)
					AI:SetArray(1,1)
				end
			end


			----------------------------------------------------------normal end
		

--		test=AI:GetEctypeVarShort(mapid,99)
--		if test = 1 then--??AI??
--			AI:Say("hppct="..tostring(hppct))
--			AI:SetEctypeVarShort(mapid,99,0)
--		end

	end--functionEvent_ThinkingEND
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		a = AI:GetArray(2)		
		posx = AI:GetArray(8)
		posy = AI:GetArray(9)
		
		if (( PosX == posx) and ( PosY == posy )) then	
			if a == 0 then
				AI:ChangeFaction(1)
				AI:ScreenText("Dryad Hunter: Battle!",1)
				AI:SetArray(2,1)	
			end
		end
		
	end
	
	
	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		posx = AI:GetArray(8)
		posy = AI:GetArray(9)
		
		if nIndex == 1 then			
			AI:AddSeekPos(mapid,posx,posy)
		end
		
	end	
	
	
	
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
			
			AI:DelTimer(1)

	end

