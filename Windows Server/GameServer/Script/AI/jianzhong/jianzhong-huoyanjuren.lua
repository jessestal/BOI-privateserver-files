--??????? 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --???? 
        AI:Say("I've got my eye on you!") 
        AI:AddSkill(8744,3)
        AI:UseSkill(8744,3)
    end
    if nIndex == 1 then
        --?????? 
        AI:Say("Grr... I'm getting impatient! Die, already!") 
        AI:AddSkill(8750,3)
        AI:UseSkill(8750,3)
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
                AI:Say("Either you are very brave... or very stupid!")
                --??ID 
                AI:AddSkill(8745,3)
                AI:UseSkill(8745,3)
                AI:SetTimer(0,44000,65535)
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.2 then
                AI:Say("Won't cooperate, eh?! Die!") 
                AI:AddSkill(8750,3)
                AI:UseSkill(8750,3)
                AI:SetTimer(1,600000,65535)
                AI:SetArray(1,4)
            end
        end
    end
end 
  