----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012/08
--		Author:???
--		TaskName:?-BOSS1-Lv1:????-?
--		TaskID:52448_MagicColumn_OutsideSoul.lua
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		if nIndex == 1 then--????
			a = AI:GetArray(1)
			if a == 1 then
				AI:Say("I won't be fooled!")		
				AI:SetArray(1,2)
			end	
			if a == 2 then
				Status = AI:GetEctypeVarShort(mapid,75)
				if Status == 0 then
					if hpn ~= hpmax then
						AI:SetEctypeVarShort(mapid,75,1)	
					end
				end	
			end							
			AI:SetArray(1,2)
			AI:SetArray(9,1)			
		end--??????

		if nIndex == 2 then--????
			a = AI:GetArray(2)
			if a == 1 then--????
				PosY = AI:GetPosY()
				PosX = AI:GetPosX()
				hpn = AI:GetHP()
				hpmax = AI:GetHPMax()
				hpsub = AI:GetEctypeVarInteger(mapid,116)
				hpsub = hpsub*1.18
				if PosY < 94 then--????
					AI:SetAIState(7)
				elseif PosX < 203 then
					AI:SetAIState(7)
				elseif hpsub > 0 then
					if hpsub > hpn then
						AI:SelfMurder()
					else			
						AI:LoseHPInstant(hpsub)
						AI:SetEctypeVarInteger(mapid,116,0)
					end
				end--??end
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
	
		----------------------------------------------------------????????? start
		t = AI:HaveAttackTarget()
		a = AI:GetArray(1)		
	
			if a == 0 then
	--			AI:GetRandTarget()	
				if t == false then
					AI:SetAIState(7)
				else
					AI:SetAIState(0)
				end		
			end				
		------------------------------------------------------------??????? end
		-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then --?????,????,????
				AI:SetTimer(1,1000,60)
				AI:SetArray(1,1)
		    AI:SetArray(9,0)
				AI:Say("Don't think you can fool me!")
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