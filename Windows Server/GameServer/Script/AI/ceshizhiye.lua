--?????????
function Event_OnTimer(nAI, nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --????????
        if x == 1 then
            AI:Say("I'm aiming for Berzerkers!")
            AI:AddSkill(8808,1)
            AI:UseSkill(8808,1) 
        end
        if x == 2 then
            AI:Say("I'm aiming for Champions!")
            AI:AddSkill(8811,1)
            AI:UseSkill(8811,1) 
        end
        if x == 3 then
            AI:Say("I'm aiming for Slayers!")
            AI:AddSkill(8817,1)
            AI:UseSkill(8817,1) 
        end
        if x == 4 then
            AI:Say("I'm aiming for Magi!")
            AI:AddSkill(8820,1)
            AI:UseSkill(8820,1) 
        end
        if x == 5 then
            AI:Say("I'm aiming for Heretics!")
            AI:AddSkill(8814,1)
            AI:UseSkill(8814,1) 
        end
    end  
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
    v = HaveAttackTarget()
    if v = false then
        AI:Deltimer(0)
        AI:SetArray(1,0)
    else
        HP = GetHP()
        HPMAX = GetHPMax()
        x = GetAttackTargetPro()
        a = AI:GetArray(1)
        if a == 0 then
            if HP < HPMAX then
                AI:Say("Come on, beat me!")
                AI:SetTimer(0,3000,65535)
                AI:SetArray(1,1)
            end
        end
    end     
end                 