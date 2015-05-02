--??
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)

end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                  
t = AI:HaveAttackTarget()
    if t == false then

        AI:SetArray(1,0)
    else
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()

        a = AI:GetArray(1)
        if a == 0 then
            if HP < HPMAX * 0.5 then
            		AI:Say("Fountain of Victory is protected by god of frost, gained invincible time.")
                AI:ScreenText("Fountain of Victory is protected by god of frost, gained invincible time.",1) 
                AI:AddSkill(3521,1)
            		AI:UseSkill(3521,1)
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.2 then
            		AI:Say("Fountain of Victory is protected by god of frost, gained invincible time.")
                AI:ScreenText("Fountain of Victory is protected by god of frost, gained invincible time.",1) 
                AI:AddSkill(3521,1)
            		AI:UseSkill(3521,1)
                AI:SetArray(1,2)
            end
        end
    end
end 
  