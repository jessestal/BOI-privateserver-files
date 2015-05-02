----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2011/08
--		Author:???
--		TaskName:?-??monsterAI-?
--		TaskID:???2
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--????
			a = AI:GetArray(1)
			if a == 1 then
				AI:ChangeFaction(1)
				AI:GetRandTarget()
				AI:SetArray(1,2)
				AI:SetArray(9,1)
				aistatus=AI:GetEctypeVarShort(mapid,7)
				if aistatus == 4 then
					aistatus=5
					AI:SetEctypeVarShort(mapid,7,aistatus)
					AI:Say("Prepare to meet Odin, you fools! There's no way you can stop me!")
					AI:ScreenText( "Hades: Prepare to meet Odin, you fools! There's no way you can stop me!" , 2)
					AI:PlayAction("\\common\\liuxingyu2\\keep\\tx_liuxingyu2_keep_01.ini",0,1)
					hpmax=AI:GetHPMax()
					dhp=hpmax*0.2
					AI:LoseHPInstant(dhp)
				end
			end
		end

--2244	????	???   30286		10????

		if nIndex == 2 then--????
			a = AI:GetArray(2)
			if a == 1 then
				rand = AI:GetRand(100)
				if rand < 75 then				
					AI:AddSkill(2233,1)
					AI:UseSkill(2233,1)
					if rand < 20 then
						AI:Say("Smashing Ice!")
					else
						if rand < 40 then
							AI:Say("You pitiful little worm! Haha!")
						end
					end
				else
					AI:AddSkill(2244,1)
					AI:UseSkill(2244,1)
					if rand < 20 then
						AI:Say("Rain of Fire!")
					else
						if rand < 40 then
							AI:Say("You pitiful little worm! Haha!")
						end
					end
				end
			end
		end--????end
		
		if nIndex == 5 then
			a = AI:GetArray(5)
			if a == 1 then
				AI:ScreenText( "If the Knell is not destroyed within 20 seconds, Odin's heart will be destroyed!" , 2)
				AI:SummonMonsterByPos(30308,208,65)
			end
		end
			
		if nIndex == 6 then
			a = AI:GetArray(6)
			if a == 28 then
				AI:ScreenText("Hades: What right does a Dark Knight like you have to stand up to me!?",2)
			end
			if a == 33 then
				AI:ScreenText("Agritt: Did you not look down upon me with contempt?",2)
			end
			if a == 41 then
				AI:ScreenText("Hades: No, no, I never looked down upon you! Why, I never even acknowledged your existence!",2)
			end
			if a == 49 then
				AI:ScreenText("Agritt: Is that so? Then perhaps you don't realize what power I wield!",2)
			end
			if a == 57 then
				AI:ScreenText("Hades: What... how... how could you...",2)
			end
			if a == 65 then
				AI:ScreenText("Agritt: I've long known your weakness, Hades. I'll end your life, here and now!",2)
			end
			a=a+1
			AI:SetArray(6,a)
		end
--0.25		0.2		0.15		0.4
--3				6			10			1

		if nIndex == 4 then--????
			a = AI:GetArray(4)
			if a == 1 then
				-----------------------------------?????? start
				rand = AI:GetRand(100)
				if rand < 25 then--?3%?
					lpct=2
				else
					if rand < 45 then--?6%?
						lpct=5
					else
						if rand < 60 then--?10%?
							lpct=8
						else--?1%?
							lpct=1
						end
					end
				end
				hpn = AI:GetHP()
				hpmax = AI:GetHPMax()
				hppct = hpn/hpmax*100
				if lpct < hppct then
					lshp = hpmax*lpct/100
--					AI:Say("hppct = "..tostring(hppct))
--					AI:Say("losehp = "..tostring(lpct))
				else
					lshp = hpmax*0.01
--					AI:Say("hppct = "..tostring(hppct))
--					AI:Say("losehp1")
				end
				AI:LoseHPInstant(lshp)
				-----------------------------------?????? start
			end
		end--????end
		
	end
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		hpn = AI:GetHP()
		hpmax = AI:GetHPMax()
		hppct = hpn/hpmax*1000
 		t = AI:HaveAttackTarget()
 		a = AI:GetArray(1)
		test=AI:GetEctypeVarShort(mapid,99)
--		if test == 1 then
--			aistatus=AI:GetEctypeVarShort(mapid,7)
--			AI:Say("aistatus="..tostring(aistatus))
--			AI:Say("hppct="..tostring(hppct))
--			AI:SetEctypeVarShort(mapid,99,0)
--		end
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
				    AI:DelTimer(7)
		    		AI:SetArray(1,0)
		    		AI:SetArray(2,0)
		    		AI:SetArray(9,0)
						AI:ChangeFaction(1)
					end
				end
			end
		else
		-----------------------------------------------------------normal start
			if a == 0 then --?????
				AI:SetTimer(1,1500,1)
				AI:SetArray(1,1)
				AI:ChangeFaction(5)
		    AI:SetArray(9,0)
			end
			a = AI:GetArray(2)
			if a == 0 then --??
				AI:SetTimer(2,6000,9999)
				AI:SetArray(2,1)
			end
			a = AI:GetArray(4)
			if a == 0 then --hp??
				AI:SetTimer(4,3500,9999)
				AI:SetArray(4,1)
			end
			a = AI:GetArray(5)
			if a == 0 then --??2
				AI:SetTimer(5,9999,1)
				AI:SetArray(5,1)
			end
			a = AI:GetArray(6)
			if a == 0 then --??
				AI:SetTimer(6,1000,9999)
				AI:SetArray(6,1)
			end
			a = AI:GetArray(3)
			if a == 0 then --????
				if hppct < 50 then
					AI:SetEctypeVarShort(mapid,7,7)
					AI:SelfMurder()
				end
			end
			----------------------------------------------------------normal start
		end


	end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()


		posx = AI:GetPosX()
		posy = AI:GetPosY()
		AI:SummonMonsterByPos(30316,posx,posy)
		AI:Say( "How!? How could this be!? How could such a masterful plan end in failure!?")
		AI:ScreenText("Hades: How!? How could this be!? How could such a masterful plan end in failure!?",2)
		
		AI:DelTimer(1)
		AI:DelTimer(2)
		AI:DelTimer(3)
		AI:DelTimer(4)
		AI:DelTimer(5)
		AI:DelTimer(6)
		AI:DelTimer(7)
	end
	
	
	