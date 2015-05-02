	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/4/6
	--		Author:???
	--		Class:	.Lua
	--		AIName:Boss-21257.lua
	--		Remark:??
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0 then
			--????
			AI:Say("All will burn!")
			AI:AddSkill(2087,1)
      AI:UseSkill(2087,1)
		end
		
		if nIndex == 1 then
			--????
			AI:Say("Burn to ashes!")
			AI:GetRandTarget()
			AI:AddSkill(2088,1)
      AI:UseSkill(2088,1)
		end
		
		if nIndex == 2 then						
			--????
			
			local posX = AI:GetPosX()
    	local posY = AI:GetPosY()
    	local n = 0
    		while n < 2 do
    			local x = AI:GetRand(12)
    			x = x + posX
    			x = x - 6
    			local y = AI:GetRand(12)
    			y = y + posY
    			y = y - 6
    			AI:SummonMonsterByPos(21258 , x , y) 
    			n = n + 1	
    		end
    	AI:ScreenText( "Avoid Fire Damage", 1 )
    	AI:SetTimer(3,30000,1)
			
    end
    
    if nIndex == 3 then	
    	--????					
			zhadan(nAI)
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
					--????+????
					AI:Say("In the remote eastern region, I was considered a Sacred Beast! How dare you profane me!")
					AI:SetTimer(0,20000,65535)
					AI:SetTimer(1,35000,65535)
					AI:AddSkill(2087,1)
      		AI:UseSkill(2087,1)
					AI:SetArray(1,1)
				end
			end
			if a == 1 then
				if HP < HPMAX * 0.8 then
					--AI:Say("GUID:02645000004")
					--????
					AI:SetTimer(2,5000,1)
					AI:SetArray(1,2)
				end
			end
			if a == 2 then
				if HP < HPMAX * 0.1 then
					--????
    			AI:AddSkill(2091,1)
      		AI:UseSkill(2091,1)
      		AI:SetArray(1,3)
    		end
    	end
   end
end
    	
  function zhadan(nAI)
		local AI = GetMonsterAI(nAI)
    	local posX = AI:GetPosX()
    	local posY = AI:GetPosY()

    	local n = 0
    	while n < 8 do
    		local x = AI:GetRand(14)
    		x = x + posX
    		x = x - 7
    		local y = AI:GetRand(14)
    		y = y + posY
    		y = y - 7
    		AI:SummonMonsterByPos(21259 , x , y) 
    		n = n + 1	
    	end
    	AI:ScreenText( "Avoid damage from the explosion", 1 )
    	AI:SetTimer(2,30000,1)
	end
		
		function Event_OnDead(nAI)
	    local AI = GetMonsterAI(nAI)
			summon = AI:GetRand(3)
			if summon == 3 then
				AI:SummonMonster(24101, 4)
				AI:Say("My sons... I can protect you no more...")
			end
		end