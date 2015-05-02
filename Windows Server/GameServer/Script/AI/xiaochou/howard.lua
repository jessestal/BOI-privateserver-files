--????? 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --???? 
        AI:Say("Dance of chill!") 
        AI:AddSkill(8789,1)
        AI:UseSkill(8789,1)
    end
    if nIndex == 1 then
        --????
        AI:Say("I accept your soul!")
        AI:AddSkill(8799,3)
        AI:UseSkill(8799,3)
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
                AI:Say("I'm the third. Play with me!")
                --???? 
                AI:SetTimer(0,47000,65535)
                AI:SetTimer(1,30000,65535)
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.9 then 
                AI:Say("Haha, so funny!")
                AI:AddSkill(8790,1)
                AI:UseSkill(8790,1)
                AI:SetArray(1,2)
            end     
        end
        if a == 2 then
            if HP < HPMAX * 0.75 then 
                AI:Say("Haha, so funny!")
                AI:AddSkill(8790,1)
                AI:UseSkill(8790,1)
                AI:SetArray(1,3)
            end     
        end
        if a == 3 then
            if HP < HPMAX * 0.6 then 
                AI:Say("Great!")
                AI:AddSkill(8790,1)
                AI:UseSkill(8790,1)
                AI:SetArray(1,4)
            end     
        end
        if a == 4 then
            if HP < HPMAX * 0.45 then 
                AI:Say("Lots of fun!")
                AI:AddSkill(8790,1)
                AI:UseSkill(8790,1)
                AI:SetArray(1,5)
            end     
        end
        if a == 5 then
            if HP < HPMAX * 0.3 then 
                AI:Say("No!")
                AI:AddSkill(8790,1)
                AI:UseSkill(8790,1)
                AI:SetArray(1,6)
            end     
        end
        if a == 6 then
            if HP < HPMAX * 0.15 then 
                AI:Say("I get angry!")
                AI:AddSkill(8790,1)
                AI:UseSkill(8790,1)
                AI:SetArray(1,7)
            end     
        end
    end
end

