        --------------------------------------------
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/13
	--		Author:??? 
	--		Class: Lua
	--		AIName:Monster-52610.lua
	--		Backup:
	--------------------------------------------- 
	
    function Event_OnTimer(nAI,nIndex, nCount)
        local AI = GetMonsterAI(nAI)	
       	
       	if nIndex == 0 then
       		AI:Say("Who dares to break into the forbidden lair of Latamantis!")
       		mapid = AI:GetMapID()
       		AI:FlyToMap( -1 , mapid , 85 , 88 )
       		AI:SelfMurder()
       	end
       	
    end
    
    
    function Event_Thinking(nAI)
        local AI = GetMonsterAI(nAI)
        
        a = AI:GetArray(1)
        if a == 0 then
        	v = AI:HaveAttackTarget()
		
		if v == true then
			AI:PlayAction( "dead" , 8000 , 0 )
			AI:SetTimer( 0 , 1200 , 1 )
		
       			x = AI:GetPosX()
    	  	 	y = AI:GetPosY()
    	  		AI:SummonMonsterByPos( 52613 , x , y )
    	  		
    	  		AI:SetArray(1,1)
		end
        end
         
     end
	
	
	function Event_OnDead(nAI)
	    local AI = GetMonsterAI(nAI)

	end