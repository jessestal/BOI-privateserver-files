        --------------------------------------------
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2012/11/12
	--		Author:???
	--		Class: Lua
	--		AIName:11985_monster_MummyCoffins.lua
	--		Backup:?????
	--------------------------------------------- 
    function Event_OnTimer(nAI,nIndex, nCount)
        local AI = GetMonsterAI(nAI)
        local mapid = AI:GetMapID()
        
        if nIndex == 0 then
	        local	a = AI:GetArray(1)
	        local MonsterID = 11995
	        local PosX = AI:GetPosX()
	        local PosY = AI:GetPosY()
	        local turn = AI:GetEctypeVarShort(mapid,2)
	        if a == 1 then  
	        	if turn < 4 then    	
	        		AI:Say("The Mummy will get out the coffin in 4 seconds.")
	        	end
	        	AI:ChangeMonsterSize(0.4)
	        	AI:SetArray(1,2)
	        end        
	        if a == 2 then  
	        	if turn < 4 then        	
	        		AI:Say("The Mummy will get out the coffin in 3 seconds.")
	        	end
	        	AI:ChangeMonsterSize(0.45)
	        	AI:SetArray(1,3)
	        end	        	
	        if a == 3 then   
	        	if turn < 5 then       	
	        		AI:Say("The Mummy will get out the coffin in 2 seconds.")
	        	end
	        	AI:ChangeMonsterSize(0.5)
	        	AI:SetArray(1,4)
	        end            
	        if a == 4 then 
	        	if turn < 5 then     	
	        		AI:Say("The Mummy will get out the coffin in 1 second.")
	        	end
	        	AI:ChangeMonsterSize(0.55)
	        	AI:SetArray(1,5)
	        end         
	        if a == 5 then 
	        	if turn < 8 then     	
	        		AI:Say("The Mummy will get out the coffin.")
	        	end
	        	AI:SummonMonsterByPos(MonsterID,PosX,PosY,1)
	        	AI:Exit()
	        end   
	      end                       
        
        
end
    
    function Event_Thinking(nAI)
        local AI = GetMonsterAI(nAI)
        
        a = AI:GetArray(1)
        if a == 0 then
       		AI:SetTimer( 0 , 1000 , 5 )
       		AI:SetArray(1,1)
       		AI:SetAIState(7)
        end
end
    
	
    function Event_OnDead(nAI)
	    local AI = GetMonsterAI(nAI)
	  
    end             