--????? 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --???? 
        AI:Say("Wake up, mortal! Dragon's blood had baptized me!") 
        AI:AddSkill(8804,1)
        AI:UseSkill(8804,1)
    end
    if nIndex == 1 then
        --????
        AI:Say("Let me protect the lair, leave here!") 
        AI:AddSkill(8805,1)
        AI:UseSkill(8805,1)
    end
    if nIndex == 2 then
        --????
        AI:Say("You shall not pass here unless you kill me!") 
        AI:AddSkill(8806,1)
        AI:UseSkill(8806,1)
    end 
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                  
t = AI:HaveAttackTarget()
    if t == false then
        AI:DelTimer(0)
        AI:DelTimer(1)
        AI:DelTimer(2)
        AI:SetArray(1,0)
    else
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()

        a = AI:GetArray(1)
        if a == 0 then
            if HP < HPMAX then
                AI:Say("You foolish invader dares to influence the creature here. Go to hell!")
                --???? 
                AI:SetTimer(0,20000,65535)
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.6 then
                AI:Say("Don't irritate me, otherwise you will pay for it!")
                AI:AddSkill(8806,1)
                AI:UseSkill(8806,1)
                AI:SetTimer(2,60000,65535)
                AI:SetArray(1,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.3 then
                AI:DelTimer(2)
                AI:Say("You irritate me. The cave will be your grave!")
                AI:SetTimer(1,20000,65535)
                AI:SetArray(1,3)
            end
        end
        if a == 3 then
            if HP < HPMAX * 0.01 then
                AI:Say("I warn you not to bother the dragon's quietness. Never try it!")
                AI:SetArray(1,4)
            end
        end
    end
end 
  