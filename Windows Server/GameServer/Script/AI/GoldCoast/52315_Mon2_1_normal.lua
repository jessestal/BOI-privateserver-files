--??
----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012/03
--		Author:???
--		TaskName:?-2-1 Mon-ss:????-?
--		TaskID:
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		if nIndex == 1 then--????
			a = AI:GetArray(1)
			if a == 1 then
					AI:Say("You must see for yourself the terrible power that the ocean wields.")
			end
			AI:SetArray(1,2)
			AI:SetArray(9,1)
		end--??????

		if nIndex == 2 then--????
			a = AI:GetArray(2)
			if a == 1 then--????
				rand = AI:GetRand(100)--(????0~100???)
				if rand < 33 then--??1--start
					AI:AddSkill(2331,1)
					AI:UseSkill(2331,1)
					rand = AI:GetRand(100)
					if rand < 33 then--??1??--start
						AI:Say("Tide")
					end--??2??--end
				else--??1--end
					if rand < 66 then--??2--start
						AI:AddSkill(2331,1)
						AI:UseSkill(2331,1)
						rand = AI:GetRand(100)
						if rand < 33 then--??2??--start
--							AI:ScreenText("",2)
							AI:Say("Fierce Hurricane")
						else
							if rand < 66 then
--								AI:ScreenText("",2)
								AI:Say("Hurricane")
							else
--								AI:ScreenText("",2)
								AI:Say("Power of Ocean")
							end
						end--??2??--end
					end--??2--end
				end--??all--end
			end--????end
		end--????end
		
		if nIndex == 3 then--????
				AI:AddSkill(2331,1)
				AI:UseSkill(2331,1)
--				AI:ScreenText( "" , 2)
				AI:Say("Wrath of Ocean")
		end--????end
		if nIndex == 4 then--??????
			a = AI:GetArray(4)
			b = AI:GetEctypeVarShort(mapid,18)
			if a == 0 then
				if b == 0 then--?????
					AI:ChangeFaction(11)
					AI:UpdateSeekPath(1)
					AI:ScreenText( "Naga Warrior: You weak little humans want our help? Hah! Not in this life!" , 2)
					AI:SetArray(4,1)
					AI:DelTimer(4)
				end
			end
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
		    AI:ScreenText( "Naga Warrior: Who dares to defy the ocean's power?" , 2)
				AI:Say("Who dares to defy the ocean's power?")
			end
			a = AI:GetArray(2)
			if a == 0 then --????,????
				AI:SetTimer(2,10000,9999)
				AI:SetTimer(4,2000,9999)
				AI:SetArray(2,1)
			end
			a = AI:GetArray(3)
			if a == 0 then --????
				if hppct < 80 then
					AI:SetTimer(3,1000,1)
					AI:SetArray(3,1)
				end
			end
			if a == 1 then --????
				if hppct < 65 then
					AI:SetTimer(3,1000,1)
					AI:SetArray(3,2)	
				end
			end			
			if a == 2 then --????
				if hppct < 50 then
					AI:SetTimer(3,1000,1)					
					AI:SetArray(3,3)
					AI:SetArray(4,1)
					AI:DelTimer(4)
				end
			end
			if a == 3 then --????
				if hppct < 35 then
					AI:SetTimer(3,1000,1)
					AI:SetArray(3,4)
				end
			end
			if a == 4 then --????
				if hppct < 20 then
					AI:SetTimer(3,1000,1)				
					AI:SetArray(3,5)
				end
			end
			if a == 5 then --????
				if hppct < 10 then
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
		AI:Say("I was defeated.")
		AI:DelTimer(1)
		AI:DelTimer(2)
		AI:DelTimer(3)
		AI:DelTimer(9)

	end

	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		a = AI:GetArray(5)

		if (( PosX == 79) and ( PosY == 238 )) then
			if a == 0 then
				AI:SetArray(5,1)					
			end
		end
		if (( PosX == 75) and ( PosY == 220 )) then	
			if a == 1 then
				AI:SetArray(5,2)	
				AI:Exit()
			end
		end
		
	end




	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		if nIndex == 1 then
			AI:AddSeekPos(mapid,79,238)
			AI:AddSeekPos(mapid,75,220)
		end
		
	end	

	
	
