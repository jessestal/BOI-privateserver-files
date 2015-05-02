--?????AI

function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --???? 
        AI:AddSkill(8764,1)
        AI:UseSkill(8764,1)
    end
    if nIndex == 1 then
        AI:AddSkill(8613,6)
        AI:UseSkill(8613,6)
    end
    if nIndex == 2 then
        --?? 
        AI:AddSkill(8616,3)
        AI:UseSkill(8616,3)
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
                AI:Say("I appreciate your courage, mortal! Few dare to stand before me. You will collapse after the first blow...")
                --AI:SetTimer(0,40000,65535)
                AI:SetTimer(1,40000,65535)
                AI:SetArray(4,1)    
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.8 then
                AI:Say("Feeble ants! Suffer!")
                --??,????? 
                AI:AddSkill(8616,3)
                AI:UseSkill(8616,3)
                AI:SetTimer(2,60000,65535)
                AI:SetArray(4,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.5 then
                AI:Say("You cannot hurt me with your weapon!")
                --????90%,??10? 
                --AI:AddSkill(8646,1)
                --AI:UseSkill(8646,1)
                AI:SetArray(4,3)
            end
        end
        if a == 3 then
            if HP < HPMAX * 0.35 then
                AI:Say("Flames! Rise from hell and reduce my enemies to ash!")
                --????,??120??????????,???DOT 
                --AI:AddSkill(8765,1)
                --AI:UseSkill(8765,1)
                AI:SetArray(4,4)
            end
        end
        if a == 4 then
            if HP < HPMAX * 0.2 then
                AI:Say("The world is mine! You cannot stop me!")
                --??,??????? 
                --AI:AddSkill(8767,1)
                --AI:UseSkill(8767,1)
                AI:SetArray(4,5)
            end
        end
        if a == 5 then
            if HP < HPMAX * 0.1 then
                AI:Say("The Spring of Life grants me incredible power!")
                --????90%,??10? 
                --AI:AddSkill(8646,1)
                --AI:UseSkill(8646,1)
                AI:SetArray(4,6)
            end
        end
    end
end