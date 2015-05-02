--??
----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012/03
--		Author:???
--		TaskName:?-????:????-?
--		TaskID:
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
------------------------------------------------------------------------??????
		if nIndex == 1 then--????
			a = AI:GetArray(1)
			if a == 1 then
					AI:UpdateSeekPath(1)
					AI:Say("There are so many sea monsters. I need to hide quickly.")
					AI:ScreenText("The pirate captain sadly looked at his pirate ship broken in half. ",2)
					AI:SetArray(1,2)
			end
			if a == 2 then
					AI:ScreenText("Pirate captain: The air was filled with the scent of treasures.",2)
					AI:SetArray(1,3)
			end
			if a == 3 then
					AI:ScreenText("Pirate captain: No way, the sea monsters have not been wiped out. Look, here, there, there are so many!",2)
					AI:SetArray(1,4)
			end			
			
			
		end--??????
-------------------------------------------------------------------------??????

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
				AI:SetTimer(1,2000,3)
				AI:SetArray(1,1)
				AI:ChangeFaction(11)
		    AI:SetArray(9,0)
				AI:Say("Why, I'm the most handsome captain in the univer-- hold on, those people over there seem to be even more handsome...")
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



	end

	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		a = AI:GetArray(2)

		if (( PosX == 172) and ( PosY == 204 )) then
			if a == 0 then
				AI:Say("ÿAnother monster emerges from the sea!")
				AI:SetArray(2,1)					
			end
		end
		if (( PosX == 161) and ( PosY == 182 )) then	
			if a == 1 then
				AI:Say("ÿI'll leave now. After you clean up these monsters come to me!")
				AI:AddNPC( 784 )
				AI:SetArray(2,2)	
				AI:Exit()
			end
		end
		
	end
	
	
	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		if nIndex == 1 then
			AI:AddSeekPos(mapid,172,204)
			AI:AddSeekPos(mapid,156,193)
			AI:AddSeekPos(mapid,161,182)
		end
		
	end
