----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012-8
--		Author:???
--		TaskName:?-??AI??????-?
--		TaskID:
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--???1--start
			a=AI:GetArray(1)
			if a == 1 then
				AI:ScreenText("Lord Boreas: I am the bringer of the deathly frigid wind!",1)
				AI:PlayAction("specialidle",0,0)
				AI:SetArray(1,2)
			end
			if a == 2 then
				AI:PlayAction("attack2",0,0)
				AI:ScreenText("Lord Boreas: Millions fall beneath me, for I am the most powerful God of Wind!",1)
				AI:SetArray(1,3)
			end
			if a == 3 then
				AI:ScreenText("Lord Boreas: Is this all you have to show against the God of the North Wind?!",1)
				AI:SetArray(1,3)
			end			
				
		end--???1--------------------end
		
		if nIndex == 2 then--???2??--start
			a=AI:GetArray(2)
			if a == 1 then
				AI:AddSkill(2384,1)
				AI:UseSkill(2384,1)
				rand = AI:GetRand(100)
				if rand < 25 then
					AI:Say("Ice Lattice!")
				end
			end
		end--???2--------------------end
		
		if nIndex == 3 then--???3??--start
			AI:AddSkill(2361,1)
			AI:UseSkill(2361,1)
			rand = AI:GetRand(100)
			if rand < 25 then
				AI:Say("Thunder Fist!")
			end
		end--???3--------------------end	
		
		if nIndex == 4 then--???3??--start
			AI:AddSkill(2374,1)
			AI:UseSkill(2374,1)
			rand = AI:GetRand(100)
			if rand < 25 then
				AI:Say("Obey me!")
			end
		end--???3--------------------end				
		
		if nIndex == 5 then--???3??--start
			AI:AddSkill(2385,1)
			AI:UseSkill(2385,1)
			rand = AI:GetRand(100)
			if rand < 25 then
				AI:Say("Primal Strength")
			end
		end--???3--------------------end						
		
		if nIndex == 6 then--????
			AI:AddSkill(2364,1)
			AI:UseSkill(2364,1)
			rand = AI:GetRand(100)
			if rand < 25 then
				AI:Say("Golden Shield!")
			end
		end--???3--------------------end				
		
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		hpn = AI:GetHP()
		hpmax = AI:GetHPMax()
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
				    AI:DelTimer(4)
				    AI:DelTimer(5)
				    AI:DelTimer(6)
						AI:SetArray(1,0)
						AI:SetArray(2,0)
						AI:SetArray(3,0)
						AI:SetArray(4,0)
						AI:SetArray(5,0)
						AI:SetArray(6,0)
						AI:SetArray(7,0)
						AI:SetArray(8,0)
						AI:SetArray(9,0)
					end
				end
			end
		else		
		-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then
				AI:SetTimer(1,3000,3)
				AI:SetArray(1,1)
			end
			a = AI:GetArray(2)
			if a == 0 then
				AI:SetTimer(2,5000,9999)
				AI:SetTimer(6,60000,9999)
				AI:SetArray(2,1)
			end
			a = AI:GetArray(3)
			if a == 0 then --????
				if hppct < 95 then
					AI:SetTimer(5,1000,1)
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
					AI:SetTimer(5,1000,1)
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
					AI:SetTimer(5,1000,1)
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
					AI:SetTimer(5,1000,1)
					AI:SetArray(3,7)
				end
			end			
			if a == 7 then --????
				if hppct < 60 then
					AI:SetTimer(5,1000,1)
					AI:SetArray(3,8)
				end
			end
			if a == 8 then --????
				if hppct < 55 then
					AI:SetTimer(5,1000,1)
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
					AI:SetTimer(5,1000,1)
					AI:SetArray(3,11)
				end
			end
			if a == 11 then --????
				if hppct < 40 then
					AI:SetTimer(5,1000,1)
					AI:SetArray(3,12)
				end
			end			
			if a == 12 then --????
				if hppct < 35 then
					AI:SetTimer(5,1000,1)
					AI:SetTimer(3,1000,1)
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
					AI:SetTimer(5,1000,1)
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
					AI:SetTimer(5,1000,1)
					AI:SetTimer(4,1000,1)
					AI:SetArray(3,18)
				end
			end
			if a == 18 then --????
				if hppct < 5 then
					AI:SetTimer(3,1000,1)
					AI:SetTimer(5,1000,1)
					AI:SetArray(3,19)
				end
			end								
			
					
			----------------------------------------------------------normal end
		hpn = AI:GetHP()
		hpmax = AI:GetHPMax()
		hppct = hpn/hpmax*1000
		hppct = math.floor(hppct)
		AI:SetEctypeVarShort(mapid,25,hppct)
--		test=AI:GetEctypeVarShort(mapid,99)
--		if test == 1 then--??AI??
--			AI:Say("hppct="..tostring(hppct))
--			AI:SetEctypeVarShort(mapid,99,0)
--		end
		end--t end
	end--functionEvent_ThinkingEND
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		AI:SummonMonsterByPos(54243,164,149)
		AI:SummonMonsterByPos(54243,164,158)
		AI:SummonMonsterByPos(54243,159,153)
		AI:SummonMonsterByPos(54243,169,153)
		AI:AddNPC(865)
		AI:DelTimer(1)
		AI:DelTimer(2)
		AI:DelTimer(3)
		AI:DelTimer(4)
		AI:DelTimer(5)
		AI:DelTimer(6)
		AI:SetEctypeVarShort(mapid,25,0)
		AI:ScreenText("Lord Boreas: It cannot be! My throne. it belongs to me!",1)
	end

	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

--		if (( PosX == xx) and ( PosY == yy )) then
--			AI:Exit()
--		end

	end

	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then
			xx,yy=0,0
			AI:AddSeekPos(mapid,xx,yy)
		end

	end