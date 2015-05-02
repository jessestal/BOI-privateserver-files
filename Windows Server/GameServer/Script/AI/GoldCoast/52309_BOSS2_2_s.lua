--??
----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012/03
--		Author:???
--		TaskName:?-2-2??S:????-?
--		TaskID:52309_BOSS2_2_s.lua
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		if nIndex == 1 then--????
			a = AI:GetArray(1)
			if a == 1 then
					AI:Say("Sealed in the array for a while.")
			end
			AI:SetArray(1,2)
			AI:SetArray(9,1)
		end--??????

		if nIndex == 2 then--????
			a = AI:GetArray(2)
			if a == 1 then--????
				rand = AI:GetRand(100)--(????0~100???)
				if rand < 35 then--??1--start
					AI:AddSkill(2333,2)
					AI:UseSkill(2333,2)
					rand = AI:GetRand(100)
					if rand < 33 then--??1??--start
						AI:Say("See my strength!")
					end--??2??--end
				else--??1--end
					if rand < 70 then--??2--start
						AI:AddSkill(2333,1)
						AI:UseSkill(2333,1)
						rand = AI:GetRand(100)
						if rand < 33 then--??2??--start
--							AI:ScreenText("",2)
							AI:Say("A struggling strike!")
						else
							if rand < 66 then
--								AI:ScreenText("",2)
								AI:Say("You are unable to unlock the seal.")
							else
--								AI:ScreenText("",2)
								AI:Say("You shall know my true power.")
							end
						end--??2??--end
					end--??2--end
				end--??all--end
			end--????end
		end--????end
		
		if nIndex == 3 then--????
				AI:AddSkill(2333,2)
				AI:UseSkill(2333,2)
--				AI:ScreenText( "" , 2)
				AI:Say("Prestige of the Dragons")
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
				AI:SetTimer(1,1000,1)
				AI:SetArray(1,1)
		    AI:SetArray(9,0)
				AI:Say("Who triggered the Magic Guardian?")
			end
			a = AI:GetArray(2)
			if a == 0 then --????,????
				AI:SetTimer(2,15000,9999)
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
				if hppct < 75 then
					AI:SetTimer(3,1000,1)
					AI:SetArray(3,2)
				end
			end			
			if a == 2 then --????
				if hppct < 60 then
					AI:SetTimer(3,1000,1)
					AI:SetArray(3,3)
				end
			end
			if a == 3 then --????
				if hppct < 45 then
					AI:SetTimer(3,1000,1)
					AI:SetArray(3,4)
				end
			end
			if a == 4 then --????
				if hppct < 30 then
					AI:SetTimer(3,1000,1)
					AI:AddSkill(2183,3)--??,3
					AI:UseSkill(2183,3)					
					AI:SetArray(3,5)
				end
			end
			if a == 5 then --????
				if hppct < 15 then
					AI:SetTimer(3,1000,1)
					AI:AddSkill(2183,3)--??,3
					AI:UseSkill(2183,3)					
					AI:SetArray(3,6)
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
		AI:Say("All returns to dust...")
		AI:DelTimer(1)
		AI:DelTimer(2)
		AI:DelTimer(3)
		AI:DelTimer(9)

	end

	

	
	
