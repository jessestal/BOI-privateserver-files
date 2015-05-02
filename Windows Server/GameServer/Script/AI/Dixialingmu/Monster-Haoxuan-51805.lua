
----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2011/08
--		Author:???
--		TaskName:?-???-?
--		TaskID:
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--start
			a = AI:GetArray(1)
			if a == 1 then
				AI:SetArray(1,1)
				AI:ChangeFaction(1)
				AI:GetRandTarget()
				AI:SetArray(1,2)
				AI:SetArray(9,1)
				AI:Say("There is no going back, no salvation!")
				AI:AddSkill(2174,1)
				AI:UseSkill(2174,1)
			end
		end

		if nIndex == 2 then--nor-1-8s
			a = AI:GetArray(2)
			if a == 1 then
				AI:AddSkill(2175,1)
				AI:UseSkill(2175,1)
				rand = AI:GetRand(100)
				if rand < 33 then
					AI:ScreenText( "Chaos Tyrant: Feel my pain!" , 2)
					AI:Say("Feel my pain!")
				else
					if rand < 66 then
						AI:ScreenText( "Chaos Tyrant: Worms! Kneel down and worship me!" , 2)
						AI:Say("Worms! Kneel down and worship me!")
					else
						AI:ScreenText( "Chaos Tyrant: There is no going back, no salvation!" , 2)
						AI:Say("It is impossible, you'd better give up.")
					end
				end
			end
		end--nor-1-end

		if nIndex == 3 then--nor-2-45s
			a = AI:GetArray(3)
			if a == 1 then
				lv = AI:GetArray(8)
				if lv < 10 then
					lv = lv + 1
				end
				AI:SetArray(8,lv)
				AI:AddSkill(2176,lv)
				AI:UseSkill(2176,lv)
				AI:Say("Chaos Tyrant: What did I do wrong!?")
				AI:ScreenText( "Chaos Tyrant: What did I do wrong!?" , 2)
			end
		end--nor-2-end

		if nIndex == 4 then--nor-3-
			a = AI:GetArray(4)
			if a == 1 then
				AI:SetArray(4,1)
				AI:AddSkill(2177,1)
				AI:UseSkill(2177,1)
				AI:ScreenText( "Chaos Tyrant: You will know my terrible power!" , 2)
				AI:Say("Chaos Tyrant: You will know my terrible power!")
			end
		end--nor-3-end

	end
------------------------------------------------------------------------thinking
--2174	??			??	??			??+100%,??999?
--2175	????	8s		??1?		??(????*2)???,??3?
--2176	??			45s		10*aoe*10	??(????*0.5)???,??????5%,????5%
--			*???,??10?(50%),??15?
--2177	????	hp<15	??			?????100%,??????800??????,??999?

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		hpn = AI:GetHP()
		hpmax = AI:GetHPMax()
		hppct = hpn/hpmax*1000
 		t = AI:HaveAttackTarget()
 		a = AI:GetArray(1)
---------------------------------------------------------ShutDown-system
		if t == false then
			if a > 0 then
				if hpn == hpmax then
					CanBeShutDown = AI:GetArray(9)
					if CanBeShutDown == 1 then
				    AI:DelTimer(0)
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
					end
				end
			end
		else
		-----------------------------------------------------------normal-start
			if a == 0 then --?????
				AI:SetTimer(1,1500,1)
				AI:SetArray(1,1)
				AI:ChangeFaction(5)
		    AI:SetArray(9,0)
				AI:Say("Vulgars, kneel down and worship me!")
				AI:ScreenText( "Chaos Tyrant: The Pangaea Sword... my Emperor, why!?" , 2)
			end
			a = AI:GetArray(2)
			if a == 0 then --????
				AI:SetTimer(2,8000,999)
				AI:SetTimer(3,45000,999)--*cation
				AI:SetArray(2,1)
				AI:SetArray(3,1)
			end
			a = AI:GetArray(4)
			if a == 0 then --????
				if hppct < 255 then --????
					AI:SetTimer(4,1000,1)
					AI:SetArray(4,1)
				end
			end			
			----------------------------------------------------------normal-end
		end


	end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()




		AI:ScreenText( "Chaos Tyrant: My Emperor, forgive... me..." , 2)

	end