--  Copyright: PERFECT WORLD
--  Modified: 2010/3/1
--  Author: ???
--  Class: Lua
--  File Name: haihuangpian-monster-51661.lua
--  Remarks: ??


function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    
       if nIndex == 0 then
       
		AI:Say( "Are you ready to let death wash over you?" )
		AI:PlayEffect("skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini")
		
		--??
		x = AI:GetPosX()
    	   	y = AI:GetPosY()
    	   	
    	   	level = AI:GetLevel()
    	   	AI:SummonLevelMonsterByPos( 51648 , 57 , level , x , y )
		
		AI:Exit()
	end
        
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
        
        a = AI:GetArray(1)
     	if a == 0 then
        	AI:Say( "No! You will pay! Insolent whelps...! " )
        	AI:PlayEffect("skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini")
        	--AI:PlayAction( "birth" , 3000 , 0 )
                AI:SetTimer( 0 , 2500 , 1 )
                AI:SetArray(1,1)
        end
        
end

function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
end  