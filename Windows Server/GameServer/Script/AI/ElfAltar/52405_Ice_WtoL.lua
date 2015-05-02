----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012/08
--		Author:???
--		TaskName:?-????:M2 ????????-?
--		TaskID:52405_Ice_WtoL.lua
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		if nIndex == 1 then--????
			a = AI:GetArray(1)
			if a == 1 then				
				AI:UpdateSeekPath(1)
				AI:SetArray(1,2)
			end						
		end--??????
		
		if nIndex == 2 then --????
			a = AI:GetArray(2)
			if a == 1 then
				AI:Say("Watch out for the ice!")
				AI:GetRandTarget()
				D = AI:GetTargetDistance()
				if D < 3 then
					AI:AddSkill(2377,1)
					AI:UseSkill(2377,1)
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
				AI:SetTimer(2,200,999)
				AI:SetArray(2,1)
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

		if (( PosX == PosX1) and ( PosY == PosY1 )) then	
			AI:Exit()
		end
		
	end
	
	
	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		PosX = AI:GetPosX()
		PosY1 = AI:GetPosY()
		PosX1 = PosX - 100		
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

