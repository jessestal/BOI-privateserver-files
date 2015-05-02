---Ä§½£³öÉú¶¯»­
	
	
    function Event_OnTimer(nAI,nIndex, nCount)
        local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
    	  	AI:Exit()
    		end
    end
    
    function Event_Thinking(nAI)
        local AI = GetMonsterAI(nAI)
        
       	a = AI:GetArray(1)
				if a == 0 then
			----AI:PlayAction( "born1" , 8000 , 0 )
					AI:SetTimer( 0 , 8000 , 1 )
					mapid = AI:GetMapID()
        				AI:PlayGameSound( 2 , mapid , "..\\Data\\Audio\\Monster\\mojianyouling_appear.wav" )
			    AI:SetArray(1,1)
				end
    end
    
	
    function Event_OnDead(nAI)
	    local AI = GetMonsterAI(nAI)
    end          