    --??BOSS AI 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --//???
        AI:AddSkill(8727,5)
        AI:UseSkill(8727,5)
        AI:Say("The same day next year will be the anniversary of your death!") 
    end
    if nIndex == 1 then
        --//???
        AI:AddSkill(8727,6)
        AI:UseSkill(8727,6)
        AI:Say("Time to say your final goodbyes!") 
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
                AI:Say("Everything I've done in my life, whether good or evil, has been done to protect my family and friends.") 
                AI:SetTimer(0,10000,65535)
                AI:SetTimer(1,18000,65535)
                AI:SetArray(1,1)
        end
        if a == 1 then
            if HP < HPMAX * 0.1 then
                AI:Say("Impossible! I will not be defeated by puny humans!") 
                AI:SetArray(1,2)
            end
        end
    end
end
