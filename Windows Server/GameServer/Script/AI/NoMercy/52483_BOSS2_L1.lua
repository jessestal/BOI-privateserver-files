----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012/08
--		Author:???
--		TaskName:?-BOSS2-Lv1:????-?
--		TaskID:52483_BOSS2_L1.lua
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		if nIndex == 1 then--????
			a = AI:GetArray(1)
			if a == 1 then
					AI:Say("I am sorry, but I am cursed to roam these halls, and to defend Raidne. You must die.")				
			end
			AI:SetArray(1,2)
			AI:SetArray(9,1)			
		end--??????

		if nIndex == 2 then--????
			a = AI:GetArray(2)
			if a == 1 then--????
				AI:AddSkill(2522,2)
				AI:UseSkill(2522,2)
				local talk = math.random(1,100)
				if talk < 30 then
					AI:Say("Accept your fate, as have I.")
				elseif talk < 60 then
				else
					AI:Say("Perhaps if I kill you, I will finally be free.")
				end		
				AI:PlayEffect("common\\xiwadeshouhu\\fire\\tx_xiwadeshouhu_fire.ini") 
			end--????end
		end--????end
		
		if nIndex == 3 then--????
				PosX = AI:GetPosX()
				PosY = AI:GetPosY()
				MonsterID = 52508
				Dir = 1
				AI:SummonMonsterByPos(MonsterID,PosX,PosY,Dir)
				AI:AddSkill(2530,6)
				AI:UseSkill(2530,6)	
				local screen = math.random(1,100)
				if screen < 30 then
					AI:ScreenText( "Tantalus: My curse haunts me." , 2)
				elseif screen < 60 then
				else
					AI:ScreenText( "Tantalus: I need to defend Raidne." , 2)
				end		
		end--????end
		
		if nIndex == 4 then--??1?? ??
				local PosX = AI:GetPosX()
				local PosY = AI:GetPosY()
--				a1 = PosX - 4
--				a2 = PosX + 4
--				b1 = PosY - 4
--				b2 = PosY + 4
--				AI:SummonMonsterByPos(52491,a1,PosY - 1, 1)
--				AI:SummonMonsterByPos(52491,a1,PosY + 1, 1)
--				AI:SummonMonsterByPos(52491,a2,PosY + 1, 1)
--				AI:SummonMonsterByPos(52491,a2,PosY - 1, 1)
--				AI:SummonMonsterByPos(52491,PosX - 1,b1, 1)
--				AI:SummonMonsterByPos(52491,PosX + 1,b1, 1)
--				AI:SummonMonsterByPos(52491,PosX - 1,b2, 1)		
----				AI:UseSkill(2334,3)
				AI:ScreenText( "Tantalus: Your soul shall roam these halls as well." , 2)
		end--??1??end							
						
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
--		n10 = AI:GetEctypeVarShort(mapid,83) --???BOSS?? 10?????

		if t == false then
--			if n10 == 0 then
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
--							AI:SetEctypeVarInteger( mapid, 119, 0 )--?????0
						end
					end
				end
--			end
		else
--		-----------------------------------------------------------??BOSS??
--			LimitX = AI:GetPosX()
--			LimitY = AI:GetPosY()
--	    	if LimitX >= 239 	then
--	    		progress = AI:GetArray(3)
--	    		AI:SetEctypeVarShort(mapid,88,progress)
--	    		AI:ScreenText( "GUID:03020000006", 2 )    		
--					AI:SetEctypeVarInteger( mapid, 119, hplose )
--					AI:SetEctypeVarShort(mapid,83,1)--?BOSS????
--					AI:SummonMonsterByPos(52380,216,80,180)
--					AI:SummonMonsterByPos(52441,216,80,180)
--		      AI:Exit()
--	    	end		
--	    	if LimitY >= 104 	then
--	    		progress = AI:GetArray(3)
--	    		AI:SetEctypeVarShort(mapid,88,progress)
--	    		AI:ScreenText( "GUID:03020000007", 2 )
--					AI:SetEctypeVarInteger( mapid, 119, hplose )
--					AI:SetEctypeVarShort(mapid,83,1)--?BOSS????
--		      AI:SummonMonsterByPos(52380,216,80,180)
--		      AI:SummonMonsterByPos(52441,216,80,180)
--		      AI:Exit()
--	    	end				
--		-----------------------------------------------------------??BOSS??end				
		-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then --?????,????,????
				AI:SetTimer(1,1000,1)
				AI:SetArray(1,1)
		    AI:SetArray(9,0)
				AI:Say("I am Tantalus, a hero cursed to roam these halls to defend Raidne.")
			end
			a = AI:GetArray(2)
			if a == 0 then --????,????
				AI:SetTimer(2,8000,9999)
				AI:SetTimer(3,20000,999)
				AI:SetArray(2,1)
			end
			a = AI:GetArray(3)
			if a == 0 then --????
				if hppct < 95 then
					AI:SetTimer(3,1000,1)
					AI:SetArray(3,1)
				end
			end
			if a == 1 then --????
				if hppct < 90 then
--					AI:SetTimer(3,1000,1)
					AI:SetArray(3,2)
				end
			end			
			if a == 2 then --????
				if hppct < 85 then
					AI:SetTimer(3,1000,1)
					AI:SetArray(3,3)
				end
			end
			if a == 3 then --????
				if hppct < 80 then
--					AI:SetTimer(3,1000,1)
					AI:SetArray(3,4)
				end
			end
			if a == 4 then --????
				if hppct < 75 then
					AI:SetTimer(3,1000,1)
					AI:SetArray(3,5)
				end
			end
			if a == 5 then --????
				if hppct < 70 then
--	          AI:SetTimer(3,1000,1) 
						AI:SetArray(3,6)
				end
			end
			if a == 6 then --????
				if hppct < 65 then
					AI:SetTimer(3,1000,1)
					AI:SetArray(3,7)					
				end
			end	
			if a == 7 then --????
				if hppct < 60 then
--					AI:SetTimer(3,1000,1)		
					AI:SetArray(3,8)
				end
			end
			if a == 8 then --????
				if hppct < 55 then
					AI:SetTimer(3,1000,1)				
					AI:SetArray(3,9)
				end
			end
			if a == 9 then --????
				if hppct < 50 then
--					AI:SetTimer(3,1000,1)
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
					AI:SetTimer(4,1000,1)
					AI:SetArray(3,12)
				end
			end
			if a == 12 then --????
				if hppct < 35 then
					AI:SetTimer(3,1000,1)
					AI:SetArray(3,13)
				end
			end	
			if a == 13 then --????
				if hppct < 30 then				
					AI:SetTimer(3,1000,1)				
					AI:SetArray(3,14)		
				end
			end
			if a == 14 then --????
				if hppct < 25 then
					AI:SetTimer(3,1000,1)
					AI:SetArray(3,15)
				end
			end			
			if a == 15 then --????
				if hppct < 20 then
					AI:SetTimer(3,1000,1)
					AI:SetArray(3,16)
				end
			end
			if a == 16 then --????
				if hppct < 15 then
					AI:SetTimer(3,1000,1)
					AI:SetArray(3,17)
					AI:AddSkill(2183,1)
					AI:UseSkill(2183,1)
				end
			end
			if a == 17 then --????
				if hppct < 10 then
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

--		if (( PosX == 216) and ( PosY == 80 )) then	
--			AI:SetTimer(8,3200,3)--??????,?Lv2??
--		end		
	end	
	
	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
				
--		if nIndex == 1 then
--			AI:AddSeekPos(mapid,216,80)
--		end
	end
			
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()


		--AI:ScreenText("",2)
		AI:Say("Was death the key to my freedom?")
		AI:DelTimer(1)
		AI:DelTimer(2)
		AI:DelTimer(3)
		AI:DelTimer(4)

	end