	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2010/03/17
	--		Author:???
	--		Class:	.Lua
	--		AIName:Swb-Mjmy-51502.lua
	--		Remark:?????
	----------------------------------------------------
	
-- 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    
    if nIndex == 0 then
	    AI:Say("Arrows attack!") 
	    x = AI:GetPosX()
	    y = AI:GetPosY()
	    
	    AI:SummonMonsterByPos( 51537 , x+3 , y+3 )
	    AI:SummonMonsterByPos( 51537 , x-3 , y-3 )
	    AI:SummonMonsterByPos( 51537 , x+3 , y-3 )
	    AI:SummonMonsterByPos( 51537 , x-3 , y+3 )
	    AI:SummonMonsterByPos( 51537 , x , y+3 )
	    AI:SummonMonsterByPos( 51537 , x+3 , y )
	    AI:SummonMonsterByPos( 51537 , x-3 , y )
	    AI:SummonMonsterByPos( 51537 , x , y-3 )
	    
	    AI:SummonMonsterByPos( 51537 , x+2 , y+2 )
	    AI:SummonMonsterByPos( 51537 , x-2 , y-2 )
	    AI:SummonMonsterByPos( 51537 , x+2 , y-2 )
	    AI:SummonMonsterByPos( 51537 , x-2 , y+2 )
	    AI:SummonMonsterByPos( 51537 , x , y+2 )
	    AI:SummonMonsterByPos( 51537 , x+2 , y )
	    AI:SummonMonsterByPos( 51537 , x-2 , y )
	    AI:SummonMonsterByPos( 51537 , x , y-2 )
	    
	    AI:SummonMonsterByPos( 51537 , x+1 , y+1 )
	    AI:SummonMonsterByPos( 51537 , x-1 , y-1 )
	    AI:SummonMonsterByPos( 51537 , x+1 , y-1 )
	    AI:SummonMonsterByPos( 51537 , x-1 , y+1 )
	    AI:SummonMonsterByPos( 51537 , x , y+1 )
	    AI:SummonMonsterByPos( 51537 , x+1 , y )
	    AI:SummonMonsterByPos( 51537 , x-1 , y )
	    AI:SummonMonsterByPos( 51537 , x , y-1 )
	    
	    AI:AddSkill(2000,2)
	    AI:UseSkill(2000,2)
    end
    
    if nIndex == 1 then
      a = AI:GetArray(8)
			if a == 0 then
				AI:Say("My trap is broken.")
				AI:SetArray(8,1)
			elseif a == 1 then
				AI:Say("But you, young man, thank you, I will reward you.")
				AI:ScreenText("Tyr smiles evilly.",2)
				AI:SetArray(8,2)
			elseif a == 2 then
				AI:ChangeFaction(1)
				AI:SetArray(5,2) 
				AI:SetArray(8,3)
			end
    end
    
    if nIndex == 2 then
      a = AI:GetArray(9)
			if a == 0 then
				AI:Say("I am wrong, forgive me.")
				AI:SetArray(9,1)
			elseif a == 1 then
				AI:Say("Please take me to Aeacus, I will apologize personally.")
				AI:SetArray(9,2)
			elseif a == 2 then
				AI:Say("I am weak, I should go back.")
				mapid = AI:GetMapID()
				AI:SetEctypeVarShort( mapid , 36 , 1 )
				AI:AddNPC( 570 )
				AI:Exit()
				AI:SetArray(9,3)
				
			end
    end
    
     if nIndex == 3 then
	    AI:Say("Blade Fury") 
	    x = AI:GetPosX()
	    y = AI:GetPosY()
	    
	    AI:SummonMonsterByPos( 51538 , x , y+4 )
	    AI:SummonMonsterByPos( 51538 , x , y-4 )
	    AI:SummonMonsterByPos( 51538 , x+4 , y )
	    AI:SummonMonsterByPos( 51538 , x-4 , y )
	    
	    AI:SummonMonsterByPos( 51538 , x+4 , y+4 )
	    AI:SummonMonsterByPos( 51538 , x-4 , y-4 )
	    AI:SummonMonsterByPos( 51538 , x+4 , y+4 )
	    AI:SummonMonsterByPos( 51538 , x-4 , y-4 )
	    
	    AI:AddSkill(2003,1)
	    AI:UseSkill(2003,1)
    end
    
    if nIndex == 4 then
      a = AI:GetArray(7)
			if a == 0 then
				AI:Say("You can't defeat me.")
				AI:SetArray(7,1)
			elseif a == 1 then
				AI:Say("My defense is invulnerable.")
				AI:SetArray(7,2)
			elseif a == 2 then
				AI:Say("What's that?")
				AI:SetArray(7,3)
			elseif a == 3 then
				AI:Say("Mjollnir, Thor's Hammer!")
				x = AI:GetPosX()
	    	y = AI:GetPosY()
				AI:SummonMonsterByPos( 51532 , x+2 , y+2 )
				AI:SetArray(7,4)
			end
    end
    
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
    
    a = AI:GetArray(5) 
    if a == 0 then
    	AI:SetTimer(1,5000,4)
    	AI:SetArray(5,1) 
    	
    elseif a == 2 then
    	n = AI:GetEnmityCount()
	    if n < 1 then
	        AI:DelTimer(0)
	        AI:SetArray(1,0)
	    else
	        HP = AI:GetHP()
	        HPMAX = AI:GetHPMax()
	        a = AI:GetArray(1)
	        if a == 0 then
	            if HP < HPMAX then
	                AI:Say("Pay for your foolishness.")
	                AI:SetTimer(0,20000,65535)
	                AI:SetTimer( 4 , 8000 ,10 )
	                AI:SetArray(1,1)
	            end
	        elseif a == 1 then
	            if HP < HPMAX * 0.9 then
	                AI:SetTimer(3, 30000 , 65535 ) 
	                AI:SetArray(1,2)
	            end
	        elseif a == 2 then
	            if HP < HPMAX * 0.88 then
	                AI:Say("You've angered me!")
	                AI:AddSkill(2001,2)
	                AI:UseSkill(2001,2)
	                AI:AddSkill(2003,1)
	                AI:UseSkill(2003,1)
	                AI:SetArray(1,3)
	            end
	       elseif a == 3 then
	            if HP < HPMAX * 0.7 then
	                --AI:Say("GUID:02862000014") 
	                AI:AddSkill(2001,2)
	                AI:UseSkill(2001,2)
	                AI:AddSkill(2003,1)
	                AI:UseSkill(2003,1)
	                AI:SetArray(1,4)
	            end
	       elseif a == 4 then
	            if HP <= HPMAX * 0.3 then
	                AI:SetAIState(7)
	                AI:SetTimer( 2, 7000 , 5 )
	                AI:ChangeFaction(11)
	                AI:DelTimer(0)
	                AI:DelTimer(3)
	                AI:SetArray(1,5)
	                AI:SetArray(5,5)
	            end
	        end
	     end
    end
end 
   
function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
    		
end       
    
    