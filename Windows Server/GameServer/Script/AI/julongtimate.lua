function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        AI:Say("Feel my sorrow!")
        AI:AddSkill(8606,7)
        AI:UseSkill(8606,7)
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
            if HP < HPMAX then
                --????
                AI:Say("Beowulf isn't here. How dare you come?") 
                AI:SetTimer(0,10000,65535)
                AI:SetArray(1,1)
            end
        end
    end
end
 