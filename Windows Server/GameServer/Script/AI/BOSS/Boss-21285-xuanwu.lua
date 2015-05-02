	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/6/28
	--		Author:???
	--		Class:	.Lua
	--		AIName:Boss-21285-xuanwu.lua
	--		Remark:??
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0 then
			--????
			--AI:Say("GUID:02650000000")
			AI:AddSkill(2107,1)
      AI:UseSkill(2107,1)
		end
		
		if nIndex == 1 then
			--????
			AI:SayAdvance("! Fall into the dark shadow!",0 ,0 )
			AI:GetRandTarget()
			AI:AddSkill(2108,1)
      AI:UseSkill(2108,1)
		end
		
		if nIndex == 2 then						
			--??????
			
			local posX = AI:GetPosX()
    	local posY = AI:GetPosY()
			local n = 0
    	
    	while n < 2 do
    		local x = AI:GetRand(18)
    		x = x + posX
    		x = x - 9
    		local y = AI:GetRand(18)
    		y = y + posY
    		y = y - 9
    		AI:SummonMonsterByPos( 21287, x, y )
				n = n + 1
			end
			
    	AI:SetTimer(4,30000,1)
			
    end
    
    if nIndex == 3 then	
    	--????					
			dizhen(nAI)
    end
    
    if nIndex == 4 then	
    	--????					
			AI:SetTimer(2,30000,1)
			AI:SetTimer(3,5000,4)
    end
    
    if nIndex == 5 then	
    	--????
    	AI:Say("I am protected by all the gods in the East. You cannot hurt me!")					
			AI:AddSkill(2111,1)
      AI:UseSkill(2111,1)
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
					--?????????
					AI:Say("You will pay for this trespass. Your whole family will burn in the Shadow Fire!")
					AI:SetTimer(0,20000,65535)
					AI:SetTimer(1,35000,65535)
					AI:AddSkill(2107,1)
      		AI:UseSkill(2107,1)
					AI:SetArray(1,1)
				end
			end
			
			if a == 1 then
				if HP < HPMAX * 0.8 then
					AI:Say("It's pointless to try!")
					AI:SetTimer(2,5000,1)
					AI:SetArray(1,2)
				end
			end
			
			if a == 2 then
				if HP < HPMAX * 0.5 then
				
    			AI:ScreenText( "I am protected by all the gods in the East. You cannot hurt me!", 1 )
					AI:SetTimer(5,40000,65535)
					AI:AddSkill(2111,1)
      		AI:UseSkill(2111,1)
					AI:SetArray(1,3)
				end
			end
			
			if a == 3 then
				if HP < HPMAX * 0.1 then
					--????
    			AI:AddSkill(2112,1)
      		AI:UseSkill(2112,1)
      		AI:SetArray(1,4)
    		end
    	end
   end
end
    	
  function dizhen(nAI)
		local AI = GetMonsterAI(nAI)
    	local posX = AI:GetPosX()
    	local posY = AI:GetPosY()

    	local n = 0
    	while n < 3 do
    		local x = AI:GetRand(20)
    		x = x + posX
    		x = x - 10
    		local y = AI:GetRand(20)
    		y = y + posY
    		y = y - 10
    		AI:SummonMonsterByPos(21286 , x , y) 
    		n = n + 1	
    	end
    	AI:ScreenText( "Avoid the exploding ground!", 1 )
    	
	end  			
    
	function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
      AI:DelTimer(0)
      AI:DelTimer(1)
      AI:DelTimer(2)
      AI:DelTimer(3)
      AI:DelTimer(4)
      AI:DelTimer(5)
      AI:SetArray(1,0)
      AI:ScreenText( "What... awaits me... now?", 1 )
      AI:Say("What... awaits me... now?")
end      
		
		function Event_OnDead(nAI)
	    local AI = GetMonsterAI(nAI)
			summon = AI:GetRand(3)
			if summon == 3 then
				AI:SummonMonster(24104, 4)
				AI:Say("My sons... I can protect you no more...")
			end
		end
