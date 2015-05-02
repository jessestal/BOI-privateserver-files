        --------------------------------------------
	--
	--		Copyright：PERFECT WORLD
	--		Modified：2011/07/29
	--		Author：唐寅 
	--		Class: Lua
	--		AIName：chengmen.lua
	--		Backup：城门 AI
	---------------------------------------------        
    function Event_OnTimer(nAI, nIndex, nCount)
         local AI = GetMonsterAI(nAI)
         local mapid = AI:GetMapID()
         local swich = AI:GetEctypeVarShort(mapid , 0)
         if nIndex == 0 then
    		if swich == 0 then
    			AI:AddGuildDomainMonster( 59253 , 154.0 , 160.7 , 0 , 0 , 2 , 0 )
    			AI:AddGuildDomainMonster( 59254 , 106.7 , 66.5 , 0 , 0 , 2 , 0 )
    			AI:AddGuildDomainMonster( 59255 , 220.9 , 66.5 , 0 , 0 , 2 , 0 )
    		elseif swich == 1 then
    			AI:AddGuildDomainMonster( 59253 , 154.0 , 160.7 , 0 , 0 , 2 , 0 )
    			AI:AddGuildDomainMonster( 59270 , 163.8 , 239.0 , 0 , 0 , 1 , 0 )
    			AI:AddGuildDomainMonster( 59254 , 106.7 , 66.5 , 0 , 0 , 2 , 0 )
    			AI:AddGuildDomainMonster( 59255 , 220.9 , 66.5 , 0 , 0 , 2 , 0 )
    		end
    	end					
    end	
    	
    	
    function Event_Thinking(nAI)
        local AI = GetMonsterAI(nAI)
        a = AI:GetArray(0)   
       	--出生即刷新城门
        if a == 0 then
	       	AI:SetTimer(0,1000,1)
	        AI:SetArray(0,1)
	end
    end	
    
    function Event_OnDead(nAI)
	local AI = GetMonsterAI(nAI)
    end			    
					
				
		
	
                                                                               