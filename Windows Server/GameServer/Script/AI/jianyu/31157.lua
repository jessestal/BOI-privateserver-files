    --??BOSS AI 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --//???
        AI:AddSkill(8727,3)
        AI:UseSkill(8727,3)
        AI:Say("You do not fight alone! Face me coward!") 
    end
    if nIndex == 1 then
        --//???
        AI:AddSkill(8727,4)
        AI:UseSkill(8727,4)
        AI:Say("Hahahaha! I can feel you quiver!") 
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
        AI:SetArray(1,0)
    else
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
        a = AI:GetArray(1)
        if a == 0 then
                AI:Say("Actually, I'm a pacifist, but the weak are unqualified to discuss justice with me!") 
                AI:SetTimer(0,10000,65535)
                AI:SetTimer(1,18000,65535)
                AI:SetArray(1,1)
        end
        if a == 1 then
            if HP < HPMAX * 0.1 then
                AI:Say("I know that my Redeemer lives, and that one day he will stand upon the earth. After my flesh has been destroyed, with my spirit I shall see the gods.") 
                AI:SetArray(1,2)
            end
        end
    end
end
