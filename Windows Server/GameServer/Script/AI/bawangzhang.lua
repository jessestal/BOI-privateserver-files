--????AI

function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --?? 
        AI:AddSkill(8622,10)
        AI:UseSkill(8622,10)
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)

t = AI:HaveAttackTarget()
    if t == false then
        AI:DelTimer(0)
        AI:SetArray(4,0)
    else                   
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
                                    
        --BOSS??????????? 
        a = AI:GetArray(4)
        if a == 0 then
            if HP < HPMAX then
                AI:Say("Why awakened us from my ancient slumber? You must pay for it!")
                AI:SetTimer(0,15000,65535)
                AI:SetArray(4,1)    
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.6 then
                AI:Say("Feel my tentacles!")
                --????,???? 
                AI:AddSkill(8616,7)
                AI:UseSkill(8616,7)
                AI:SetArray(4,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.3 then
                AI:Say("No one can survive my tentacles!")
                --????,???? 
                AI:AddSkill(8616,7)
                AI:UseSkill(8616,7)
                AI:SetArray(4,3)
            end
        end
        if a == 3 then
            if HP < HPMAX * 0.1 then
                AI:Say("King of the ocean, please, grants me powerful magic!")
                --????,??????? 
                AI:AddSkill(8636,10)
                AI:UseSkill(8636,10)
                AI:SetArray(4,4)
            end
        end
    end  
end