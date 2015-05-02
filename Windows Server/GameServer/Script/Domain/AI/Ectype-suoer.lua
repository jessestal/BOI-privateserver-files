        --------------------------------------------
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/13
	--		Author:?? 
	--		Class: Lua
	--		AIName:Ectype-suoer.lua
	--		Backup:????
	---------------------------------------------        
    --????
    --????
    function Event_OnTimer(nAI, nIndex, nCount)
        local AI = GetMonsterAI(nAI)
        local PosX = AI:GetPosX()
        local PosY = AI:GetPosY()
        local rand = AI:GetRand(2)
        local mapid = AI:GetMapID()
        local status = AI:GetEctypeVarShort(mapid , 25)
       
        if nIndex == 0 then
       	    --?????????????,????????????
       	    AI:ScreenText("God of Thunder Thor set free Thor's Cage. All creatures in the cage will vanish under thunder.",2)
    	    c = AI:GetArray(3)
            n = AI:GetEnmityCount()
            random = math.random( 0 , n-1 )
            id = AI:GetPlayerIDByIndex( random )
            x = AI:GetPlayerX(id)
            y = AI:GetPlayerY(id)
            if c >= 0 then
    		if c <= 5 then
    			if c < n then
    				c =c + 1
           	 		AI:AddGuildDomainMonster( 59234 , x , y , 0 , 90 , 2 , 0  )
           	 		AI:SetArray(3,c)
           	 	end	
           	end
           end
        end  	
          
        if nIndex == 1 then
           --????
            	AI:ScreenText("Thor released his rage! Thor's Rage will bring thunder and lightning.",2)
           	if rand == 0 then
        		AI:SummonMonsterByPos(59235 , PosX + 6 , PosY)
        		AI:SummonMonsterByPos(59235 , PosX - 6 , PosY)
			AI:SummonMonsterByPos(59235 , PosX  , PosY + 6)
			AI:SummonMonsterByPos(59235 , PosX , PosY - 6)
			AI:SetArray(3,0)
			AI:SetTimer(0,1000,5)
		end
		
		if rand == 1 then
			AI:SummonMonsterByPos(59235 , PosX + 6 , PosY + 6)
        		AI:SummonMonsterByPos(59235 , PosX - 6 , PosY - 6)
			AI:SummonMonsterByPos(59235 , PosX - 6  , PosY + 6)
			AI:SummonMonsterByPos(59235 , PosX + 6 , PosY - 6)
			AI:SetArray(3,0)
			AI:SetTimer(0,1000,5)
		end
		
		if rand == 2 then
			AI:SummonMonsterByPos(59235 , PosX + 6 , PosY)
        		AI:SummonMonsterByPos(59235 , PosX - 6 , PosY)
        		AI:SummonMonsterByPos(59235 , PosX + 3 , PosY + 6)
			AI:SummonMonsterByPos(59235 , PosX - 3 , PosY - 6)
			AI:SummonMonsterByPos(59235 , PosX - 3 , PosY + 6)
			AI:SummonMonsterByPos(59235 , PosX + 3 , PosY - 6)			
			AI:SetArray(3,0)
			AI:SetTimer(0,1000,5)			
		end
	end
	
	if nIndex == 2 then
		if status == 0 then
			AI:AddStatus( -1 ,7876 , 1 )
		end
		
		if status == 1 then
			AI:AddStatus( -1 ,7876 , 2 )
		end
		
		if status == 2 then
			AI:AddStatus( -1 ,7876 , 3 )		
		end
		
		if status == 3 then
			AI:AddStatus( -1 ,7876 , 4 )
		end
		
		if status == 4 then
			AI:AddStatus( -1 ,7876 , 5 )
		end		
	end
	
	if nIndex == 3 then
		AI:AddSkill(3878,1)
		AI:UseSkill(3878,1)
	end
	
	if nIndex == 4 then
		AI:ScreenText("Thor released Thunder Clap. It will deal huge damage to vessels",2)
		AI:AddSkill(3877,1)
		AI:UseSkill(3877,1)
	end								        
    end	

    function Event_Thinking(nAI)
        local AI = GetMonsterAI(nAI)
        v = AI:HaveAttackTarget()
        mapid = AI:GetMapID()
        if v == false then
        	n = AI:GetEnmityCount()
 	      	if n < 1 then
                	AI:DelTimer(0)
        		AI:DelTimer(1)
        		AI:DelTimer(2)
        		AI:DelTimer(3)
        		AI:DelTimer(4)      		
                	AI:SetArray(1,0) 
                	AI:SetArray(2,0)
                	AI:SetArray(3,0)
                	begin = AI:GetEctypeVarShort(mapid , 80)
                	if begin == 1 then
                		AI:SetEctypeVarShort(mapid , 80 , 0)
                	end	
                end
        else
            AI:SetEctypeVarShort(mapid , 80 , 1)
            HP = AI:GetHP()
            HPMAX = AI:GetHPMax()
            a = AI:GetArray(1)
            if a == 0 then
                if HP < HPMAX then
                    AI:Say("Intruding into Thor's territory is a challenge to all the gods. Accept the rage of gods!" )                
                    AI:SetTimer(1,30000,65535)
                    AI:SetTimer(2,1000,65535)
                    AI:SetTimer(3,5000,65535)
                    AI:SetTimer(4,30000,65535)
                    AI:SetArray(1,1)  
                end
            end
            
            if a == 1 then
                if HP < HPMAX * 0.8 then                            
                    AI:SetTimer(1,30000,65535)
                    AI:SetTimer(2,1000,65535)
                    AI:SetTimer(3,5000,65535)
                    AI:SetTimer(4,30000,65535)
                    AI:SetArray(1,2)                    
                end
            end
            
             if a == 2 then
               if HP < HPMAX * 0.7 then                             
                    AI:SetTimer(1,30000,65535)
                    AI:SetTimer(2,1000,65535)
                    AI:SetTimer(3,5000,65535)
                    AI:SetTimer(4,30000,65535)
                    AI:SetArray(1,3)                    
                end
            end
            
             if a == 3 then
               if HP < HPMAX * 0.6 then                                 
                    AI:SetTimer(1,30000,65535)
                    AI:SetTimer(2,1000,65535)
                    AI:SetTimer(3,5000,65535)
                    AI:SetTimer(4,30000,65535)
                    AI:SetArray(1,4)
                end
            end
            
             if a == 4 then
                if HP < HPMAX * 0.5 then                                   
                    AI:SetTimer(1,30000,65535)
                    AI:SetTimer(2,1000,65535)
                    AI:SetTimer(3,5000,65535)
                    AI:SetTimer(4,30000,65535)
                    AI:SetArray(1,5)                  
                end
            end                               
        end
    end
    
    function Event_OnDead(nAI)
	    local AI = GetMonsterAI(nAI)
	    AI:ScreenText("Thor is defeated",2)
    end
	
                                                                               