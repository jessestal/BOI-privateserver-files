        --------------------------------------------
	--
	--		Copyright：PERFECT WORLD
	--		Modified：2010/3/1
	--		Author：杨海勇
	--		Class: Lua
	--		AIName：51649.lua
	--		Backup：海皇出生
	--------------------------------------------- 
	
	
    function Event_OnTimer(nAI,nIndex, nCount)
        local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        	x = AI:GetPosX()
    	   	y = AI:GetPosY()
    	  	AI:SummonMonsterByPos( 51648 , x , y )
    	  	
		AI:SelfMurder()
        end    
    end
    
    function Event_Thinking(nAI)
        local AI = GetMonsterAI(nAI)
        
       	a = AI:GetArray(1)
	if a == 0 then
		AI:PlayAction( "born1" , 8766 , 0 )
		AI:SetTimer( 0 , 8766 , 1 )
        	AI:SetArray(1,1)
	end
    end
    
	
    function Event_OnDead(nAI)
	    local AI = GetMonsterAI(nAI)
    end             