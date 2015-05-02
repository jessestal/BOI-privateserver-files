	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/10/08
	--		Author:???
	--		Class:	Monster-14200.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
		function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
			if nIndex == 0 then
				--?????
				z = AI:GetPlayerIDByIndex(0)
				local x1 = AI:GetPlayerX(z)
				local y1 = AI:GetPlayerY(z)
				AI:SummonMonsterByPos( 14202, x1, y1 )
			end
		
			if nIndex == 1 then
				--?????
				AI:Say("Dark Devil, please give me strength!")
				AI:AddSkill(2252,1)
				AI:UseSkill(2252,1)
			end
			
			if nIndex == 2 then
				--??
				AI:Say("Be quiet!!!")
				AI:AddSkill(2253,1)
				AI:UseSkill(2253,1)
				AI:SummonMonster(14203, 2)
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
						AI:Say("Who? Who woke me up!!!")
						AI:AddSkill(2252,1)
						AI:UseSkill(2252,1)
						AI:SetTimer(0,12000,65535)
						AI:SetTimer(1,16000,65535)
						AI:SetArray(1,1)
					end
				end
				
				if a == 1 then
					if HP < HPMAX * 0.75 then
						AI:Say("You have enraged me!!!")
						AI:AddSkill(2253,1)
						AI:UseSkill(2253,1)
						AI:SetTimer(2,30000,2)
						AI:SetArray(1,2)
					end
				end
				
				if a == 2 then
					if HP < HPMAX * 0.5 then
						AI:Say("Don't think you can defeat me like this! The one who shall die here is you, stupid human!")
						AI:AddSkill(2253,1)
						AI:UseSkill(2253,1)
						AI:SetArray(1,3)
					end
				end
				
				if a == 3 then
					if HP < HPMAX * 0.25 then
						AI:Say("Know my true strength! You shall pay for your arrogance!!")
						AI:AddSkill(2255,1)
						AI:UseSkill(2255,1)
						AI:SetArray(1,4)
					end
				end
			end
		end