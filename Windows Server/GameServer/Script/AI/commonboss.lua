    --??BOSS AI 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --???????
        AI:GetRandTarget()
        AI:AddSkill(8644,1)
        AI:UseSkill(8644,1)
    end
    if nIndex == 1 then
        --??
        AI:Say("The ground is trembling beneath my feet!")
        AI:AddSkill(8616,4)
        AI:UseSkill(8616,4)
    end
    if nIndex == 2 then
        --???? 
        AI:Say("The cold will freeze you where you stand!")
        AI:AddSkill(8634,4)
        AI:UseSkill(8634,4)
    end
    if nIndex == 3 then
        --??
        AI:Say("Take that!")
        AI:AddSkill(8602,6)
        AI:UseSkill(8602,6)
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
            if HP < HPMAX then
                --????
                AI:Say("Don't attempt escape!") 
                AI:SetTimer(0,9000,65535)
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.75 then
                AI:Say("The ground is trembling beneath my feet!") 
                AI:SetTimer(1,30000,65535)
                AI:SetArray(1,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.5 then
                AI:Say("Take that!") 
                AI:SetTimer(3,20000,65535)
                AI:SetArray(1,3)
            end
        end
        if a == 3 then
            if HP < HPMAX * 0.3 then
                AI:Say("The cold will freeze you where you stand!") 
                AI:SetTimer(2,40000,65535)
                AI:SetArray(1,4)
            end
        end
        if a == 4 then
            if HP < HPMAX * 0.1 then
                AI:Say("Pay for my anger!")
                AI:AddSkill(8627,7)
                AI:UseSkill(8627,7)
                AI:SetArray(1,5)
            end
        end
    end
end
