--??
----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012/03
--		Author:???
--		TaskName:?-3-SS:????-?
--		TaskID:52327_BOSS_h_ss.lua
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		if nIndex == 1 then--????
			a = AI:GetArray(1)
			if a == 1 then
					AI:PlayAction("attack1", 0, 0)
					AI:Say("This Naga warriors's body is very powerful. Once it is fully under my power, dominating the ocean will be a simple mater!")
					AI:ScreenText( "Kaltim: You insidious monster! Get out of my body!!" , 2)	
					AI:SetArray(1,2)
					AI:SetTimer(1,2500,1)
			elseif a == 2 then				
					AI:ScreenText( "Abyss Lord: Hah! Greed is in the nature of all creatures. Just accept my power, and become the strongest warrior!" , 2)	
					AI:PlayAction("attack2", 0, 0)
					AI:SetArray(1,3)
					AI:SetTimer(1,3500,1)
			elseif a == 3 then				
					AI:ScreenText( "Kaltim: I can feel the power suring through me!" , 2)	
					AI:PlayAction("attack3", 0, 0)
					AI:ChangeFaction(1)
					AI:SetArray(1,4)
					AI:SetArray(9,1)					
			end
		end--??????

		if nIndex == 2 then--????
			a = AI:GetArray(2)
			if a == 1 then--????
				AI:PlayAction("attack2",0,0)
				AI:AddSkill(2337,1)
				AI:UseSkill(2337,1)
				rand = AI:GetRand(100)
				if rand < 15 then--????1--start
					AI:Say("Try some of the Thunder Electrode!")
				elseif rand < 30 then--????1--end--????2--start				
					AI:Say("Experience the powerful energy within my body!")
				elseif rand < 45 then--????1--end--????3--start				
					AI:Say("Just look at your fragile little body!")
				elseif rand < 60 then--????1--end--????3--start				
					AI:Say("This is the power that I crave!")					
				else--????2--end
--				  AI:Say("This is the power that I crave!")				  
				end--??all--end
			end--????end
		end--????end
		
		if nIndex == 3 then--????
				AI:PlayAction("attack2",0,0)
				AI:AddSkill(2337,2)
				AI:UseSkill(2337,2)
--				AI:ScreenText( "" , 2)
				AI:Say("My lightning will burn you to ashes!")
		end--????end
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
			if a == 0 then --?????,????,????
				AI:ChangeFaction(11)
				AI:Say("Oh, look, some humans have come to trouble me. I'm still adjusting to this Naga body.")
				AI:PlayAction("specialidle",0,0)
				AI:ScreenText( "Kaltim: The strongest Naga Warriors will destroy you!" , 2)
				AI:SetArray(1,1)
		    AI:SetArray(9,0)
				AI:SetTimer(1,2000,1)
			end
			a = AI:GetArray(2)
			if a == 0 then --????,????
				AI:SetTimer(2,5000,9999)
				AI:SetArray(2,1)
			end
			a = AI:GetArray(3)
			if a == 0 then --????
				if hppct < 90 then
					AI:SetTimer(3,1000,1)
					AI:SetArray(3,1)
				end
			end
			if a == 1 then --????
				if hppct < 80 then
					AI:SetTimer(3,1000,1)
					AI:SetArray(3,2)
				end
			end			
			if a == 2 then --????
				if hppct < 70 then
					AI:SetTimer(3,1000,1)
					AI:SetArray(3,3)
				end
			end
			if a == 3 then --????
				if hppct < 60 then
					AI:SetTimer(3,1000,1)
					AI:SetArray(3,4)
				end
			end
			if a == 4 then --????
				if hppct < 50 then
					AI:SetTimer(3,1000,1)
					AI:SetArray(3,5)
				end
			end
			if a == 5 then --????
				if hppct < 40 then
					AI:SetTimer(3,1000,1)
					AI:SetArray(3,6)
				end
			end
			if a == 6 then --????
				if hppct < 30 then
					AI:SetTimer(3,1000,1)
					AI:AddSkill(2183,3)--??,3
					AI:UseSkill(2183,3)
					AI:SetArray(3,7)					
				end
			end	
			if a == 7 then --????
				if hppct < 40 then
					AI:SetTimer(3,1000,1)
					AI:AddSkill(2183,3)--??,3
					AI:UseSkill(2183,3)	
					AI:PlayAction("attack3", 0, 0)				
					AI:AddSkill(2337,3)--??,3
					AI:UseSkill(2337,3)
					AI:SetArray(3,8)
				end
			end
			if a == 8 then --????
				if hppct < 10 then
					AI:SetTimer(3,1000,1)
					AI:AddSkill(2183,3)--??,3
					AI:UseSkill(2183,3)
					AI:PlayAction("attack3", 0, 0)
					AI:AddSkill(2337,3)--??,3
					AI:UseSkill(2337,3)					
					AI:SetArray(3,9)
				end
			end
			----------------------------------------------------------normal end

--		test=AI:GetEctypeVarShort(mapid,99)
--		if test = 1 then--??AI??
--			AI:Say("hppct="..tostring(hppct))
--			AI:SetEctypeVarShort(mapid,99,0)
--		end
		end --t-end
	end--functionEvent_ThinkingEND
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()


		--AI:ScreenText("",2)
		AI:Say("My queen, while searching for the truth, I was improsoned. Thanks to these explorers, I am finally free.")
		AI:ScreenText("Kaltim: I was imprisoned while searching for the truth, but now, I am finally free again. Thank you.",2)
		AI:DelTimer(1)
		AI:DelTimer(2)
		AI:DelTimer(3)
		AI:DelTimer(9)

	end

	

	
	
