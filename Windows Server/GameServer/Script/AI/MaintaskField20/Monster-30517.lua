	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/03/21
	--		Author:???
	--		Class:	Monster-30517.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
		function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
			if nIndex == 0 then
				sui = AI:GetRand(10)
				z = AI:GetPlayerIDByIndex(0)
				local x1 = AI:GetPlayerX(z)
				local y1 = AI:GetPlayerY(z)
				if sui < 6 then 
					AI:SummonMonsterByPos( 30518, x1, y1 )
				end
				
				if sui > 5 then
					AI:SummonMonsterByPos( 30518, x1-4, y1 )
					AI:SummonMonsterByPos( 30518, x1+4, y1 )
					AI:SummonMonsterByPos( 30518, x1, y1-4 )
					AI:SummonMonsterByPos( 30518, x1, y1+4 )
					AI:SummonMonsterByPos( 30518, x1-4, y1-4 )
					AI:SummonMonsterByPos( 30518, x1+4, y1+4 )
					AI:SummonMonsterByPos( 30518, x1-4, y1+4 )
					AI:SummonMonsterByPos( 30518, x1+4, y1-4 )
				end
			end
			
			if nIndex == 1 then
				AI:ScreenText("Divac's Body: The power granted by Gjallarhorn will swallow up the souls of all mortal beings!",1)
				b = AI:GetPlayerIDByIndex(0)
				local x1 = AI:GetPlayerX(b)
				local y1 = AI:GetPlayerY(b)
				AI:SummonMonsterByPos( 30519, x1-6, y1 )
				AI:SummonMonsterByPos( 30519, x1+6, y1 )
				AI:SummonMonsterByPos( 30519, x1, y1-6 )
				AI:SummonMonsterByPos( 30519, x1, y1+6 )
				AI:SummonMonsterByPos( 30519, x1-6, y1-6 )
				AI:SummonMonsterByPos( 30519, x1+6, y1+6 )
				AI:SummonMonsterByPos( 30519, x1-6, y1+6 )
				AI:SummonMonsterByPos( 30519, x1+6, y1-6 )
			end
			
			if nIndex == 2 then
				AI:ScreenText("Divac's Body: The power granted by Gjallarhorn will swallow up the souls of all mortal beings!",1)
				c = AI:GetPlayerIDByIndex(0)
				local x1 = AI:GetPlayerX(c)
				local y1 = AI:GetPlayerY(c)
				AI:SummonMonsterByPos( 30519, x1-6, y1 )
				AI:SummonMonsterByPos( 30519, x1+6, y1 )
				AI:SummonMonsterByPos( 30519, x1, y1-6 )
				AI:SummonMonsterByPos( 30519, x1, y1+6 )
				AI:SummonMonsterByPos( 30519, x1-6, y1-6 )
				AI:SummonMonsterByPos( 30519, x1+6, y1+6 )
				AI:SummonMonsterByPos( 30519, x1-6, y1+6 )
				AI:SummonMonsterByPos( 30519, x1+6, y1-6 )
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
						AI:ScreenText("Divac's Body: No one will have Gjallarhorn!",1)
						AI:SetTimer(0,20000,65535)
						AI:SetArray(1,1)
					end
				end
				
				if a == 1 then
					if HP < HPMAX * 0.7 then
						AI:ScreenText("Divac's Body: Begone! Or you will know oblivion!",1)
						AI:SetTimer(1,10000,1)
						AI:SetArray(1,2)
					end
				end
				
				if a == 2 then
					if HP < HPMAX * 0.4 then
						AI:ScreenText("Divac's Body: Gjallarhorn will belong to no mortal!",1)
						AI:SetTimer(2,10000,1)
						AI:SetArray(1,3)
					end
				end
				
				if a == 3 then
					if HP < HPMAX * 0.2 then
						AI:ScreenText("Divac's Body: Odin will never be revived!",1)
						AI:AddSkill(2317,1)
						AI:UseSkill(2317,1)
						AI:SetArray(1,4)
					end
				end
			end
		end
		
		function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
    	AI:ScreenText("Divac's Body: Gah! Is this the end, finally?",1)
    end
		