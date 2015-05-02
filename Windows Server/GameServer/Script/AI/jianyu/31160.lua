    --??BOSS AI 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --//???
        AI:AddSkill(8727,9)
        AI:UseSkill(8727,9)
        AI:Say("Don't let your enemy know what you are thinking!") 
    end
    if nIndex == 1 then
        --//???
        AI:AddSkill(8727,10)
        AI:UseSkill(8727,10)
        AI:Say("Believe in me to receive eternal life!") 
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
                AI:Say("Once someone got close to catching me. I ate his liver for dinner! Muahaha!") 
                AI:SetTimer(0,10000,65535)
                AI:SetTimer(1,18000,65535)
                AI:SetArray(1,1)
        end
        if a == 1 then
            if HP < HPMAX * 0.1 then
                AI:Say("Congratulations on defeating me. Most people aren't thankful for their very existence, but I see that you aren't like most people.") 
                AI:SetArray(1,2)
            end
        end
    end
end
