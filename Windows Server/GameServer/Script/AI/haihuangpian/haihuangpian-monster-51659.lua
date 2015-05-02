--  Copyright: PERFECT WORLD
--  Modified: 2010/3/1
--  Author: ???
--  Class: Lua
--  File Name: haihuangpian-monster-51659.lua
--  Remarks: ???


function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    
        if nIndex == 0 then
		
		AI:OpenMapMask( 8 )
		
		AI:ScreenText( "The path to Poseidon is open! Defeat him and save Athena to gain Poseidon's Force." , 2 )
		
		x = AI:GetPosX()
    	   	y = AI:GetPosY()
    	   	
    	   	level = AI:GetLevel()
    	   	AI:SummonLevelMonsterByPos( 51648 , 57 , level , x , y )
    	  	
		AI:SelfMurder()
		
        end
        
        if nIndex == 1 then
        
        	AI:ScreenText( "The path to Poseidon will be open in 4 minutes! Defeat him and save Athena to gain Poseidon's Force." , 2 )
        
        end
        
        if nIndex == 2 then
        
        	AI:ScreenText( "The path to Poseidon will be open in 3 minutes! Defeat him and save Athena to gain Poseidon's Force." , 2 )
        
        end
        
        if nIndex == 3 then
        
        	AI:ScreenText( "The path to Poseidon will be open in 2 minutes! Defeat him and save Athena to gain Poseidon's Force." , 2 )
        
        end
        
        if nIndex == 4 then
        
        	AI:ScreenText( "The path to Poseidon will be open in a minute! Defeat him and save Athena to gain Poseidon's Force." , 2 )
        
        end
        
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
        
        a = AI:GetArray(1)
        if a == 0 then
                AI:SetTimer(0,300000,1)
                AI:SetTimer(1,60000,1)
                AI:SetTimer(2,120000,1)
                AI:SetTimer(3,180000,1)
                AI:SetTimer(4,240000,1)
                AI:SetArray(1,1)
        end
        
end

function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
end  