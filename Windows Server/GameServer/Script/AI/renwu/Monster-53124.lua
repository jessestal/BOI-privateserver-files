	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/10/08
	--		Author:???
	--		Class:	Monster-53124.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
		function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
			if nIndex == 0 then
				z = AI:GetPlayerIDByIndex(0)
				local x1 = AI:GetPlayerX(z)
				local y1 = AI:GetPlayerY(z)
				AI:SummonMonsterByPos( 53149, x1, y1 )
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
						AI:ScreenText("Watch your step! Play with fire, and you're bound to get burned!",2)
						AI:SetTimer(0,5000,65535)
						AI:SetArray(1,1)
					end
				end
			end
		end