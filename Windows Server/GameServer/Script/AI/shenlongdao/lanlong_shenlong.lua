--?? 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --XX?? 
        AI:Say("Can you pass my test, mortal?!") 
        AI:AddSkill(8811,2)
        AI:UseSkill(8811,2)
    end
    if nIndex == 1 then
        --???? 
        AI:Say("The frost-covered ground will freeze you in place!") 
        AI:AddSkill(8827,2)
        AI:UseSkill(8827,2)
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
            if HP < HPMAX then
                AI:Say("You seek the approval of the ancient dragons? Show me your bravery, first!")
                AI:SetTimer(0,20000,65535)
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.4 then
                AI:SetTimer(1,25000,65535)
                AI:AddSkill(8827,2)
                AI:UseSkill(8827,2)
                AI:SetArray(1,2)
            end
        end
    end
end 
  