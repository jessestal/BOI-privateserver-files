--???????(??) 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --???? 
        AI:Say("You can't defeat the Tyr Spirit Sword without my help.") 
        AI:AddSkill(2004,1)
        AI:UseSkill(2004,1)
    end
    if nIndex == 1 then
        --????2 
        AI:Say("I try my best to help you.") 
        AI:AddSkill(2004,2)
        AI:UseSkill(2004,2)
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                  
    t = AI:HaveAttackTarget()
    if t == false then
        AI:DelTimer(0)
        AI:DelTimer(1)
        AI:SetArray(1,0)
    else
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax() 
        
        a = AI:GetArray(1)
        if a == 0 then
            AI:SetTimer(0,30000,65535) 
            AI:SetTimer(1,45000,65535)
            AI:AddSkill(2004,1)
            AI:UseSkill(2004,1)
            AI:AddSkill(2004,2)
            AI:UseSkill(2004,2)
            AI:SetArray(1,1)
        end
    end
    
function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
end       
    
    