	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/10/08
	--		Author:???
	--		Class:	Monster-53125.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
		function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
			if nIndex == 0 then
				mapid = AI:GetMapID()
				AI:SummonMonsterByPos(53150,216,119)
				AI:SummonMonsterByPos(53151,172,124)
				AI:SummonMonsterByPos(53152,180,97)
				AI:SummonMonsterByPos(53153,209,110)
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
		    				AI:SetArray(1,0)
		    			end
		    		end
			else
			
				if a == 0 then
					if HP < HPMAX then
						AI:ScreenText("Watch out for those letters, they have sharp edges! Wouldn't want to hurt yourself!",2)
						AI:SetTimer(0,18000,65535)
						AI:SetArray(1,1)
					end
				end
			end
			
		end
					