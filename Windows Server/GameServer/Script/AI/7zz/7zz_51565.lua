--?? 

function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --?? 
        say = AI:GetArray(3)
        if say == 0		then
        	AI:Say("It's mine.")
        	AI:SetArray( 3 , 1 )
        end
        if say == 1		then
        	AI:Say("Don't touch my things.")
        	AI:SetArray( 3 , 2 )
        end
        if say == 2		then
        	AI:Say("Don't even shoot a glance at it.")
        	AI:SetArray( 3 , 3 )
        end
    end
    
    if nIndex == 1 then
        AI:Exit()
    end
    
    if nIndex == 2 then
        AI:ScreenText( "Money is the greatest weakness of Greed, go to kill Chest.", 2 )
    end
    
end

function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
    --??
    b = AI:GetArray(2)
    if b == 0 then
        AI:AddSkill(2018,1)
        AI:UseSkill(2018,1)
        AI:SetArray( 2 , 1 )
    end
    
    t = AI:HaveAttackTarget()
    if t == false then
        AI:DelTimer(0)
        AI:SetArray( 3 , 0 )
    else
	    map = AI:GetMapID()
	    dead = AI:GetEctypeVarShort(map, 41)
	    if dead == 1	then
	    	AI:PlayAction( "dead", 2000, 0 )
	    	AI:SetEctypeVarShort(map, 41, 0)
	    	AI:SetTimer(1,1500,1)
	    end
	    a = AI:GetArray(1)
	    if a == 0 then
	        --mapid = AI:GetMapID()
			AI:SetEctypeVarShort( map, 39, 55 )
	    	AI:SummonMonsterByPos( 51596 , 194, 204 )
	        AI:SummonMonsterByPos( 51566 , 194 , 204 )
	        AI:Say("That is my Chest. Mine. Don't touch it.") 
	        AI:SetTimer(0,8000,65535)
	        AI:SetTimer(2,8000,65535)
	        AI:SetArray( 1 , 1 )
	    end
	end
end

function Event_OnDead(nAI)
	local AI = GetMonsterAI(nAI)
	
end