--  Copyright: PERFECT WORLD
--  Modified: 2010/3/1
--  Author: ???
--  Class: Lua
--  File Name: 
--  Remarks: 


function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    
       if nIndex == 0 then
       
		level = AI:GetLevel()
		x = AI:GetPosX()
	    y = AI:GetPosY()
		
		mapid = AI:GetMapID()
		mode = AI:GetEctypeVarInteger( mapid ,111 )
		
		if mode == 0 then
			lev = 62
		else
			lev = 61
		end
		AI:SummonLevelMonsterByPos( 51634 , lev , level , x , y )
		AI:SummonMonsterByPos( 51638, x, y )
		--AI:Say( "GUID:02728000000" )
		AI:Exit()
	end
		if nIndex == 1 then

			x = AI:GetPosX()
		    y = AI:GetPosY()
			AI:SummonMonsterByPos( 51724, x, y )
		end
        
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
        
        a = AI:GetArray(1)
     	if a == 0 then
        	--AI:Say( "GUID:02728000001" )
        	--AI:PlayAction( "birth" , 3000 , 0 )
                AI:SetTimer( 0 , 3700 , 1 )
                AI:SetTimer( 1 , 3500 , 1 )
                AI:SetArray(1,1)
        end
        
end

function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
    
end  