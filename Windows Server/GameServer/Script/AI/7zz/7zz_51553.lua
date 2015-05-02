--????
function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --?? 
        say = AI:GetArray(3)
        if say == 1		then
        	AI:Say("You exist only because I imagined you.")
        	AI:SetArray( 3 , 2 )
        end
        if say == 2		then
        	AI:Say("The gods gave me this body and my abilities!")
        	AI:SetArray( 3 , 3 )
        end
        if say == 3		then
        	AI:Say("You will be punished for this!")
        	AI:SetArray( 3 , 4 )
        end
        if say == 4		then
        	AI:Say("And you, who was almost beat to death.")
        	AI:SetArray( 3 , 5 )
        end
        if say == 5		then
        	AI:Say("You...")
        	AI:SetArray( 3 , 6 )
        end
        AI:AddSkill(2006,1)
        AI:UseSkill(2006,1)
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
    
    --??
    b = AI:GetArray(2)
        if b == 0 then
        	AI:ScreenText( "Jealousy becomes crazy, envy and spite appear.", 2 )
        	AI:AddSkill(2018,1)
        	AI:UseSkill(2018,1)
        	AI:SetArray( 2 , 1 )
        end
    
    t = AI:HaveAttackTarget()
    if t == false then
        AI:DelTimer(0)
        AI:SetArray(0,0)
        AI:SetArray(1,0)
        AI:SetArray(3,0)
    else
        map = AI:GetMapID()
	    dead = AI:GetEctypeVarShort(map, 43)
        if dead == 1	then
        	AI:Say("Where is your elemental magic? You said you could revive if I believed in it? Get up.")
        	AI:SetEctypeVarShort( map, 43, 0 )
        end
        a = AI:GetArray(1)
        if a == 0 then
        	say = AI:GetArray(3)
        	if say == 0		then
        		AI:Say("Go away, your magic can't defeat him.")
        		AI:SetArray( 3 , 1 )
        	end
            AI:SetTimer(0,10000,65535)
            AI:SetArray(1,1)
        end
    end
end

function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
    map = AI:GetMapID()
    AI:SetEctypeVarShort( map, 42, 1 )
end