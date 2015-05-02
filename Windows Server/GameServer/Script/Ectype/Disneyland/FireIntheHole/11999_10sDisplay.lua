        --------------------------------------------
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2012/11/12
	--		Author:???
	--		Class: Lua
	--		AIName:11999_10sDisplay.lua
	--		Backup:10????
	--------------------------------------------- 
    function Event_OnTimer(nAI,nIndex, nCount)
        local AI = GetMonsterAI(nAI)
        local mapid = AI:GetMapID()
        
        if nIndex == 0 then
	        local	a = AI:GetArray(1)
	        if a == 1 then   	
	        	AI:Say("Mummies are gathering their energy.")
	        	AI:ChangeMonsterSize(1.6)
	        	AI:SetArray(1,2)
	        end        
	        if a == 2 then        	
	        	AI:Say("Mummies are gathering their energy.")
	        	AI:ChangeMonsterSize(2.4)
	        	AI:SetArray(1,3)
	        end	        	
	        if a == 3 then         	
	        	AI:Say("Mummies are gathering their energy.")
	        	AI:ChangeMonsterSize(3.2)
	        	AI:SetArray(1,4)
	        end            
	        if a == 4 then   	
	        	AI:Say("Mummies are gathering their energy.")
	        	AI:ChangeMonsterSize(4.2)
	        	AI:SetArray(1,5)
	        end         
	        if a == 5 then    	
	        	AI:Say("The Sarcophagus will appear soon.")
	        	AI:SelfMurder()
	        end   
	      end                       
        
        
end
    
    function Event_Thinking(nAI)
        local AI = GetMonsterAI(nAI)
        
        a = AI:GetArray(1)
        if a == 0 then
       		AI:SetTimer( 0 , 2200 , 5 )
       		AI:SetArray(1,1)
       		AI:SetAIState(7)
        end
end
    
	
    function Event_OnDead(nAI)
	    local AI = GetMonsterAI(nAI)
	  
    end             