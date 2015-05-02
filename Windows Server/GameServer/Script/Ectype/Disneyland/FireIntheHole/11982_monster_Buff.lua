        --------------------------------------------
	--
	--		Copyright：PERFECT WORLD
	--		Modified：2012/11/10
	--		Author：向珈辰 
	--		Class: Lua
	--		AIName：11984_monster_Buff.lua
	--		Backup：加速度buff
	---------------------------------------------        
    function Event_OnTimer(nAI, nIndex, nCount)
    	local AI = GetMonsterAI(nAI)			
			
			if nIndex == 1 then
				AI:AddSkill(2415,5)    
				AI:UseSkill(2415,5)  
				AI:Say("Speed Up!")
			end 



end	
    	
    	
    function Event_Thinking(nAI)
    	local AI = GetMonsterAI(nAI)
    	local mapid = AI:GetMapID()

        a = AI:GetArray(0)   
        if a == 0 then
					AI:SetTimer(1,1000,65535)
    			AI:SetArray(0,1)
    		end

end

    function Event_OnDead(nAI)
			local AI = GetMonsterAI(nAI)

end			    
					
				
		
	
                                                                               