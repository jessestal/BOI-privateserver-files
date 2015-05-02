--?????
function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --???? 
        r = AI:GetRand(1)
        if r == 0 then
        	AI:Say("Don't be mad, calm down, listen to me.") 
        end
        if r == 1 then
        	AI:Say("You really want to beat me?")
        end 
    
        AI:AddSkill(2007,1)
        AI:UseSkill(2007,1)
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
    
    t = AI:HaveAttackTarget()
    if t == false then
        AI:DelTimer(0)
        AI:SetArray(1,0)
    else
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
        
        a = AI:GetArray(1)
        if a == 0 then
            AI:Say("Yes, master, I will sacrifice myself to break this noble guest.") 
            AI:SetTimer(0,10000,65535)
            AI:SetArray(1,1)
        end
    end
end

function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
    AI:Say("Master, I am going to die......") 
end
