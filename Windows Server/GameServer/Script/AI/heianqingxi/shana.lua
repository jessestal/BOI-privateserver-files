----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012/03
--		Author:???
--		TaskName:?-??:????-?
--		TaskID:
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
--2163	??	??+200%,??+100%,??300?
--2174	??	??+100%,??999?
--2159	??  ??60%,????500???,??10?
		if nIndex == 1 then--????
			a=AI:GetArray(1)
			if a == 1 then
				st=AI:GetEctypeVarShort(mapid,21)
				if st < 2 then
					AI:UpdateSeekPath(1)
					AI:Say("I do not like to win by numbers alone. Next time bring more people! Goodbye!")
					AI:ScreenText("Specter Queen Sharna has run away!",2)
					AI:DelTimer(2)
					AI:DelTimer(3)
					AI:SetEctypeVarShort(mapid,20,4)
					AI:AddNPC(1970)
				else
					AI:ChangeFaction(1)
--					AI:GetRandTarget()
					AI:AddSkill(2159,1)
					AI:UseSkill(2159,1)
					AI:Say("let me show you my true strength!")
				end
			end
--			if a == 2 then
--				AI:DelTimer(1)
--				AI:SetArray(9,1)
--			end
--			a=a+1
			AI:SetArray(1,2)
		end--??????

		if nIndex == 2 then--????
			a = AI:GetArray(2)
			if a == 1 then--????
				rand = AI:GetRand(100)--(????0~100???)
				if rand < 33 then--??1--start
					AI:AddSkill(2159,1)
					AI:UseSkill(2159,1)
					rand = AI:GetRand(100)
					if rand < 33 then--??1??--start
--						AI:ScreenText("",2)
						AI:Say("Absorb Souls!")
					else
						if rand < 66 then
--							AI:ScreenText("",2)
							AI:Say("There is no use for life in the world of specters!")
						else
--							AI:ScreenText("",2)
							AI:Say("You will die a slow death, and I will take over your world!")
						end
					end--??2??--end
				else--??1--end
					if rand < 66 then--??2--start
						AI:AddSkill(8733,1)
						AI:UseSkill(8733,1)
						rand = AI:GetRand(100)
						if rand < 33 then--??2??--start
--							AI:ScreenText("",2)
							AI:Say("Fortify Blast!")
						else
							if rand < 66 then
--								AI:ScreenText("",2)
								AI:Say("I know why you've come here, but are you sure you're ready for this?")
							else
--								AI:ScreenText("",2)
								AI:Say("I'll torment you good!")
							end
						end--??2??--end
					end--??2--end
				end--??all--end
			end--????end
		end--????end
		
		if nIndex == 3 then--????
			a = AI:GetArray(3)
			if a == 1 then
				AI:AddSkill(2163,1)
				AI:UseSkill(2163,1)
--				AI:ScreenText( "" , 2)
				AI:Say("I'm angry!")
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
		
 		t = AI:HaveAttackTarget()--????
		if t == false then
			a = AI:GetArray(1)
			if a > 0 then
				if hpn == hpmax then
					CanBeShutDown = AI:GetArray(9)
					if CanBeShutDown == 1 then
						AI:DelTimer(1)
						AI:DelTimer(2)
						AI:DelTimer(3)
						AI:DelTimer(9)
						AI:SetArray(1,0)
						AI:SetArray(2,0)
						AI:SetArray(3,0)
						AI:SetArray(9,0)
--						AI:ChangeFaction(1)
					end
				end
			end
		else
		-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then --?????,????,????
				AI:SetTimer(1,1000,1)
				AI:SetArray(1,1)
				AI:ChangeFaction(11)
		    AI:SetArray(9,0)
				AI:Say("Try the power of the Specter Queen Sharna!")
			end
			a = AI:GetArray(2)
			if a == 0 then --????,????
				AI:SetTimer(2,5000,9999)
				AI:SetArray(2,1)
			end
			a = AI:GetArray(3)
			if a == 0 then --????,????
				if hppct < 40 then
					AI:SetTimer(3,1000,1)
					AI:SetArray(3,1)
				end
			end
			----------------------------------------------------------normal end
		end
--		test=AI:GetEctypeVarShort(mapid,99)
--		if test = 1 then--??AI??
--			AI:Say("hppct="..tostring(hppct))
--			AI:SetEctypeVarShort(mapid,99,0)
--		end

	end--functionEvent_ThinkingEND
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()


		--AI:ScreenText("",2)
		AI:Say("I may be a ghost... but I was once a beautiful queen!")
		AI:AddNPC(1970)
		AI:DelTimer(1)
		AI:DelTimer(2)
		AI:DelTimer(3)
		AI:DelTimer(9)

	end

	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if (( PosX == 99) and ( PosY == 94 )) then
			AI:Exit()
		end
		
	end
	
	
	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		if nIndex == 1 then
			AI:AddSeekPos(mapid,99,94)
		end
		
	end
