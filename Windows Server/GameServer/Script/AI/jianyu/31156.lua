    --??BOSS AI 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --//???
        AI:AddSkill(8727,1)
        AI:UseSkill(8727,1)
        AI:Say("Suffer death!") 
    end
    if nIndex == 1 then
        --//???
        AI:AddSkill(8727,2)
        AI:UseSkill(8727,2)
        AI:Say("Are you afraid?") 
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
                AI:Say("These walls are kind of funny like that. First you hate them, then you get used to them. Enough time passes that you begin to depend on them!") 
                AI:SetTimer(0,10000,65535)
                AI:SetTimer(1,18000,65535)
                AI:SetArray(1,1)
        end
        if a == 1 then
            if HP < HPMAX * 0.1 then
                AI:Say("We are the middle children of history. We have no purpose or place! My time is up!") 
                AI:SetArray(1,2)
            end
        end
    end
end
