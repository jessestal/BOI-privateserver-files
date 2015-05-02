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
			end
			AI:SetArray(1,2)
			AI:SetArray(9,1)			
		end--??????

		if nIndex == 2 then--????
			a = AI:GetArray(2)
			if a == 1 then--????
				AI:AddSkill(2383,1)
				AI:UseSkill(2383,1)
				AI:Say("I rain fire upon you!")
			end--????end
		end--????end
		
		if nIndex == 3 then--????
				AI:AddSkill(2383,1)
				AI:UseSkill(2383,1)
				AI:ScreenText( "Lantia Wildblaze: Ignea, Goddess of Flames, grant me your power!" , 2)
		end--????end
		
		if nIndex == 4 then--??1?? ??
				local PosX = AI:GetPosX()
				local PosY = AI:GetPosY()
				a1 = PosX - 4
				a2 = PosX + 4
				b1 = PosY - 4
				b2 = PosY + 4
				AI:SummonMonsterByPos(52424,a1,PosY,1)
				AI:SummonMonsterByPos(52424,a1,PosY - 1, 1)
				AI:SummonMonsterByPos(52424,a1,PosY + 1, 1)
				AI:SummonMonsterByPos(52424,a2,PosY, 1)
				AI:SummonMonsterByPos(52424,a2,PosY + 1, 1)
				AI:SummonMonsterByPos(52424,a2,PosY - 1, 1)
				AI:SummonMonsterByPos(52424,PosX,b1, 1)
				AI:SummonMonsterByPos(52424,PosX - 1,b1, 1)
				AI:SummonMonsterByPos(52424,PosX + 1,b1, 1)
				AI:SummonMonsterByPos(52424,PosX,b2, 1)
				AI:SummonMonsterByPos(52424,PosX - 1,b2, 1)
				AI:SummonMonsterByPos(52424,PosX + 1,b2, 1)				
--				AI:UseSkill(2334,3)
				AI:ScreenText( "Lantia Wildblaze: Ignea, Goddess of Flames, grant me your power!" , 2)
		end--??1??end		
		
		if nIndex == 5 then--??3?? ??
			local PosX = AI:GetPosX()
			local PosY = AI:GetPosY()
					for tp = 1 , 4 , 1 do--for
						a,b = math.random(1,10),math.random(1,10)
						PosX1 = PosX + a
						PosX2 = PosX - a
						PosY1 = PosY + b
						PosY2 = PosY - b													
						AI:SummonMonsterByPos(52425,PosX1,PosY1,1)
						AI:SummonMonsterByPos(52425,PosX1,PosY2,1)
						AI:SummonMonsterByPos(52425,PosX2,PosY2,1)
						AI:SummonMonsterByPos(52425,PosX2,PosY2,1)												
					end--for end
					AI:ScreenText( "Lantia Wildblaze: Ignea, Goddess of Flames, grant me your power!" , 2)
		end--??2??end		

		if nIndex == 6 then--??3?? ??
				local PosX = AI:GetPosX()
				local PosY = AI:GetPosY()	
				
		end--??3??end				
		
		if nIndex == 7 then--????,?????
				local PosX = AI:GetPosX()
				local PosY = AI:GetPosY()
				
				AI:SummonMonsterByPos(52461,PosX-13,PosY-5,1)
				AI:SummonMonsterByPos(52461,PosX-10,PosY-5,1)
				AI:SummonMonsterByPos(52461,PosX-7,PosY-5,1)
				AI:SummonMonsterByPos(52461,PosX-4,PosY-5,1)
				AI:SummonMonsterByPos(52461,PosX,PosY-5,1)
				AI:SummonMonsterByPos(52461,PosX+4,PosY-5,1)
				AI:SummonMonsterByPos(52461,PosX+7,PosY-5,1)
				AI:SummonMonsterByPos(52461,PosX+10,PosY-5,1)
				AI:SummonMonsterByPos(52461,PosX+13,PosY-5,1)		
						
				AI:SummonMonsterByPos(52461,PosX-13,PosY+4,1)
				AI:SummonMonsterByPos(52461,PosX-10,PosY+4,1)
				AI:SummonMonsterByPos(52461,PosX-7,PosY+4,1)
				AI:SummonMonsterByPos(52461,PosX-4,PosY+4,1)
				AI:SummonMonsterByPos(52461,PosX,PosY+4,1)
				AI:SummonMonsterByPos(52461,PosX+4,PosY+4,1)
				AI:SummonMonsterByPos(52461,PosX+7,PosY+4,1)
				AI:SummonMonsterByPos(52461,PosX+10,PosY+4,1)
				AI:SummonMonsterByPos(52461,PosX+13,PosY+4,1)					
				
				AI:SummonMonsterByPos(52461,PosX-5,PosY+13,1)
				AI:SummonMonsterByPos(52461,PosX-5,PosY+10,1)
				AI:SummonMonsterByPos(52461,PosX-5,PosY+7,1)
				AI:SummonMonsterByPos(52461,PosX-5,PosY+4,1)
				AI:SummonMonsterByPos(52461,PosX-5,PosY,1)
				AI:SummonMonsterByPos(52461,PosX-5,PosY-4,1)
				AI:SummonMonsterByPos(52461,PosX-5,PosY-7,1)
				AI:SummonMonsterByPos(52461,PosX-5,PosY-10,1)
				AI:SummonMonsterByPos(52461,PosX-5,PosY-13,1)						
				
				AI:SummonMonsterByPos(52461,PosX+4,PosY+13,1)
				AI:SummonMonsterByPos(52461,PosX+4,PosY+10,1)
				AI:SummonMonsterByPos(52461,PosX+4,PosY+7,1)
				AI:SummonMonsterByPos(52461,PosX+4,PosY+4,1)
				AI:SummonMonsterByPos(52461,PosX+4,PosY,1)
				AI:SummonMonsterByPos(52461,PosX+4,PosY-4,1)
				AI:SummonMonsterByPos(52461,PosX+4,PosY-7,1)
				AI:SummonMonsterByPos(52461,PosX+4,PosY-10,1)
				AI:SummonMonsterByPos(52461,PosX+4,PosY-13,1)	
				
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
					AI:SetTimer(7,1000,1)
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
					AI:SetTimer(4,1000,1)				
					AI:SetArray(3,9)
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
					AI:SetTimer(7,1000,1)
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
					AI:SetTimer(5,1000,1)
					AI:SetArray(3,14)
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
					AI:SetTimer(7,1000,1)
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
			if a == 18 then --????
				if hppct < 5 then
					AI:SetTimer(7,1000,1)
					AI:SetTimer(3,1000,1)			
					AI:SetArray(3,19)
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
		AI:Say("Fire will devour all!")
		AI:SetEctypeVarShort(mapid,60,1)
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