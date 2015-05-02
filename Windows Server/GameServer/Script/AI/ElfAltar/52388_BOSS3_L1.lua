----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012/08
--		Author:???
--		TaskName:?-BOSS2-Lv1:????-?
--		TaskID:52388_BOSS3_L1.lua
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
				AI:AddSkill(2385,1)
				AI:UseSkill(2385,1)
				AI:Say("Witness the relentless force of nature!")
			end--????end
		end--????end
		
		if nIndex == 3 then--????
				AI:AddSkill(2385,2)
				AI:UseSkill(2385,2)
				AI:ScreenText( "Sylvani Oakleaf: Aturia, Goddess of Nature, grant me your power!" , 2)
		end--????end
		
		if nIndex == 4 then--??1?? ????
				local PosX = AI:GetPosX()
				local PosY = AI:GetPosY()
				a1 = PosX - 5
				a2 = PosX + 5
				b1 = PosY - 5
				b2 = PosY + 5
				AI:SummonMonsterByPos(52470,a1,PosY,1)
				AI:SummonMonsterByPos(52470,a2,PosY, 1)
				AI:SummonMonsterByPos(52470,PosX,b1, 1)
				AI:SummonMonsterByPos(52470,PosX,b2, 1)
				AI:SummonMonsterByPos(52470,PosX-3,PosY+3, 1)
				AI:SummonMonsterByPos(52470,PosX+3,PosY+3, 1)	
				AI:SummonMonsterByPos(52470,PosX-3,PosY-3, 1)
				AI:SummonMonsterByPos(52470,PosX+3,PosY-3, 1)				
--				AI:UseSkill(2334,3)
				AI:ScreenText( "Sylvani Oakleaf: Aturia, Goddess of Nature, grant me your power!" , 2)
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
						AI:SummonMonsterByPos(52470,PosX1,PosY1,1)
						AI:SummonMonsterByPos(52470,PosX1,PosY2,1)
						AI:SummonMonsterByPos(52470,PosX2,PosY2,1)
						AI:SummonMonsterByPos(52470,PosX2,PosY2,1)												
					end--for end
					AI:ScreenText( "Sylvani Oakleaf: Aturia, Goddess of Nature, grant me your power!" , 2)
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
					AI:SetEctypeVarShort(mapid,89,1)
					AI:PlayAction("specialidle",0,0)
					AI:ScreenText("Sylvani Oakleaf: Stealth!",1)
					AI:SetArray(6,2)
				end
				if hinding == 2 then
					a1 = PosX - 7
					a2 = PosX + 7
					b1 = PosY - 7
					b2 = PosY + 7
					AI:SummonMonsterByPos(52471,a1,b1,135)
					AI:SummonMonsterByPos(52471,a2,b1,225)
					AI:SummonMonsterByPos(52471,a1,b2,45)
					AI:SummonMonsterByPos(52471,a2,b2,315)
					AI:ScreenText( "Sylvani Oakleaf: Nature Fairies, appear!", 2)
					AI:SetArray(6,0)
					AI:Exit()
				end							
		end--??3??end				
		
		if nIndex == 7 then--??Lv2?? ??Lv2?BOSS
				local PosX = AI:GetPosX()
				local PosY = AI:GetPosY()
 				DeadLine = AI:GetEctypeVarShort(mapid,81)--????
 				SummonLv2 = AI:GetArray(7)--??Lv2???? Array(7)?? 7				
				if DeadLine > 0 then
					if SummonLv2 == 1 then
						AI:ChangeFaction(11)--????
						AI:SetEctypeVarShort(mapid,20,1)
						AI:SummonMonsterByPos(52479,PosX,PosY,1)
						AI:SetArray(3,20)--????? ??			
						if PosX ~= 75 then
							AI:UpdateSeekPath(1)
						elseif PosY ~= 103 then
							AI:UpdateSeekPath(1)					
						else
							AI:SetTimer(8,3200,2)--??????,?Lv2??
						end
						AI:SetArray(7,2)
					end
				end					

				AI:ScreenText( "Sylvani Oakleaf: Aturia, Goddess of Nature, grant me your power!" , 2)
		end--??Lv2??end		

		if nIndex == 8 then--?????? ??Lv2?BOSS
			local PosX = AI:GetPosX()
			local PosY = AI:GetPosY()
			SummonLv2 = AI:GetArray(7)--??Lv2???? Array(7)?? 7				
			
			if SummonLv2 == 2 then
				AI:PlayAction("specialidle",0,0)
				AI:ScreenText("Sylvani Oakleaf: Transform!",1)
				AI:SetArray(7,3)
			end
			if SummonLv2 == 3 then	
				AI:PlayEffect("skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini")
				AI:SetEctypeVarShort(mapid,84,1)--????		
				AI:SetEctypeVarShort(mapid,20,0)--??????	
				AI:SummonMonsterByPos(52389,75,103,90)	
				AI:SetArray(7,4)		
				AI:Exit()	
			end

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
	    	if LimitY <= 85 	then
	    		progress = AI:GetArray(3)
	    		AI:SetEctypeVarShort(mapid,88,progress)
	    		AI:ScreenText( "Sylvani Oakleaf: I must return to my altar.", 2 )    		
					AI:SetEctypeVarInteger( mapid, 119, hplose )
					AI:SetEctypeVarShort(mapid,83,1)--?BOSS????
					AI:SummonMonsterByPos(52388,75,103,180)
					AI:SummonMonsterByPos(52441,75,103,180)
		      AI:Exit()
	    	end		
	    	if LimitY >= 125 	then
	    		progress = AI:GetArray(3)
	    		AI:SetEctypeVarShort(mapid,88,progress)
	    		AI:ScreenText( "Sylvani Oakleaf: I must return to my altar.", 2 )
					AI:SetEctypeVarInteger( mapid, 119, hplose )	
					AI:SetEctypeVarShort(mapid,83,1)--?BOSS????
		      AI:SummonMonsterByPos(52388,75,103,180)
		      AI:SummonMonsterByPos(52441,75,103,180)
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
			end
			SummonLv2 = AI:GetArray(7)--??Lv2???? Array(7)?? 7	
			a = AI:GetArray(2)
			if a == 0 then --????,????
				AI:SetTimer(2,10000,9999)
				AI:SetArray(2,1)
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
					if SummonLv2 == 0 then
	          AI:SetTimer(7,100,1)
						AI:SetTimer(5,1000,1)
						AI:SetArray(3,6)
						AI:SetArray(7,1)
					end
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
					AI:SetTimer(3,1000,1)
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
					AI:SetTimer(3,1000,1)
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
					AI:SetTimer(3,1000,1)
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
			
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if (( PosX == 75) and ( PosY == 103 )) then	
			AI:SetTimer(8,3200,3)--??????,?Lv2??
		end		
	end	
	
	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
				
		if nIndex == 1 then
			AI:AddSeekPos(mapid,75,103)
		end
	end
			
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()


		--AI:ScreenText("",2)
		AI:Say("The power of nature will reclaim all!")
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