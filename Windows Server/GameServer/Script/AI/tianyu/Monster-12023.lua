	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/10/08
	--		Author:???
	--		Class:	Monster-12023.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
			if nIndex == 0 then
				AI:Say("Silence!!")
				AI:AddSkill(2269,1)
				AI:UseSkill(2269,1)
			end
			
			if nIndex == 1 then
				AI:Say("Feel my wrath!")
				AI:AddSkill(2270,1)
				AI:UseSkill(2270,1)
			end
			
			if nIndex == 2 then
				a = AI:GetPlayerIDByIndex(0)
				local x1 = AI:GetPlayerX(a)
				local y1 = AI:GetPlayerY(a)
				AI:SummonMonsterByPos( 12026, x1, y1, 0 )
				
				b = AI:GetPlayerIDByIndex(1)
				local x2 = AI:GetPlayerX(b)
				local y2 = AI:GetPlayerY(b)
				AI:SummonMonsterByPos( 12026, x2, y2, 0 )
				
				c = AI:GetPlayerIDByIndex(2)
				local x3 = AI:GetPlayerX(c)
				local y3 = AI:GetPlayerY(c)
				AI:SummonMonsterByPos( 12026, x3, y3, 0 )
				
				d = AI:GetPlayerIDByIndex(3)
				local x4 = AI:GetPlayerX(d)
				local y4 = AI:GetPlayerY(d)
				AI:SummonMonsterByPos( 12026, x4, y4, 0 )
				
--				e = AI:GetPlayerIDByIndex(4)
--				local x5 = AI:GetPlayerX(e)
--				local y5 = AI:GetPlayerY(e)
--				AI:SummonMonsterByPos( 12026, x5, y5, 0 )
				
--				f = AI:GetPlayerIDByIndex(5)
--				local x6 = AI:GetPlayerX(f)
--				local y6 = AI:GetPlayerY(f)
--				AI:SummonMonsterByPos( 12026, x6, y6, 0 )
			end
	end
	
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
 			t = AI:HaveAttackTarget()
 			HP = AI:GetHP()
    	HPMAX = AI:GetHPMax()
    	a = AI:GetArray(1)
			if t == false then
						if a > 0 then
							if HP == HPMAX then
		    				AI:DelTimer(0)
		    				AI:DelTimer(1)
		    				AI:DelTimer(2)
		    				AI:SetArray(1,0)
		    			end
		    		end
			else
		
				if a == 0 then
					if HP < HPMAX then
						AI:Say("All who enter must die!!")
						AI:AddSkill(2269,1)
						AI:UseSkill(2269,1)
						AI:SetTimer(0,20000,65535)
						AI:SetArray(1,1)
					end
				end
				
				if a == 1 then
					if HP < HPMAX * 0.7 then
						AI:Say("You are not as weak as I thought, but are you strong enough for my Death Blade!?")
						AI:AddSkill(2270,1)
						AI:UseSkill(2270,1)
						AI:SetTimer(1,30000,65535)
						AI:SetArray(1,2)
					end
				end
				
				if a == 2 then
					if HP < HPMAX * 0.4 then
						AI:Say("You puny insignificant humans will be crushed!")
						AI:SetTimer(2,30000,65535)
						AI:SetArray(1,3)
					end
				end
				
				if a == 3 then
					if HP < HPMAX * 0.1 then
						AI:Say("You have made me angry! None of you will leave here alive!!!")
						AI:AddSkill(2272,1)
						AI:UseSkill(2272,1)
						AI:SetArray(1,4)
					end
				end
			end
		end