--????? 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --???? 
        AI:Say("May the fiercest winds cut you like a blade!") 
        AI:AddSkill(8875,2)
        AI:UseSkill(8875,2)
    end
    if nIndex == 1 then
        --???? 
        AI:Say("You can not escape from the jaws of my mighty dragon!")
        AI:GetRandTarget()
        AI:AddSkill(8876,2)
        AI:UseSkill(8876,2)
    end
    if nIndex == 2 then
        --???? 
        AI:Say("Take a deep breath!  Relax!  Join us in the shadows.") 
        AI:AddSkill(8877,2)
        AI:UseSkill(8877,2)
    end
    if nIndex == 3 then
        --????  
        AI:Say("Shall I crank up the wind...?") 
        AI:AddSkill(8878,2)
        AI:UseSkill(8878,2)
    end
    if nIndex == 4 then
        --????? 
        AI:Say("Aww c'mon! Let me destroy you instead of Razill!") 
        AI:AddSkill(8879,2)
        AI:UseSkill(8879,2)
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

        a = AI:GetArray(1)
        if a == 0 then
            if HP < HPMAX then
                AI:Say("I have been ordered to kill you... and so, you must die!")
                AI:SetTimer(0,25000,65535)
                AI:SetTimer(1,37000,65535)
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.8 then
                AI:Say("The darkness consumes me. Let it wrap its arms around you...")
                --????ID 
                AI:AddSkill(8877,2)
                AI:UseSkill(8877,2)
                AI:SetTimer(2,70000,65535)
                AI:SetArray(1,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.5 then
                AI:Say("I must admit! You are a strong one!") 
                --????ID 
                AI:AddSkill(8878,2)
                AI:UseSkill(8878,2)
                AI:SetTimer(3,44000,65535)
                AI:SetArray(1,3)
            end
        end
        if a == 3 then
            if HP < HPMAX * 0.2 then
                AI:Say("I don't know the meaning of the word surrender!") 
                --??ID 
                AI:AddSkill(8879,2)
                AI:UseSkill(8879,2)
                AI:SetTimer(4,600000,65535)
                AI:SetArray(1,4)
            end
        end    
    end
end 
  