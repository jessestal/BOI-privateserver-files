--????
function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --?? 
        say = AI:GetArray(3)
        if say == 1		then
        	AI:Say("I am real, you are just my illusion.")
        	AI:SetArray( 3 , 2 )
        end
        if say == 2		then
        	AI:Say("Funny, you are no better than dirt.")
        	AI:SetArray( 3 , 3 )
        end
        if say == 3		then
        	AI:Say("Does it still hurt where I lit you on fire? Beg me to stop.")
        	AI:SetArray( 3 , 4 )
        end
        if say == 4		then
        	AI:Say("You burnt yourself after I dodged.")
        	AI:SetArray( 3 , 5 )
        end
        if say == 5		then
        	AI:Say("Somebody is here, we will settle it.")
        	AI:SetArray( 3 , 6 )
        end
        AI:AddSkill(2014,1)
        AI:UseSkill(2014,1)
    end
    
    if nIndex == 1 then
    	say = AI:GetArray(3)
        if say == 0		then
        	AI:Say("Get out of here, magic is the most powerful force in the world.")
        	AI:SetArray( 3 , 1 )
        end
      	AI:SetTimer(0,10000,65535)
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
        AI:DelTimer(1)
        AI:SetArray(1,0)
        AI:SetArray(3,0)
    else
    	 map = AI:GetMapID()
        dead = AI:GetEctypeVarShort(map, 42)
        if dead == 1	then
        	AI:Say("Your strength just makes you heavier. I can help you, why don't you understand?")
        	AI:SetEctypeVarShort( map, 42, 0 )
        end
        a = AI:GetArray(1)
        if a == 0 then
        	AI:SetTimer(1,5000,1)
            AI:SetArray(1,1)
        end
    end
end

function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
    map = AI:GetMapID()
    AI:SetEctypeVarShort( map, 43, 1 )
end