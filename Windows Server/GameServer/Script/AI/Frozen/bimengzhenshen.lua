--???? 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --???? 
        AI:Say("Trembling, mortal!") 
        AI:AddSkill(8840,3)
        AI:UseSkill(8840,3)
    end
    if nIndex == 1 then
        --???? 
        AI:GetRandTarget()
        AI:AddSkill(8831,3)
        AI:UseSkill(8831,3)
    end
    if nIndex == 2 then
        --???? 
        AI:Say("Even your frail hands could hardly hold a weapon!") 
        AI:AddSkill(8868,2)
        AI:UseSkill(8868,2)
    end
    if nIndex == 3 then
        --????  
        AI:Say("I'm strongest of all, you will never hurt me!") 
        AI:AddSkill(8887,3)
        AI:UseSkill(8887,3)
    end
    if nIndex == 4 then
        --???? 
        AI:Say("At my place, you are just a swarm of rats!") 
        AI:AddSkill(8867,2)
        AI:UseSkill(8867,2)
    end
    if nIndex == 5 then
        --???? 
        AI:Say("You irritate me. Die!") 
        AI:AddSkill(8804,2)
        AI:UseSkill(8804,2)
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
        AI:DelTimer(5)
        AI:SetArray(1,0)
    else
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax() 
        HPADD = AI:GetArray(3)
                               
        a = AI:GetArray(1)
        if a == 0 then
            if HP < HPMAX then
                AI:Say("I have slept for thousands of years! Why did you disturb my quietness?")
                --????
                AI:SetArray(3,HP)
                HPADD = AI:GetArray(3)
                AI:SetTimer(0,30000,65535)
                AI:SetTimer(1,20000,65535) 
                AI:SetArray(1,1)
            end
        end

        if HPADD - HP > 400000 then
            AI:Say("Shivering in front of my claws!")
            AI:AddSkill(8837,3)
            AI:UseSkill(8837,3)
            AI:SetArray(3,HP)
            --??40???????AI 
        end

        if a == 1 then
            if HP < HPMAX * 0.9 then
                AI:Say("Cowards, don't be scared, show your power!") 
                AI:AddSkill(8868,2)
                AI:UseSkill(8868,2)
                AI:SetTimer(2,44000,65535)
                AI:SetArray(1,2)
            end
        end
        
        if a == 2 then
            if HP < HPMAX * 0.6 then
                AI:Say("damage me with your fragile weapons? Don't be so naive!") 
                AI:DelTimer(2)
                AI:AddSkill(8887,3)
                AI:UseSkill(8887,3)
                AI:SetTimer(3,50000,65535)
                AI:SetTimer(4,60000,65535)
                AI:SetArray(1,3)
            end
        end
        
        if a == 3 then
            if HP < HPMAX * 0.2 then
                AI:Say("You irritate me. Die!") 
                AI:DelTimer(3)
                AI:DelTimer(4)
                AI:AddSkill(8804,2)
                AI:UseSkill(8804,2)
                AI:SetTimer(5,600000,65535)
                AI:SetArray(1,4)
            end
        end
    end
end            