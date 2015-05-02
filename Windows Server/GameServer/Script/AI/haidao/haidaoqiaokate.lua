--????? 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --?? 
        AI:Say("Let ice freeze your feet... slow your heart...") 
        AI:AddSkill(8845,1)
        AI:UseSkill(8845,1)
    end
    if nIndex == 1 then
        --?? 
        AI:Say("The cold numbs your lips. Ahhh... silence is golden...")
        AI:GetRandTarget()
        AI:AddSkill(8846,1)
        AI:UseSkill(8846,1)
    end
    if nIndex == 2 then
        --?? 
        AI:Say("I'm gonna gut you like a fish!") 
        AI:AddSkill(8847,1)
        AI:UseSkill(8847,1)
        AI:Say("Haha! I wonder what your guts look like...") 
    end
    if nIndex == 3 then
        --?AOE 
        AI:Say("I feel nothing! My heart is frozen solid.") 
        AI:AddSkill(8848,1)
        AI:UseSkill(8848,1)
    end
    if nIndex == 4 then
        --???? 
        AI:Say("The more the merrier! This party just got a whole lot better...") 
        AI:SummonMonster(51130,2)
    end
    if nIndex == 5 then
        --??
        AI:Say("Am I moving too fast for you?") 
        AI:AddSkill(8849,1)
        AI:UseSkill(8849,1)
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
        AI:DelTimer(4)
        AI:DelTimer(5)
        AI:SetArray(1,0)
    else
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()

        a = AI:GetArray(1)
        if a == 0 then
            if HP < HPMAX then
                AI:Say("Armond and Marcell? Those traitors!")
                --??ID 
                AI:AddSkill(8845,1)
                AI:UseSkill(8845,1)
                AI:SetTimer(0,60000,65535)
                AI:SetTimer(1,25000,65535)
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.8 then
                AI:Say("You don't stand a chance!")
                --??ID 
                AI:AddSkill(8848,1)
                AI:UseSkill(8848,1)
                AI:SetTimer(2,65000,65535)
                AI:SetTimer(3,78000,65535)
                AI:SetArray(1,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.5 then
                AI:DelTimer(2)
                AI:Say("Let's get this party started!")
                AI:SummonMonster(51130,2)
                AI:SetTimer(4,45000,65535)
                AI:SetArray(1,3)
            end
        end
        if a == 3 then
            if HP < HPMAX * 0.15 then
                AI:Say("The party is just getting good!")
                --??ID 
                AI:AddSkill(8849,1)
                AI:UseSkill(8849,1)
                AI:SetTimer(5,28000,65535)
                AI:SetArray(1,4)
            end
        end
    end
end 
  