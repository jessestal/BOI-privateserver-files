--?? 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --XX?? 
        AI:Say("Die, mortal!") 
        AI:AddSkill(8820,1)
        AI:UseSkill(8820,1)
    end
    if nIndex == 1 then
        --XX?? 
        AI:Say("Think you can you handle this?!") 
        AI:AddSkill(8821,1)
        AI:UseSkill(8821,1)
    end
    if nIndex == 2 then
        --XX?? 
        AI:Say("You will regret what you've done today! I will reduce you to chunks of flesh!") 
        AI:AddSkill(8819,1)
        AI:UseSkill(8819,1)
    end
    if nIndex == 3 then
        --???? 
        AI:Say("Tremble before my power!") 
        AI:GetRandTarget()
        AI:AddSkill(8831,1)
        AI:UseSkill(8831,1)
    end 
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                  
t = AI:HaveAttackTarget()
    if t == false then
        AI:DelTimer(0)
        AI:DelTimer(1)
        AI:DelTimer(2)
        AI:SetArray(1,0)
    else
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
        HPADD = AI:GetArray(3)
        
        if HPADD - HP > 100000 then
            AI:Say("The very earth trembles before my feet! Know your place, mortal!")
            AI:AddSkill(8830,1)
            AI:UseSkill(8830,1)
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
            if HP < HPMAX * 0.6 then
                AI:Say("Waste my time on a tiny human? Flee... before I change my mind...")
                AI:SetTimer(1,60000,65535)
                AI:AddSkill(8821,1)
                AI:UseSkill(8821,1)
                AI:SetArray(1,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.4 then
                AI:SetTimer(3,34000,65535)
                AI:AddSkill(8831,1)
                AI:UseSkill(8831,1)
                AI:SetArray(1,3)
            end
        end
        if a == 3 then
            if HP < HPMAX * 0.1 then
                AI:DelTimer(1)
                AI:Say("That does it! You'll die for that!")
                AI:SetTimer(1,30000,65535)
                AI:SetTimer(2,120000,65535)
                AI:AddSkill(8819,1)
                AI:UseSkill(8819,1)
                AI:SetArray(1,4)
            end
        end
    end
end 
  