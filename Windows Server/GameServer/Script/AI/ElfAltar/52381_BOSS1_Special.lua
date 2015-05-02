----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012/08
--		Author:???
--		TaskName:?-BOSS1-Lv2:????-?
--		TaskID:52381_BOSS1_Special.lua
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		if nIndex == 1 then--????
			a = AI:GetArray(1)
			if a == 1 then
				AI:PlayAction("attack2",0,0)
				AI:ScreenText("Lantia Wildblaze: Summon the Ancestral Gate!",1)
				AI:SetArray(1,2)
				AI:Say("Let me show you how happy I am to see you.")
			end
			if a == 2 then
				AI:SummonMonsterByPos(52428,216,69,180)
				AI:SummonMonsterByPos(52429,216,75,180)
				AI:ScreenText("Lantia Wildblaze: Ignea! Give me the power to burn this humans to ashes!",1)
				AI:SetArray(1,3)
			end
			if a == 3 then
				AI:PlayAction("attack1",0,0)
				AI:SummonMonsterByPos(52427,224,83,270)
				AI:SummonMonsterByPos(52450,224,83,270) --52427??????
--				AI:AddSkill(6388,1)
--				AI:UseSkill(6388,1)
				AI:ScreenText("Lantia Wildblaze: Odin's Blade? Don't think that you can stop me!",1)								
				AI:SetArray(1,4)
			end
			if a == 4 then
				AI:SummonMonsterByPos(52392,224,83,0)
				AI:SetEctypeVarShort(mapid,90,0)--????TD??????
				AI:ScreenText("Lantia Wildblaze: Have a taste of my power!",1)						
				AI:SetArray(1,5)
			end
			if a == 5 then
				AI:ChangeFaction(1)						
				AI:SetArray(1,6)
				AI:SetArray(7,1)
			end							
									
			AI:SetArray(9,1)			
		end--??????

		if nIndex == 2 then--????
			a = AI:GetArray(2)
			if a == 1 then--????
--				AI:AddSkill(6388,1)
--				AI:UseSkill(6388,1)
				AI:SummonMonsterByPos(52392,224,83,0)
				AI:SummonMonsterByPos(52429,216,68,90) ---TD? ?5? 1?
				arrive = AI:GetEctypeVarShort(mapid,90)
				if arrive > 0 then
					AI:PlayAction("attack2",0,0)
				else
					AI:PlayAction("attack1",0,0)	
				end			
			end--????end
		end--????end
--
		if nIndex == 3 then--????
			a = AI:GetArray(7)
			if a == 2 then--????
				hpn = AI:GetHP()
				hpmax = AI:GetHPMax()
				percent = hpmax/100
				unit = AI:GetEctypeVarShort(mapid,46)
				addhp = percent*unit
				if unit == 4 then
					AI:RestoreHPInstant(addhp)
					AI:Say("The power of fire has restored my strength!")
				end
				if hpn < percent then--??
					AI:SelfMurder()
				else
					AI:LoseHPInstant(percent)
					rand = AI:GetRand(100)
					if rand < 15 then
						AI:Say("I can endure Odin's torment!")
					end
				end--??end
			end--????end
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
		end--??1??end		
		
		if nIndex == 5 then--??5?? ??
				local PosX = AI:GetPosX()
				local PosY = AI:GetPosY()
				number = AI:GetEctypeVarShort(mapid,44)
				Switch = AI:GetEctypeVarShort(mapid,45)
				count = AI:GetEctypeVarShort(mapid,46)
				turnoff = AI:GetEctypeVarShort(mapid,47)
				if count >= 4 then
					if turnoff == 1 then 
						AI:SetEctypeVarShort(mapid,44,0)
						AI:SetEctypeVarShort(mapid,45,0)
						AI:SetEctypeVarShort(mapid,46,0)
						AI:SetEctypeVarShort(mapid,47,0)
					end
				end
				
				if Switch ~= 1 then
					if number == 1 then 
						AI:SummonMonsterByPos(52463,PosX-4,PosY-4, 1)	
					end
					if number == 2 then 
						AI:SummonMonsterByPos(52463,PosX+4,PosY-4, 1)	
					end
					if number == 3 then 
						AI:SummonMonsterByPos(52463,PosX-4,PosY+4, 1)	
					end	
					if number >= 4 then 
						AI:SummonMonsterByPos(52463,PosX+4,PosY+4, 1)	
						AI:SetEctypeVarShort(mapid,45,1)
					end	
				end								
						
		end--??5??end				
		
			
						
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		hpn = AI:GetHP()
		hpmax = AI:GetHPMax()
		hppct = hpn/hpmax*100
--		-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then --?????,????,????
				AI:ChangeFaction(11)
				AI:SetTimer(1,1500,5)
				AI:SetArray(1,1)
		    AI:SetArray(9,0)
				AI:ScreenText("Lantia Wildblaze: You will regret this!",1)
				AI:Say("This will be our first and last meeting!")
			end
			a = AI:GetArray(7)
			if a == 1 then -- ?????????,??????
				AI:SetTimer(3,1000,999)
				AI:Say("Fool! To think you can even harm me!")
				AI:SetArray(7,2)
			end
			a = AI:GetArray(1)
			b = AI:GetArray(2)
			if b == 0 then --????,????
				if a == 6 then ---????
					AI:SetTimer(2,5000,9999)
					AI:SetArray(2,1)
				end
			end
			a = AI:GetArray(5)--???
			if a == 0 then
				AI:SetTimer(5,1000,9999)
				AI:SetArray(5,1)
			end
			a = AI:GetArray(3)
			if a == 0 then --????
				if hppct < 90 then
					AI:SetTimer(4,1000,1)
					AI:SetArray(3,1)
				end
			end
			if a == 1 then --????
				if hppct < 80 then
					AI:SetTimer(4,1000,1)
					AI:SetArray(3,2)
				end
			end			
			if a == 2 then --????
				if hppct < 70 then
					AI:SetTimer(4,1000,1)
					AI:SetArray(3,3)
				end
			end
			if a == 3 then --????
				if hppct < 60 then
					AI:SetTimer(4,1000,1)
					AI:SetArray(3,4)
				end
			end
			if a == 4 then --????
				if hppct < 50 then
					AI:SetTimer(4,1000,1)
					AI:SetArray(3,5)
				end
			end
			if a == 5 then --????
				if hppct < 40 then
					AI:SetTimer(4,1000,1)
					AI:SetArray(3,6)
				end
			end
			if a == 6 then --????
				if hppct < 30 then
					AI:SetTimer(4,1000,1)
					AI:SetArray(3,7)					
				end
			end	
			if a == 7 then --????
				if hppct < 20 then
					AI:SetTimer(4,1000,1)				
					AI:SetArray(3,8)
				end
			end
			if a == 8 then --????
				if hppct < 10 then
					AI:SetTimer(4,1000,1)
					AI:SetArray(3,9)
				end
			end									
			----------------------------------------------------------normal end
	end--functionEvent_ThinkingEND
-------------------------------------------------------------------------------	thinking end
			
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()


		--AI:ScreenText("",2)
		AI:Say("Fire will devour all!")
		AI:DelTimer(1)
		AI:DelTimer(2)
		AI:DelTimer(3)
		AI:DelTimer(4)
		AI:DelTimer(5)

	end