--?????AI
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --?BOSS??????HP 
        AI:AddSkill(8752,1)
        AI:UseSkill(8752,1)
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                  
t = AI:HaveAttackTarget()
    if t == false then
        AI:DelTimer(0)
        AI:SetArray(4,0)
    else 
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
                    
        a = AI:GetArray(4)
        if a == 0 then
            if HP < HPMAX then
                AI:Say("Arrogant mortals die or not. That's a question for you!")
                AI:SetTimer(0,20000,65535)
                AI:SetArray(4,1)    
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.8 then
                AI:Say("Not even close. Let the strike come stronger!")
                --BOSS??,??5?
                AI:AddSkill(8753,1)
                AI:UseSkill(8753,1)
                AI:SetArray(4,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.6 then
                AI:Say("The spirit, crying under the moon, responds to the rage of my heart. Sink those fools into endless darkness!")
                --????,??360?5??????????
                AI:AddSkill(8776,1)
                AI:UseSkill(8776,1)
                AI:SetArray(4,3)
            end
        end
        if a == 3 then
            if HP < HPMAX * 0.4 then
                AI:Say("The magic shield covers me! You poor mortals can not damage the protection blessed by Naga.")
                --BOSS??,??5?
                AI:AddSkill(8630,4)
                AI:UseSkill(8630,4)
                AI:SetArray(4,4)
            end
        end
        if a == 4 then
            if HP < HPMAX * 0.2 then
                AI:Say("I'm the queen of Naga! Poor human, prepare for your death!")
                --??,??????? 
                AI:AddSkill(8763,1)
                AI:UseSkill(8763,1)
                AI:SetArray(4,5)
            end
        end
    end
end