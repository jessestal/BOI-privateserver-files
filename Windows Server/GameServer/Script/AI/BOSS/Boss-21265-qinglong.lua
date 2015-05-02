	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/5/9
	--		Author:???
	--		Class:	.Lua
	--		AIName:Boss-21265-qinglong.lua
	--		Remark:??
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0 then
			--????
			--AI:Say("GUID:02646000000")
			AI:AddSkill(2092,1)
      AI:UseSkill(2092,1)
		end
		
		if nIndex == 1 then
			--????
			AI:Say("The cold will freeze you where you stand!")
			AI:AddSkill(2093,1)
      AI:UseSkill(2093,1)
		end
		
		if nIndex == 2 then						
			--????
			
			local posX = AI:GetPosX()
    	local posY = AI:GetPosY()
    	local n = 0
    		while n < 3 do
    			local x = AI:GetRand(12)
    			x = x + posX
    			x = x - 6
    			local y = AI:GetRand(12)
    			y = y + posY
    			y = y - 6
    			AI:SummonMonsterByPos(21266 , x , y) 
    			n = n + 1	
    		end
    	AI:ScreenText( "Avoid the Icesting", 1 )
    	AI:SetTimer(4,30000,1)
			
    end
    
    if nIndex == 3 then	
    	--????					
			zhadan(nAI)
    end
    
    if nIndex == 4 then	
    	--????					
			AI:SetTimer(2,30000,1)
			AI:SetTimer(3,5000,4)
    end
    
    if nIndex == 5 then						
			--??????
			
			local posX = AI:GetPosX()
    	local posY = AI:GetPosY()
    	local n = 0
    		while n < 4 do
    			local x = AI:GetRand(12)
    			x = x + posX
    			x = x - 6
    			local y = AI:GetRand(12)
    			y = y + posY
    			y = y - 6
    			AI:SummonMonsterByPos(21269 , x , y) 
    			n = n + 1	
    		end
    	AI:ScreenText( "Loyal guardians! Aid your master!", 1 )
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
		    				AI:DelTimer(4)
		    				AI:DelTimer(5)
		    				AI:SetArray(1,0)
		    		end
	    		end
    else	
			if a == 0 then
				if HP < HPMAX then
					--????+????
					AI:Say("In the remote eastern region, I was considered a Sacred Beast! How dare you profane me!")
					AI:SetTimer(0,20000,65535)
					AI:SetTimer(1,35000,65535)
					AI:AddSkill(2092,1)
      		AI:UseSkill(2092,1)
					AI:SetArray(1,1)
				end
			end
			
			if a == 1 then
				if HP < HPMAX * 0.8 then
					
					AI:SetTimer(2,5000,1)
					AI:SetArray(1,2)
				end
			end
			
			if a == 2 then
				if HP < HPMAX * 0.5 then
				
					local posX = AI:GetPosX()
    			local posY = AI:GetPosY()
    			local n = 0
    			while n < 4 do
    				local x = AI:GetRand(12)
    				x = x + posX
    				x = x - 6
    				local y = AI:GetRand(12)
    				y = y + posY
    				y = y - 6
    				AI:SummonMonsterByPos(21269 , x , y) 
    				n = n + 1	
    			end
    			AI:ScreenText( "Loyal guardians! Aid your master!", 1 )
					AI:SetTimer(5,33000,65535)
					AI:SetArray(1,3)
				end
			end
			
			if a == 3 then
				if HP < HPMAX * 0.1 then
					--????
    			AI:AddSkill(2096,1)
      		AI:UseSkill(2096,1)
      		AI:SetArray(1,4)
    		end
    	end
   end
end
    	
  function zhadan(nAI)
		local AI = GetMonsterAI(nAI)
    	local posX = AI:GetPosX()
    	local posY = AI:GetPosY()

    	local n = 0
    	while n < 5 do
    		local x = AI:GetRand(12)
    		x = x + posX
    		x = x - 6
    		local y = AI:GetRand(12)
    		y = y + posY
    		y = y - 6
    		AI:SummonMonsterByPos(21267 , x , y) 
    		n = n + 1	
    	end
    	AI:ScreenText( "Avoid damage from the Frost Explosion", 1 )
    	
	end  			
		
		function Event_OnDead(nAI)
	    local AI = GetMonsterAI(nAI)
			summon = AI:GetRand(3)
			if summon == 3 then
				AI:SummonMonster(24102, 4)
				AI:Say("My sons... I can protect you no more...")
			end
		end
    
	