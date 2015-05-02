--?????
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --?? 
        AI:Say("Uh-huh!") 
        AI:AddSkill(8840,1)
        AI:UseSkill(8840,1)
    end
    if nIndex == 1 then
        --?AOE 
        AI:Say("My axe cut you good!")
        AI:AddSkill(8841,1)
        AI:UseSkill(8841,1) 
    end
    if nIndex == 2 then
        --?? 
        AI:Say("You can't hurt Marcell!") 
        AI:AddSkill(8842,1)
        AI:UseSkill(8842,1)
    end
    if nIndex == 3 then
        --?? 
        AI:Say("Marcell make you go BOOM!") 
        AI:SummonMonster(51140,2)
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
                AI:Say("You think you better than Marcell?")
                AI:AddSkill(8840,1)
                AI:UseSkill(8840,1)
                AI:SetTimer(0,80000,65535)
                AI:SetTimer(1,55000,65535)
                AI:SetTimer(2,75000,65535)
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.6 then
                AI:DelTimer(2)
                AI:Say("Special gunpowder make Marcell strong!")
                AI:SummonMonster(51140,2)
                AI:SetTimer(3,120000,65535)
                AI:SetArray(1,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.1 then
                AI:Say("Me angry!  Marcell mean business!!")
                AI:AddSkill(8844,1)
                AI:UseSkill(8844,1)
                AI:SetArray(1,3)
            end
        end
    end
end 
  