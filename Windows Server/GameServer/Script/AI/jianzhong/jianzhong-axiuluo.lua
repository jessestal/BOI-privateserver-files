--?????AI
function Event_OnTimer(nAI, nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        AI:Say("Repent your sins, mortal!")
        --??,?BOSS??6????????,????2? 
        AI:AddSkill(8616,6)
        AI:UseSkill(8616,6)
    end
    if nIndex == 1 then
        AI:Say("Darkness is my force!")
        AI:AddSkill(8752,1)
        AI:UseSkill(8752,1)
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
t = AI:HaveAttackTarget()
    if t == false then
        AI:DelTimer(0)
        AI:DelTimer(1)
        AI:SetArray(4,0)
    else                   
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
                    
        a = AI:GetArray(4)
        if a == 0 then
            if HP < HPMAX then
                AI:Say("Who dares to bother me?")
                --AI:SetTimer(0,20000,65535)
                --AI:SetTimer(1,35000,65535) 
                AI:SetArray(4,1)    
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.8 then
                AI:Say("Let's play!")
                --????Lv2,??360?5??????????
                AI:AddSkill(8777,1)
                AI:UseSkill(8777,1)
                AI:SetArray(4,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.6 then
                AI:Say("That's what you deserve!")
                --????Lv3,??360?5??????????,?Lv2?? 
                AI:AddSkill(8777,1)
                AI:UseSkill(8777,1)
                AI:SetArray(4,3)
            end
        end
        if a == 3 then
            if HP < HPMAX * 0.4 then
                AI:Say("I curse you!")
                --????,????????DOT?? 
                --AI:AddSkill(8766,1)
                --AI:UseSkill(8766,1)
                AI:SetArray(4,4)
            end
        end
        if a == 4 then
            if HP < HPMAX * 0.2 then
                AI:Say("Ashura King never tastes of failure!")
                --??BUFF,??BOSS????? 
                AI:AddSkill(8763,1) 
                AI:UseSkill(8763,1)
                AI:SetArray(4,5)
            end
        end
    end
end