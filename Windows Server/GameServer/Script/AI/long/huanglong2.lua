--?? 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --XX?? 
        AI:Say("Die, mortal!") 
        AI:AddSkill(8814,1)
        AI:UseSkill(8814,1)
    end
    if nIndex == 1 then
        --???? 
        AI:Say("Am I not gorgeous?! The glaring light of my beauty protects me from your petty skills!") 
        AI:AddSkill(8829,1)
        AI:UseSkill(8829,1)
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
        HPADD = AI:GetArray(3)
        
        if HPADD - HP > 100000 then
            AI:Say("Repent! This will be your final judgment!")
            AI:AddSkill(8828,1)
            AI:UseSkill(8828,1)
            AI:SetArray(3,HP) 
        end

        a = AI:GetArray(1)
        if a == 0 then
            if HP < HPMAX then
                AI:Say("You ants dare disturb my peace? Pay for your insolence!")
                AI:SetTimer(0,20000,65535)
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.4 then
                AI:SetTimer(1,90000,65535)
                AI:AddSkill(8829,1)
                AI:UseSkill(8829,1)
                AI:SetArray(1,2)
            end
        end
    end
end 
  