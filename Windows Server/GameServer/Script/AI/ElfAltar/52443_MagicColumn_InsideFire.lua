--??
----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012/08
--		Author:???
--		TaskName:?-BOSS1-Lv1:????-?
--		TaskID:52443_MagicColumn_InsideFire.lua
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		if nIndex == 1 then--????
			a = AI:GetArray(1)
			if a == 1 then
					AI:Say("I cannot believe how weak fire magic is outside this shrine!")				
			end
			AI:SetArray(1,2)
			AI:SetArray(9,1)			
		end--??????

		if nIndex == 2 then--????
			a = AI:GetArray(2)
			if a == 1 then--????
				hpn = AI:GetHP()
				hpmax = AI:GetHPMax()
				hppct = hpn/hpmax*100
				lastpct = AI:GetEctypeVarShort(mapid,77)
				losepct = lastpct - hppct
				hplose = losepct*hpmax/100
				if losepct > 5 then
					AI:SetEctypeVarShort(mapid,77,hppct)
					AI:SetEctypeVarInteger(mapid,118,hplose)		
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
		
		t = AI:HaveAttackTarget()
 		a = AI:GetArray(1)
		if t == false then
			if a > 0 then
				if hpn == hpmax then
					CanBeShutDown = AI:GetArray(9)
					if CanBeShutDown == 1 then				
				    AI:DelTimer(1)
				    AI:DelTimer(2)
				    AI:DelTimer(3)
						AI:SetArray(1,0)
						AI:SetArray(2,0)
						AI:SetArray(3,0)
						AI:SetArray(4,0)
						AI:SetArray(5,0)
						AI:SetArray(6,0)
						AI:SetArray(7,0)
						AI:SetArray(8,0)
						AI:SetArray(9,0)
						AI:SetEctypeVarInteger( mapid, 118, 0 )--?????0
						AI:SetEctypeVarShort(mapid,77,100)
					end
				end
			end
		else		
		-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then --?????,????,????
				AI:SetTimer(1,1000,1)
				AI:SetEctypeVarShort(mapid,77,100)
				AI:SetArray(1,1)
		    AI:SetArray(9,0)
				AI:Say("Of everything under the sky and stars, fire is my one and all!")
			end
			a = AI:GetArray(2)
			if a == 0 then --????,????
				AI:SetTimer(2,2000,9999)
				AI:SetArray(2,1)
			end
								
			----------------------------------------------------------normal end
		end--t end
	end--functionEvent_ThinkingEND
-----------------------------------------------------------------------------	thinking end
			
			
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		AI:DelTimer(1)
		AI:DelTimer(2)


	end