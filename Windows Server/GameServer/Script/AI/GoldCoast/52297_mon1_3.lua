--??
----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012/03
--		Author:???
--		TaskName:?-????:????-?
--		TaskID:
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		if nIndex == 1 then--????
			a = AI:GetArray(1)
			if a == 1 then
					AI:UpdateSeekPath(1)
					AI:Say("I'm not sure what, but something feels wrong here.")
					AI:ScreenText("The Sea Monster chieftain is trying to escape!",2)
			end
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
--						if rand < 66 then
--							AI:ScreenText("",2)
--							AI:Say("GUID:02756000003")
--						else
--							AI:ScreenText("",2)
							AI:Say("You will die a slow death, and I will take over your world!")
--						end
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
		-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then --?????,????,????
				AI:SetTimer(1,1000,1)
				AI:SetArray(1,1)
				AI:ChangeFaction(11)
		    AI:SetArray(9,0)
				AI:Say("It's incredible, the gang of pirates are much more powerful than those we defeated before!")
			end
			a = AI:GetArray(2)
			if a == 1 then --????,????
				AI:SetTimer(2,5000,9999)
				AI:SetArray(2,2)
			end
			a = AI:GetArray(3)
			if a == 0 then --????,????
				if hppct < 40 then
					AI:SetTimer(3,1000,1)
					AI:SetArray(3,1)
				end
			end
			----------------------------------------------------------normal end

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
		AI:Say("Before I die I want to look at the sea... and my beloved crab girl!")
		AI:DelTimer(1)
		AI:DelTimer(2)
		AI:DelTimer(3)
		AI:DelTimer(9)

	end

	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		a = AI:GetArray(2)
		if (( PosX == 152) and ( PosY == 218 )) then
			if a == 0 then
				AI:ChangeFaction(1)
				AI:Say("My brothers, here they come! They have fallen straight into my trap! Kill them all, hahaha!!")
    		
    	--10	
    		AI:SummonMonsterByPos(52295,156,224,1)
    		AI:SummonMonsterByPos(52295,151,226,1)
    		AI:SummonMonsterByPos(52295,147,220,1)
				AI:SummonMonsterByPos(52295,149,213,1)
				AI:SummonMonsterByPos(52295,154,216,1)
				AI:SummonMonsterByPos(52295,146,218,1)
				AI:SummonMonsterByPos(52295,145,222,1)
				AI:SummonMonsterByPos(52295,157,210,1)
				AI:SummonMonsterByPos(52295,158,218,1)
				AI:SummonMonsterByPos(52295,147,208,1)
			
			--10	
    		AI:SummonMonsterByPos(52295,163,207,1)
    		AI:SummonMonsterByPos(52295,166,207,1)
    		AI:SummonMonsterByPos(52295,169,206,1)
    		AI:SummonMonsterByPos(52295,169,199,1)
    		AI:SummonMonsterByPos(52295,168,193,1)
    		AI:SummonMonsterByPos(52295,164,197,1)
    		AI:SummonMonsterByPos(52295,160,196,1)
    		AI:SummonMonsterByPos(52295,154,195,1)
    		AI:SummonMonsterByPos(52295,156,188,1)
    		AI:SummonMonsterByPos(52295,163,185,1)
    		
--    		AI:SummonLevelMonsterByPos(52295,158,218)
				AI:SetArray(2,1)	
			end
		end
		
	end
	
	
	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		if nIndex == 1 then
			AI:AddSeekPos(mapid,152,218)
		end
		
	end
