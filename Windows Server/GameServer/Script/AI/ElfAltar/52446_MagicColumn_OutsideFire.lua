----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012/08
--		Author:???
--		TaskName:?-BOSS1-Lv1:????-?
--		TaskID:52446_MagicColumn_OutsideFire.lua
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		if nIndex == 1 then--????
			a = AI:GetArray(1)
			if a == 1 then	
			end
			AI:SetArray(1,2)
			AI:SetArray(9,1)			
		end--??????

		if nIndex == 2 then--????
			a = AI:GetArray(2)
			if a == 1 then--????
				hpn = AI:GetHP()
				hpmax = AI:GetHPMax()
				hprecover = AI:GetEctypeVarInteger(mapid,118)
					if hprecover > 0 then
						hplose = hpmax - hpn
						if hprecover > hplose then
							AI:RestoreHPInstant(hplose)
							AI:Say("I will protect this place!")	
						else			
							AI:RestoreHPInstant(hprecover)
							AI:Say("This feeling isn't bad, either!")
						end
						AI:SetEctypeVarInteger(mapid,118,0)	
					end
			end--????end
		end--????end		
						
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		hpn = AI:GetHP()
		hpmax = AI:GetHPMax()
		hplose = hpmax - hpn
		hppct = hpn/hpmax*100

		-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then --?????,????,????
				AI:SetTimer(1,1000,1)
				AI:SetArray(1,1)
		    AI:SetArray(9,0)
			end
			a = AI:GetArray(2)
			if a == 0 then --????,????
				AI:SetTimer(2,100,9999)
				AI:SetArray(2,1)
			end
								
			----------------------------------------------------------normal end
	end--functionEvent_ThinkingEND
-----------------------------------------------------------------------------	thinking end
			
			
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		AI:DelTimer(1)
		AI:DelTimer(2)


	end