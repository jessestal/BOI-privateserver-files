--??
----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012/03
--		Author:???
--		TaskName:?-2-1 BOSS-ss:????-?
--		TaskID:
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		if nIndex == 1 then--????
			a = AI:GetArray(1)
			if a == 1 then
					AI:Say("Many ignorant people have come here, and not a single one has escaped their fate.")
			end
			AI:SetArray(1,2)
			AI:SetArray(9,1)
		end--??????

		if nIndex == 2 then--????
			a = AI:GetArray(2)
			if a == 1 then--????
				rand = AI:GetRand(100)--(????0~100???)
				if rand < 45 then--??1--start
					AI:AddSkill(2331,3)
					AI:UseSkill(2331,3)
					rand = AI:GetRand(100)
					if rand < 33 then--??1??--start
						AI:Say("Glory of Naga")
					end--??2??--end
				else--??1--end
					if rand < 90 then--??2--start
						AI:AddSkill(2331,2)
						AI:UseSkill(2331,2)
						rand = AI:GetRand(100)
						if rand < 33 then--??2??--start
--							AI:ScreenText("",2)
							AI:Say("I'll take your life.")
						else
							if rand < 66 then
--								AI:ScreenText("",2)
								AI:Say("Relentless Tsunami")
							else
--								AI:ScreenText("",2)
								AI:Say("All of you will be dead by my hands!")
							end
						end--??2??--end
					end--??2--end
				end--??all--end
			end--????end
		end--????end
		
		if nIndex == 3 then--????
				AI:AddSkill(2331,3)
				AI:UseSkill(2331,3)
--				AI:ScreenText( "" , 2)
				AI:Say("Wrath of Naga")
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
				AI:Say("I smell fresh blood.")
			end
			a = AI:GetArray(2)
			if a == 0 then --????,????
				AI:SetTimer(2,10000,9999)
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
					AI:SetArray(3,8)
				end
			end
			if a == 8 then --????
				if hppct < 10 then
					AI:SetTimer(3,1000,1)
					AI:AddSkill(2183,3)--??,3
					AI:UseSkill(2183,3)					
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
		AI:Say("Is this power not enough...")
		AI:DelTimer(1)
		AI:DelTimer(2)
		AI:DelTimer(3)
		AI:DelTimer(9)

	end

	

	
	
