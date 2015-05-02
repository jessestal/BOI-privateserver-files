    --??BOSS AI 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --//???
        AI:AddSkill(8727,7)
        AI:UseSkill(8727,7)
        AI:Say("Curiosity killed the cat!") 
    end
    if nIndex == 1 then
        --//???
        AI:AddSkill(8727,8)
        AI:UseSkill(8727,8)
        AI:Say("Don't you get it, mortal?!") 
    end
end


function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
    t = AI:HaveAttackTarget()
    if t == false then
        AI:DelTimer(0)
        AI:DelTimer(1)
        AI:DelTimer(2)
        AI:DelTimer(3)
        AI:SetArray(1,0)
    else
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
        a = AI:GetArray(1)
        if a == 0 then
                AI:Say("Everyone lives at the mercy of fate. The only destiny we all share... is death!") 
                AI:SetTimer(0,10000,65535)
                AI:SetTimer(1,18000,65535)
                AI:SetArray(1,1)
        end
        if a == 1 then
            if HP < HPMAX * 0.1 then
                AI:Say("Forgive me. My death only emphasizes my failure.") 
                AI:SetArray(1,2)
            end
        end
    end
end
