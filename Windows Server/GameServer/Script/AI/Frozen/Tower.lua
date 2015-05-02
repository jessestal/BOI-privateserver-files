--??? 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --???? 
        AI:AddSkill(9000,1)
        AI:UseSkill(9000,1)
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                  
t = AI:HaveAttackTarget()
    if t == false then
        AI:DelTimer(0)
        AI:SetArray(1,0)
    else
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
        HPADD = AI:GetArray(3)

        a = AI:GetArray(1)
        if a == 0 then
            if HP < HPMAX then
                AI:SetTimer(0,30000,65535)
                AI:SetArray(3,HP)
                HPADD = AI:GetArray(3)
                AI:SetArray(1,1)
            end
        end
        
        if HPADD - HP > 400000 then
            AI:AddSkill(9000,2)
            AI:UseSkill(9000,2)
            AI:SetArray(3,HP) 
        end
        
        if a == 1 then
            if HP < HPMAX * 0.5 then
                AI:Say("Defense Turret is protected by god of frost, gained invincible time.")
                AI:ScreenText("Defense Turret is protected by god of frost, gained invincible time.",1) 
                AI:AddSkill(3521,1)
            		AI:UseSkill(3521,1)
                AI:SetArray(1,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.2 then
            		AI:Say("Defense Turret is protected by god of frost, gained invincible time.")
                AI:ScreenText("Defense Turret is protected by god of frost, gained invincible time.",1) 
                AI:AddSkill(3521,1)
            		AI:UseSkill(3521,1)
                AI:SetArray(1,3)
            end
        end
    end
end 
  