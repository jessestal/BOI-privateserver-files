	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/10/08
	--		Author:???
	--		Class:	Monster-14068.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
		function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
			if nIndex == 0 then
				AI:Say("Dark Dragon Storm")
				AI:AddSkill(2265,1)
				AI:UseSkill(2265,1)
			end
			
			if nIndex == 1 then
				AI:Say("Go, kill them!")
				AI:SummonMonster(14205, 2)
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
		    				AI:SetArray(1,0)
		    			end
		    		end
			else
		
				if a == 0 then
					if HP < HPMAX then
						AI:Say("I can smell the stink of humans. Who are you?")
						AI:AddSkill(2265,1)
						AI:UseSkill(2265,1)
						AI:SetTimer(0,20000,65535)
						AI:SetArray(1,1)
					end
				end
				
				if a == 1 then
					if HP < HPMAX * 0.6 then
						AI:Say("Blood! Oh yes, I can smell blood!")
						AI:AddSkill(2265,1)
						AI:UseSkill(2265,1)
						AI:SetTimer(1,20000,65535)
						AI:SetArray(1,2)
					end
				end
				
				if a == 2 then
					if HP < HPMAX * 0.3 then
						AI:Say("I like this feeling! Human, die here!")
						AI:AddSkill(2268,1)
						AI:UseSkill(2268,1)
						AI:SetArray(1,3)
					end
				end
			end
		end
		
		function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
      AI:DelTimer(0)
      AI:SetArray(1,0)
      AI:Say("Lord Best! I...ah!!")
      posx = AI:GetPosX()
			posy = AI:GetPosY()
			AI:SummonMonsterByPos( 14206 , posx , posy )
		end      		
				