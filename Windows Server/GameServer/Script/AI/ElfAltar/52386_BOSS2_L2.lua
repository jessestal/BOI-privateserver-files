----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012/08
--		Author:???
--		TaskName:?-BOSS1-Lv2:????-?
--		TaskID:52382_BOSS1_L2.lua
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		if nIndex == 1 then--????
			a = AI:GetArray(1)
			if a == 1 then
					AI:Say("Take that! The power of frost!")				
			end
			AI:SetArray(1,2)
			AI:SetArray(9,1)			
		end--??????

		if nIndex == 2 then--????
			a = AI:GetArray(2)
			if a == 1 then--????
				AI:AddSkill(2384,2)
				AI:UseSkill(2384,2)
				AI:Say("I rain ice upon you!")
			end--????end
		end--????end
		
		if nIndex == 3 then--????
				AI:AddSkill(2384,3)
				AI:UseSkill(2384,3)
				AI:ScreenText( "Valis Hailstorm: Gelius, God of Ice, grant me your power!" , 2)
		end--????end
		
		if nIndex == 4 then--??1?? ??
				local PosX = AI:GetPosX()
				local PosY = AI:GetPosY()
				a1 = PosX - 5
				a2 = PosX + 5
				b1 = PosY - 5
				b2 = PosY + 5
				AI:SummonMonsterByPos(52451,a1,PosY,1)
				AI:SummonMonsterByPos(52451,a2,PosY, 1)
				AI:SummonMonsterByPos(52451,PosX,b1, 1)
				AI:SummonMonsterByPos(52451,PosX,b2, 1)
				AI:SummonMonsterByPos(52451,PosX-3,PosY+3, 1)
				AI:SummonMonsterByPos(52451,PosX+3,PosY+3, 1)	
				AI:SummonMonsterByPos(52451,PosX-3,PosY-3, 1)
				AI:SummonMonsterByPos(52451,PosX+3,PosY-3, 1)				
--				AI:UseSkill(2334,3)
				AI:ScreenText( "Valis Hailstorm: Gelius, God of Ice, grant me your power!" , 2)
		end--??1??end			
		
		if nIndex == 5 then--??3?? ??
			local PosX = AI:GetPosX()
			local PosY = AI:GetPosY()
					for tp = 1 , 4 , 1 do--for
						a,b = math.random(1,14),math.random(1,18)
						PosX1 = PosX + a
						PosX2 = PosX - a
						PosY1 = PosY + b
						PosY2 = PosY - b													
						AI:SummonMonsterByPos(52452,PosX1,PosY1,1)
						AI:SummonMonsterByPos(52452,PosX1,PosY2,1)
						AI:SummonMonsterByPos(52452,PosX2,PosY2,1)
						AI:SummonMonsterByPos(52452,PosX2,PosY2,1)												
					end--for end
					AI:ScreenText( "Valis Hailstorm: Gelius, God of Ice, grant me your power!" , 2)
		end--??2??end		

		if nIndex == 6 then--??3?? ??
				local PosX = AI:GetPosX()
				local PosY = AI:GetPosY()
				hinding = AI:GetArray(6)
				if hinding == 1 then
					hpn = AI:GetHP()
					hpmax = AI:GetHPMax()
					hplose = hpmax - hpn
					progress = AI:GetArray(3)
					AI:SetEctypeVarInteger( mapid, 119, hplose )
					AI:SetEctypeVarShort(mapid,85,PosX)
					AI:SetEctypeVarShort(mapid,86,PosY)
					AI:SetEctypeVarShort(mapid,83,1)--?BOSS????  --4???????????
					AI:SetEctypeVarShort(mapid,88,progress)
					AI:SetEctypeVarShort(mapid,89,2)
					AI:PlayAction("specialidle",0,0)
					AI:ScreenText("Valis Hailstorm: Stealth!",1)
					AI:SetArray(6,2)
				end
				if hinding == 2 then
					a1 = PosX - 7
					a2 = PosX + 7
					b1 = PosY - 7
					b2 = PosY + 7
					AI:SummonMonsterByPos(52456,a1,b1,135)
					AI:SummonMonsterByPos(52456,a2,b1,225)
					AI:SummonMonsterByPos(52456,a1,b2,45)
					AI:SummonMonsterByPos(52456,a2,b2,315)
					AI:ScreenText( "Valis Hailstorm: Vanquish these intruders my minions!", 2)
					AI:SetArray(6,0)
					AI:Exit()
				end							
		end--??3??end						
		
		if nIndex == 7 then--??Lv2?? ??Lv2?BOSS
			local PosX = AI:GetPosX()
			local PosY = AI:GetPosY()
			turn = AI:GetEctypeVarShort(mapid,54)
			if turn == 0 then
				AI:SummonMonsterByPos(52454,181,232,0)
				AI:SetEctypeVarShort(mapid,54,turn+1)
			end
			if turn == 1 then
				AI:SummonMonsterByPos(52454,180,248,0)
				AI:SetEctypeVarShort(mapid,54,turn+1)
			end		
			if turn == 2 then
				AI:SummonMonsterByPos(52454,167,256,0)
				AI:SetEctypeVarShort(mapid,54,turn+1)
			end	
			if turn == 3 then
				AI:SummonMonsterByPos(52454,152,247,0)
				AI:SetEctypeVarShort(mapid,54,turn+1)
			end	
			if turn == 4 then
				AI:SummonMonsterByPos(52454,154,231,0)
				AI:SetEctypeVarShort(mapid,54,turn+1)
			end	
			if turn == 5 then
				AI:SummonMonsterByPos(52454,167,224,0)
				AI:SetEctypeVarShort(mapid,54,turn+1)
			end														
							

		end--??Lv2??end		

		if nIndex == 8 then--?????? ??Lv2?BOSS
			local PosX = AI:GetPosX()
			local PosY = AI:GetPosY()			

		end--?????? ??Lv2?BOSSend						
						
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
		n10 = AI:GetEctypeVarShort(mapid,83) --???BOSS?? 10?????

		if t == false then
			if n10 == 0 then
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
							AI:SetEctypeVarInteger( mapid, 119, 0 )--?????0
						end
					end
				end
			end
		else
		-----------------------------------------------------------??BOSS??
			LimitX = AI:GetPosX()
			LimitY = AI:GetPosY()
	    	if LimitX <= 135 	then
	    		progress = AI:GetArray(3)
	    		AI:SetEctypeVarShort(mapid,88,progress)
	    		AI:ScreenText( "Valis Hailstorm: I must return to my altar.", 2 )    		
					AI:SetEctypeVarInteger( mapid, 119, hplose )
					AI:SetEctypeVarShort(mapid,83,1)--?BOSS????
					AI:SummonMonsterByPos(52386,167,240,180)
					AI:SummonMonsterByPos(52441,167,240,180)
		      AI:Exit()
	    	end		
	    	if LimitY <= 216 	then
	    		progress = AI:GetArray(3)
	    		AI:SetEctypeVarShort(mapid,88,progress)
	    		AI:ScreenText( "Valis Hailstorm: I must return to my altar.", 2 )
					AI:SetEctypeVarInteger( mapid, 119, hplose )	
					AI:SetEctypeVarShort(mapid,83,1)--?BOSS????
		      AI:SummonMonsterByPos(52386,167,240,180)
		      AI:SummonMonsterByPos(52441,167,240,180)
		      AI:Exit()
	    	end				
		-----------------------------------------------------------??BOSS??end				
		-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then --?????,????,????
				hplose = AI:GetEctypeVarInteger( mapid, 119 )--????????,?????????
				AI:LoseHPInstant( hplose )
				progress = AI:GetEctypeVarShort(mapid,88)--??BOSS???
				AI:SetArray(3,progress)
				AI:SetTimer(1,1000,1)
				AI:SetArray(1,1)
		    AI:SetArray(9,0)
				AI:Say("We meet again.")
			end
			a = AI:GetArray(2)
			if a == 0 then --????,????
				AI:SetTimer(2,9000,9999)
				AI:SetArray(2,1)
			end
			a = AI:GetArray(7)--????
			if a == 0 then
				AI:SetTimer(7,13000,9999)
				AI:SetArray(7,1)
			end
			a = AI:GetArray(3)
			if a == 0 then --????
				if hppct < 95 then
					AI:SetTimer(4,1000,1)
					AI:SetArray(3,1)
				end
			end
			if a == 1 then --????
				if hppct < 90 then
					AI:SetTimer(5,1000,1)
					AI:SetArray(3,2)
				end
			end			
			if a == 2 then --????
				if hppct < 85 then
					AI:SetTimer(4,1000,1)
					AI:SetArray(3,3)
				end
			end
			if a == 3 then --????
				if hppct < 80 then
					AI:SetTimer(3,1000,1)
					AI:SetTimer(5,1000,1)
					AI:SetArray(3,4)
				end
			end
			if a == 4 then --????
				if hppct < 75 then
					AI:SetTimer(4,1000,1)
					AI:SetArray(3,5)
				end
			end
			if a == 5 then --????
				if hppct < 70 then
					AI:SetTimer(5,1000,1)
					AI:SetArray(3,6)
				end
			end
			if a == 6 then --????
				if hppct < 65 then
					AI:SetTimer(4,1000,1)
					AI:SetArray(3,7)					
				end
			end	
			if a == 7 then --????
				if hppct < 60 then
					AI:SetTimer(5,1000,1)			
					AI:SetTimer(3,1000,1)		
					AI:SetArray(3,8)
				end
			end
			if a == 8 then --????
				if hppct < 55 then
					hinding = AI:GetArray(6)
					if hinding == 0 then
						if n10 == 0 then --??????
							AI:ChangeFaction(11)
							AI:SetTimer(6,3000,2)				
							AI:SetArray(3,9)
							AI:SetArray(6,1)
						end
					end
				end
			end
			if a == 9 then --????
				if hppct < 50 then
					AI:SetTimer(5,1000,1)
					AI:SetArray(3,10)
				end
			end			
			if a == 10 then --????
				if hppct < 45 then
					AI:SetTimer(4,1000,1)
					AI:SetArray(3,11)
				end
			end
			if a == 11 then --????
				if hppct < 40 then
					AI:SetTimer(5,1000,1)
					AI:SetTimer(3,1000,1)		
					AI:SetArray(3,12)
				end
			end
			if a == 12 then --????
				if hppct < 35 then
					AI:SetTimer(4,1000,1)
					AI:SetArray(3,13)
				end
			end	
			if a == 13 then --????
				if hppct < 30 then	
					hinding = AI:GetArray(6)
					if hinding == 0 then		
						if n10 == 0 then --??????			
							AI:ChangeFaction(11)				
							AI:SetTimer(6,3000,2)				
							AI:SetArray(3,14)
							AI:SetArray(6,1)
						end
					end						
				end
			end
			if a == 14 then --????
				if hppct < 25 then
					AI:SetTimer(5,1000,1)
					AI:SetArray(3,15)
				end
			end			
			if a == 15 then --????
				if hppct < 20 then
					AI:SetTimer(4,1000,1)
					AI:SetTimer(3,1000,1)		
					AI:SetArray(3,16)
				end
			end
			if a == 16 then --????
				if hppct < 15 then
					AI:SetTimer(5,1000,1)
					AI:SetArray(3,17)
				end
			end
			if a == 17 then --????
				if hppct < 10 then
					AI:SetTimer(4,1000,1)
					AI:SetTimer(3,1000,1)			
					AI:SetArray(3,18)
				end
			end										
			----------------------------------------------------------normal end
		end --- t end
	end--functionEvent_ThinkingEND
-----------------------------------------------------------------------------	thinking end
			
			
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()


		--AI:ScreenText("",2)
		AI:Say("Ice will consume all!")
		AI:DelTimer(1)
		AI:DelTimer(2)
		AI:DelTimer(3)
		AI:DelTimer(4)
		AI:DelTimer(5)
		AI:DelTimer(6)
		AI:DelTimer(7)		
		AI:DelTimer(9)
		AI:SetEctypeVarInteger( mapid, 119, 0 )--??BOSS???????,?BOSS?????????0

	end