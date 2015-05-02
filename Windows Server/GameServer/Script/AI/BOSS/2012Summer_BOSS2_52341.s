	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/06/20
	--		Author:???
	--		Class:	2012Summer_BOSS2_52341.s
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
		function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
			if nIndex == 0 then
				--????
				AI:Say("Don't even think of stealing my treasure!")
				a = AI:GetRand(5)
				z = AI:GetPlayerIDByIndex(a)
				AI:AddSkill(2256,1)
				AI:DoSkillByEnmity(a,2256,1)
			end
			
			if nIndex == 1 then
				--?????
				AI:Say("Flames come unto me!")
				e = AI:GetPlayerIDByIndex(0)
				local x1 = AI:GetPlayerX(e)
				local y1 = AI:GetPlayerY(e)
				AI:SummonMonsterByPos( 14204, x1, y1 )
				AI:SummonMonsterByPos( 14204, x1-4, y1 )
				AI:SummonMonsterByPos( 14204, x1-8, y1 )
				AI:SummonMonsterByPos( 14204, x1-12, y1 )
				AI:SummonMonsterByPos( 14204, x1-16, y1 )
				AI:SummonMonsterByPos( 14204, x1+4, y1 )
				AI:SummonMonsterByPos( 14204, x1+8, y1 )
				AI:SummonMonsterByPos( 14204, x1+12, y1 )
				AI:SummonMonsterByPos( 14204, x1+16, y1 )
			end
			
			if nIndex == 2 then
				--AI:Say("Fire Storm")
				AI:AddSkill(2258,1)
				AI:UseSkill(2258,1)
			end
			
			if nIndex == 3 then
				AI:AddSkill(2259,1)
				AI:UseSkill(2259,1)
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
						AI:Say("Let the fire burn your greed away!")
						AI:AddSkill(2256,1)
						AI:UseSkill(2256,1)
						AI:SetTimer(0,15000,65535)
						AI:SetArray(1,1)
					end
				end
				
				if a == 1 then
					if HP < HPMAX * 0.8 then
						AI:Say("Haha, you are a formidable opponent!")
						AI:SetTimer(1,25000,65535)
						AI:SetArray(1,2)
					end
				end
				
				if a == 2 then
					if HP < HPMAX * 0.6 then
						AI:Say("God of Flame, please give me strength!")
						AI:AddSkill(2258,1)
						AI:UseSkill(2258,1)
						AI:SetTimer(2,30000,65535)
						AI:SetArray(1,3)
					end
				end
				
				if a == 3 then
					if HP < HPMAX * 0.4 then
						AI:Say("You all shall die!!!")
						AI:AddSkill(2259,1)
						AI:UseSkill(2259,1)
						AI:SetTimer(3,35000,65535)
						AI:SetArray(1,4)
					end
				end
				
				if a == 4 then
					if HP < HPMAX * 0.2 then
						AI:Say("Face my wrath!")
						AI:AddSkill(2260,1)
						AI:UseSkill(2260,1)
						AI:SetArray(1,5)
					end
				end
			end
		end