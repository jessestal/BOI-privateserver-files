----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2011/08
--		Author:???
--		TaskName:?-??monsterAI-?
--		TaskID:
--    sample:???
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
				AI:Say("God's armor, give me strength!")
				AI:ScreenText("God's armor, give me strength!",2)
			end
		end

		if nIndex == 2 then--????
			a = AI:GetArray(2)
			if a == 1 then--????
				rand = AI:GetRand(100)--(????0~100???)
				if rand < 15 then--??1--start
					AI:AddSkill(2243,1)
					AI:UseSkill(2243,1)
					rand = AI:GetRand(100)
					if rand < 33 then--??1??--start
--						AI:ScreenText("",2)
						AI:Say("Fist of Frost")
					else
						if rand < 66 then
--							AI:ScreenText("",2)
							AI:Say("Ruthless")
						end
					end--??2??--end
				else--??1--end
					if rand < 66 then--??2--start
						AI:AddSkill(2242,1)
						AI:UseSkill(2242,1)
						rand = AI:GetRand(100)
						if rand < 33 then--??2??--start
--							AI:ScreenText("",2)
							AI:Say("Fist of Radiance")
						else
							if rand < 66 then
--								AI:ScreenText("",2)
								AI:Say("You should die!")
							end
						end--??2??--end
					end--??2--end
				end--??all--end
			end--????end
		end--????end
		
		if nIndex == 3 then--????
			a = AI:GetArray(3)
			if a == 1 then
--				AI:AddSkill(ID,lv)
--				AI:UseSkill(ID,lv)
				AI:ScreenText( "Radiance Rage" , 2)
				AI:Say("Radiance Rage")
				x = AI:GetPosX()
				y = AI:GetPosY()
				AI:SummonMonsterByPos(51880,x-3,y-1)
				AI:SummonMonsterByPos(51880,x-3,y+1)
				AI:SummonMonsterByPos(51880,x,y-3)
				AI:SummonMonsterByPos(51880,x,y+3)
				AI:SummonMonsterByPos(51880,x+3,y-1)
				AI:SummonMonsterByPos(51880,x+3,y+1)
				
				AI:SummonMonsterByPos(51880,x-9,y-3)
				AI:SummonMonsterByPos(51880,x-9,y+3)
				AI:SummonMonsterByPos(51880,x,y-9)
				AI:SummonMonsterByPos(51880,x,y+9)
				AI:SummonMonsterByPos(51880,x+9,y-3)
				AI:SummonMonsterByPos(51880,x+9,y+3)
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
				AI:SetTimer(2,10000,65535)
				AI:SetArray(2,1)
			end
			a = AI:GetArray(3)
			if a == 0 then --????,????
				hppct = hpn/hpmax*1000
				if hppct < 800 then
					AI:SetTimer(3,1000,1)
					AI:SetArray(3,1)
				end
			end
			if a == 1 then --????,????
				hppct = hpn/hpmax*1000
				if hppct < 600 then
					AI:SetTimer(3,1000,1)
					AI:SetArray(3,2)
				end
			end
			if a == 2 then --????,????
				hppct = hpn/hpmax*1000
				if hppct < 400 then
					AI:SetTimer(3,1000,1)
					AI:SetArray(3,3)
					AI:AddSkill(2243,1)
					AI:UseSkill(2243,1)
				end
			end			
			if a == 3 then --????,????
				hppct = hpn/hpmax*1000
				if hppct < 250 then
					AI:SetTimer(3,1000,1)
					AI:SetArray(3,4)
					AI:AddSkill(2183,3)
					AI:UseSkill(2183,3)
					AI:Say("Rage")
					AI:ScreenText("Destroy everything!",2)
				end
			end 			
			----------------------------------------------------------normal start
		end

	end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()


		AI:ScreenText("...God's armor is not enough?",2)

	end



