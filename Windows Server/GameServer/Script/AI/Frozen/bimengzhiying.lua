--???? 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --???? 
        AI:Say("Trembling, mortal!") 
        AI:AddSkill(8840,4)
        AI:UseSkill(8840,4)
    end
    if nIndex == 1 then
        --???? 
        AI:GetRandTarget()
        AI:AddSkill(8870,2)
        AI:UseSkill(8870,2)
    end
    if nIndex == 2 then
        --???? 
        AI:Say("Even your frail hands could hardly hold a weapon!") 
        AI:AddSkill(8868,3)
        AI:UseSkill(8868,3)
    end
    if nIndex == 3 then
        --????  
        AI:Say("Dare to challenge me? Interesting!") 
        AI:AddSkill(8776,2)
        AI:UseSkill(8776,2)
    end
    if nIndex == 4 then
        --???? 
        AI:Say("You irritate me. Die!") 
        AI:AddSkill(8804,3)
        AI:UseSkill(8804,3)
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
        AI:DelTimer(4)
        AI:SetArray(1,0)
    else
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax() 
        HPADD = AI:GetArray(3)
                               
        a = AI:GetArray(1)
        if a == 0 then
            if HP < HPMAX then
                AI:Say("You mortals dare summon my true body? I'm afraid that you can't even defeat my shadow!")
                --????
                AI:SetTimer(0,30000,65535)
                AI:SetTimer(1,20000,65535) 
                AI:SetArray(1,1)
            end
        end

        if a == 1 then
            if HP < HPMAX * 0.9 then
                AI:Say("Cowards, don't be scared, show your power!") 
                AI:AddSkill(8868,3)
                AI:UseSkill(8868,3)
                AI:SetTimer(2,44000,65535)
                AI:SetArray(1,2)
            end
        end
        
        if a == 2 then
            if HP < HPMAX * 0.6 then
                AI:Say("I shall tear you to ribbons!") 
                AI:DelTimer(2)
                AI:AddSkill(8776,2)
                AI:UseSkill(8776,2)
                AI:SetTimer(3,35000,65535)
                AI:SetArray(1,3)
            end
        end
        
        if a == 3 then
            if HP < HPMAX * 0.2 then
                AI:Say("You irritate me. Die!") 
                AI:AddSkill(8804,3)
                AI:UseSkill(8804,3)
                AI:SetTimer(4,600000,65535)
                AI:SetArray(1,4)
            end
        end
    end
end            