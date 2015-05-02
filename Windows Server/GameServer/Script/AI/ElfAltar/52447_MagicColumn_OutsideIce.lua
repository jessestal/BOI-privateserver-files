----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012/08
--		Author:???
--		TaskName:?-BOSS1-Lv1:????-?
--		TaskID:52447_MagicColumn_OutsideIce.lua
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		if nIndex == 1 then--????
			a = AI:GetArray(1)
			if a == 1 then
				AI:Say("Practitioners of ice magic care for one another.")		
				AI:SetArray(1,2)
			end	
			if a == 2 then
				Status = AI:GetEctypeVarShort(mapid,74)
				if Status == 0 then
					if hpn ~= hpmax then
						AI:SetEctypeVarShort(mapid,74,1)	
					end
				end	
			end
			AI:SetArray(1,2)
			AI:SetArray(9,1)			
		end--??????

		if nIndex == 2 then--????
			a = AI:GetArray(2)
			if a == 1 then--????
				----???? start
				hpunit = hpmax/50
				point = AI:GetEctypeVarShort(mapid,65)
				hprecover = point*hpunit
				if hprecover > 1000 then
					if hprecover < hplose then
						AI:RestoreHPInstant(hprecover)
						AI:SetEctypeVarShort(mapid,65,0)
					else
						AI:RestoreHPInstant(hplose)
						AI:SetEctypeVarShort(mapid,65,point-1)
					end
				end
				----???? end
				----???? start
 				hpsub = AI:GetEctypeVarInteger(mapid,117)
				hpsub = hpsub*1.15
					if hpsub > 10000 then 
						if hpsub > hpn  then
							AI:SelfMurder()
						else										
							AI:LoseHPInstant(hpsub)
							AI:SetEctypeVarInteger(mapid,117,0)
						end
					end
				----???? end
			end--????end
		end--????end	
		
		if nIndex == 3 then--????
			PosX = AI:GetPosX()
			PosY = AI:GetPosY()
			a = AI:GetArray(3)
			if a == 1 then--????
				for tp = 1 , 2 , 1 do--for
					a,b = math.random(1,10),math.random(1,10)
					PosX1 = PosX + a
					PosX2 = PosX - a
					PosY1 = PosY + b
					PosY2 = PosY - b					
					AI:SummonMonsterByPos(52449,PosX1,PosY2,1)
					AI:SummonMonsterByPos(52449,PosX2,PosY1,1)
				end--for end
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
				AI:SetTimer(1,1000,60)
				AI:SetArray(1,1)
		    AI:SetArray(9,0)
				AI:Say("Practitioners of ice magic live and die together.")
			end
			a = AI:GetArray(2)
			if a == 0 then --????,????
				AI:SetTimer(2,2000,9999)
				AI:SetArray(2,1)
			end
			a = AI:GetArray(3)
			if a == 0 then --????,????
				AI:SetTimer(3,5000,9999)
				AI:SetArray(3,1)
			end			
			
								
			----------------------------------------------------------normal end
	end--functionEvent_ThinkingEND
-----------------------------------------------------------------------------	thinking end
			
			
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		AI:DelTimer(1)
		AI:DelTimer(2)
		AI:DelTimer(3)

	end