--????
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --????
        AI:Say("Hatred Impact!") 
        AI:AddSkill(8798,5)
        AI:UseSkill(8798,5)
    end
    if nIndex == 1 then
        --????
        AI:Say("I accept your soul!")
        AI:AddSkill(8797,3)
        AI:UseSkill(8797,3)
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
                AI:Say("I'm the elder. All creatures here should comply with my will!")
                --???? 
                AI:SetTimer(0,87000,65535)
                AI:SetTimer(1,55000,65535)
                AI:AddSkill(8798,5)
                AI:UseSkill(8798,5)
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.3 then 
                AI:Say("You ignored me, I got angry!")
                AI:AddSkill(8763,1)
                AI:UseSkill(8763,1)
                AI:SetArray(1,2)
            end     
        end
    end
end

