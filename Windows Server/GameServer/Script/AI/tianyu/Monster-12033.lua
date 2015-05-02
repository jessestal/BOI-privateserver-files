	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/10/08
	--		Author:???
	--		Class:	Monster-12033.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
			if nIndex == 0 then
				AI:Say("The winds of the underworld will drag you to hell!")
				AI:AddSkill(2273,1)
				AI:UseSkill(2273,1)
			end
			
			if nIndex == 1 then
				AI:Say("Feel the power of hell!")
				AI:AddSkill(2274,1)
				AI:UseSkill(2274,1)
			end
			
			if nIndex == 2 then
				AI:Say("Eliminate these idiotic humans!")
				x = AI:GetPosX()
				y = AI:GetPosY()
				AI:SummonMonsterByPos( 12027, x+4, y, 0 )
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
						AI:Say("Who dares challenge the almighty Caesar!?")
						AI:AddSkill(2273,1)
						AI:UseSkill(2273,1)
						AI:SetTimer(0,20000,65535)
						AI:SetArray(1,1)
					end
				end
				
				if a == 1 then
					if HP < HPMAX * 0.7 then
						AI:Say("I feel the power growing!!")
						AI:AddSkill(2274,1)
						AI:UseSkill(2274,1)
						AI:SetTimer(1,20000,65535)
						AI:SetArray(1,2)
					end
				end
				
				if a == 2 then
					if HP < HPMAX * 0.4 then
						AI:Say("Haha! I have not battled with opponents like you for a long time!")
						AI:SetTimer(2,1000,1)
						AI:SetArray(1,3)
					end
				end
				
				if a == 3 then
					if HP < HPMAX * 0.1 then
						AI:Say("Oh great God of Darkness, give me your strength!")
						AI:AddSkill(2276,1)
						AI:UseSkill(2276,1)
						AI:SetArray(1,4)
					end
				end
			end
		end