	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/10/08
	--		Author:???
	--		Class:	Monster-14067.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
		function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
			if nIndex == 0 then
				AI:Say("Frozen Storm")
				AI:AddSkill(2261,1)
				AI:UseSkill(2261,1)
			end
			
			if nIndex == 1 then
				AI:Say("Go, kill them!")
				AI:SummonMonster(14208,4)
			end
			
			if nIndex == 2 then
				--????
				AI:Say("Feel the power of ice!")
				e = AI:GetPlayerIDByIndex(0)
				local x1 = AI:GetPlayerX(e)
				local y1 = AI:GetPlayerY(e)
				AI:SummonMonsterByPos( 14207, x1, y1 )
				AI:SummonMonsterByPos( 14207, x1-4, y1 )
				AI:SummonMonsterByPos( 14207, x1-8, y1 )
				AI:SummonMonsterByPos( 14207, x1-12, y1 )
				AI:SummonMonsterByPos( 14207, x1-16, y1 )
				AI:SummonMonsterByPos( 14207, x1-20, y1 )
				AI:SummonMonsterByPos( 14207, x1-24, y1 )
				AI:SummonMonsterByPos( 14207, x1+4, y1 )
				AI:SummonMonsterByPos( 14207, x1+8, y1 )
				AI:SummonMonsterByPos( 14207, x1+12, y1 )
				AI:SummonMonsterByPos( 14207, x1+16, y1 )
				AI:SummonMonsterByPos( 14207, x1+20, y1 )
				AI:SummonMonsterByPos( 14207, x1+24, y1 )
			end
			
			if nIndex == 3 then
				--????
				AI:Say("Feel the power of ice!")
				e = AI:GetPlayerIDByIndex(5)
				local x1 = AI:GetPlayerX(e)
				local y1 = AI:GetPlayerY(e)
				AI:SummonMonsterByPos( 14207, x1, y1 )
				AI:SummonMonsterByPos( 14207, x1-2, y1 )
				AI:SummonMonsterByPos( 14207, x1-4, y1 )
				AI:SummonMonsterByPos( 14207, x1-6, y1 )
				AI:SummonMonsterByPos( 14207, x1-8, y1 )
				AI:SummonMonsterByPos( 14207, x1-10, y1 )
				AI:SummonMonsterByPos( 14207, x1-12, y1 )
				AI:SummonMonsterByPos( 14207, x1+2, y1 )
				AI:SummonMonsterByPos( 14207, x1+4, y1 )
				AI:SummonMonsterByPos( 14207, x1+6, y1 )
				AI:SummonMonsterByPos( 14207, x1+8, y1 )
				AI:SummonMonsterByPos( 14207, x1+10, y1 )
				AI:SummonMonsterByPos( 14207, x1+12, y1 )
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
		    				AI:DelTimer(3)
		    				AI:SetArray(1,0)
		    			end
		    		end
			else
		
				if a == 0 then
					if HP < HPMAX then
						AI:Say("I have waited for centuries, but someone has finally come! Feel my power!")
						AI:AddSkill(2261,1)
						AI:UseSkill(2261,1)
						AI:SetTimer(0,20000,65535)
						AI:SetArray(1,1)
					end
				end
				
				if a == 1 then
					if HP < HPMAX * 0.8 then
						AI:Say("In the name of the God of War, I sentence you to death!!!")							
						AI:SetTimer(2,25000,65535)
						AI:SetArray(1,2)
					end
				end
				
				if a == 2 then
					if HP < HPMAX * 0.6 then
						AI:Say("I can smell the stench of death! You will surely die here!")
						AI:SetTimer(1,30000,5)	
						AI:SetTimer(3,25000,65535)
						AI:SetArray(1,3)
					end
				end
				
				if a == 3 then
					if HP < HPMAX * 0.4 then
						AI:Say("That hurts, human!")
						AI:AddSkill(2261,1)
						AI:UseSkill(2261,1)
					  AI:SetArray(1,4)
					end
				end
				
				if a == 4 then
					if HP < HPMAX * 0.2 then
						AI:Say("Stupid human, you have angered me!!!")
						AI:AddSkill(2264,1)
						AI:UseSkill(2264,1)
						AI:SetArray(1,5)
					end
				end
			end
		end