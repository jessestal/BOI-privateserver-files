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
    end	
    	
    	
    function Event_Thinking(nAI)
        local AI = GetMonsterAI(nAI)
        local mapid = AI:GetMapID()
        local swich = AI:GetEctypeVarShort(mapid , 0)
        a = AI:GetArray(0)   
       	--出生即刷新城门
        if a == 0 then
        	if swich == 0 then
    			AI:AddGuildDomainMonster( 59253 , 163.8 , 87.7 , 0 , 0 , 0 , 0 )
    			AI:AddGuildDomainMonster( 59254 , 106.7 , 66.5 , 0 , 0 , 0 , 0 )
    			AI:AddGuildDomainMonster( 59255 , 220.9 , 66.5 , 0 , 0 , 0 , 0 )
    			AI:SetArray(0,1)
    		end
    		if swich == 1 then
    			GuildID = AI:GetEctypeVarShort(mapid,10) --int里面设置的
    			-- -2这个阵营是所有进攻方不能打，只有防守方能打
    			AI:AddGuildDomainMonster( 59227 , 163.9 , 258.6 , 0 , 0, -2 , 0 )
   				AI:AddGuildDomainMonster( 59228 , 163.9 , 64.0 , 0 , 0, GuildID , 0 )
    			AI:AddGuildDomainMonster( 59253 , 163.8 , 87.7 , 0 , 0 , GuildID , 0 )
--    			AI:AddGuildDomainMonster( 59270 , 163.8 , 239.2 , 0 , 0 , 1 , 0 )
    			AI:AddGuildDomainMonster( 59254 , 106.7 , 66.5 , 0 , 0 , GuildID , 0 )
    			AI:AddGuildDomainMonster( 59255 , 220.9 , 66.5 , 0 , 0 , GuildID , 0 )
    			AI:SetArray(0,1)
    		end		
	end
    end	
    
    function Event_OnDead(nAI)
	local AI = GetMonsterAI(nAI)
    end			    
					
				
		
	
                                                                               