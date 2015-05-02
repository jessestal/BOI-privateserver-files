----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2011/12
--		Author:???
--		TaskName:??
--		TaskID: 51862
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--????
			a = AI:GetArray(1)
			if a == 1 then
				AI:GetRandTarget()
				AI:SetArray(1,2)
				AI:SetArray(9,1)
				AI:Say("I know that I can't stop you from entering the Radiant Temple, but considering my sister...")
				AI:ScreenText("Stop here, or become mulch!",2)
			end
		end

		if nIndex == 2 then--????
			a = AI:GetArray(2)
			if a == 1 then--????
				rand = AI:GetRand(100)--(????0~100???)
				if rand < 5 then--??1--start
					AI:AddSkill(2243,1)
					AI:UseSkill(2243,1)
					rand = AI:GetRand(100)
					if rand < 33 then--??1??--start
--						AI:ScreenText("",2)
						AI:Say("Frost Flower, enjoy your blooming!")
					else
						if rand < 66 then
--							AI:ScreenText("",2)
							AI:Say("I gave you a change to leave, but it's not up to you now.")
						else
--							AI:ScreenText("",2)
							AI:Say("Have a long sleep amid these Frost Flowers.")
						end
					end
					--end--??1??--end
				else--??1--end
				--if rand < 66 then--??2--start
					AI:AddSkill(2239,1)
					AI:UseSkill(2239,1)
					rand = AI:GetRand(100)
					if rand < 33 then--??2??--start
--						AI:ScreenText("",2)
						AI:Say("Spread, flower fertilizer!")
					else
						if rand < 66 then
--							AI:ScreenText("",2)
								AI:Say("Don't be so stubborn, I'll set you free forever!")
						else
--							AI:ScreenText("",2)
								AI:Say("The decayed flowers will cover your bodies.")
						end
					end--??2??--end
				--end--??2--end
			end--??all--end
		end--????end
	end--????end
		
		if nIndex == 3 then--????
			--a = AI:GetArray(3)
			--if a == 1 then
				AI:AddSkill(2239,1)
				AI:UseSkill(2239,1)
				AI:ScreenText( "The morning rose, still blooming in the evening, everything is all immersed into its fragrance!" , 2)
				AI:Say("Flower dance...")
				x = AI:GetPosX()
				y = AI:GetPosY()
				AI:SummonMonsterByPos(51879,x-3,y-1)
				AI:SummonMonsterByPos(51879,x-3,y+1)
				AI:SummonMonsterByPos(51879,x-1,y-3)
				AI:SummonMonsterByPos(51879,x+1,y-3)
				AI:SummonMonsterByPos(51879,x+3,y-1)
				AI:SummonMonsterByPos(51879,x+3,y+1)
				AI:SummonMonsterByPos(51879,x-1,y+3)
				AI:SummonMonsterByPos(51879,x+1,y+3)
				
				AI:SummonMonsterByPos(51879,x-10,y-8)
				AI:SummonMonsterByPos(51879,x-10,y+8)
				AI:SummonMonsterByPos(51879,x-8,y-10)
				AI:SummonMonsterByPos(51879,x+8,y-10)
				AI:SummonMonsterByPos(51879,x+10,y-8)
				AI:SummonMonsterByPos(51879,x+10,y+8)
				AI:SummonMonsterByPos(51879,x-8,y+10)
				AI:SummonMonsterByPos(51879,x+8,y+10)
			--end
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

 		t = AI:HaveAttackTarget()--????
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
		    		AI:SetArray(9,0)

					end
				end
			end
		else
		-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then --?????,????,????
				AI:SetTimer(1,500,1)
				AI:SetArray(1,1)
		    AI:SetArray(9,0)

			end
			a = AI:GetArray(2)
			if a == 0 then --????,????
				hppct = hpn/hpmax*1000
					if hppct < 1000 then--????	
						AI:SetTimer(2,12000,65535)
						AI:SetArray(2,1)
					end
			end
			a = AI:GetArray(3)
			if a == 0 then --????,????
				hppct = hpn/hpmax*1000
				if hppct < 700 then
					AI:SetTimer(3,1000,1)
					AI:SetArray(3,1)
				end
			end
			if a == 1 then --????,????
				hppct = hpn/hpmax*1000
				if hppct < 400 then
					AI:SetTimer(3,1000,1)
					AI:SetArray(3,2)
				end
			end
			if a == 2 then --????,????
				hppct = hpn/hpmax*1000
				if hppct < 200 then
					AI:SetTimer(3,1000,1)
					AI:SetArray(3,3)
				end
			end
			if a == 3 then --????,????
				hppct = hpn/hpmax*1000
				if hppct < 180 then
					AI:SetTimer(3,1000,1)
					AI:SetArray(3,4)
					AI:AddSkill(2183,3)
					AI:UseSkill(2183,3)
					AI:Say("Roses in full bloom")
					AI:ScreenText("Rose: proud roses, show them all your beauty!",2)
				end
			end 
			----------------------------------------------------------normal start
		end
		--test=AI:GetEctypeVarShort(mapid,50)
		--if test = 1 then--??AI??
			--AI:Say("hppct="..tostring(hppct))
			--AI:SetEctypeVarShort(mapid,50,0)
		--end

	end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()


		AI:ScreenText("Even if the flowers start spreading, you must complete your guard duties. Strengthen the guard in the middle temple!",2)

	end



