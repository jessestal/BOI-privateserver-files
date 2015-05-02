--?? 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --???? 
        AI:Say("Go to hell!") 
        AI:AddSkill(8865,1)
        AI:UseSkill(8865,1)
    end
    if nIndex == 1 then
        --???? 
        AI:Say("I'll crush your skull!")
        AI:AddSkill(8866,1)
        AI:UseSkill(8866,1)
    end
    if nIndex == 2 then
        --??XP 
        AI:Say("What a bothersome gnat!") 
        AI:AddSkill(8872,1)
        AI:UseSkill(8872,1)
    end
    if nIndex == 3 then
        --???? 
        AI:Say("Ha! Your armor can't protect you from me!") 
        AI:AddSkill(8867,1)
        AI:UseSkill(8867,1)
    end
    if nIndex == 4 then
        --???? 
        AI:Say("Oh, my! Is that a scratch?") 
        AI:AddSkill(8868,1)
        AI:UseSkill(8868,1)
    end
    if nIndex == 5 then
        --????  
        AI:GetRandTarget()
        AI:AddSkill(8870,1)
        AI:UseSkill(8870,1)
    end
    if nIndex == 6 then
        --????  
        AI:Say("Hahaha! That tickles!")
        AI:AddSkill(8869,1)
        AI:UseSkill(8869,1)
    end
    if nIndex == 7 then
        --????  
        AI:Say("Wait... how are you still alive?! I'll smash you to pieces!")
        AI:AddSkill(8871,1)
        AI:UseSkill(8871,1)
    end
    if nIndex == 8 then
        --??4???? 
        AI:SetTimer(4,30000,65535)
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
        AI:DelTimer(6)
        AI:DelTimer(7)
        AI:DelTimer(8)
        AI:SetArray(1,0)
    else
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()

        a = AI:GetArray(1)
        if a == 0 then
            if HP < HPMAX then
                AI:Say("I haven't seen a living soul in ages! Oh, how I missed killing you little worms!")
                --????ID 
                AI:AddSkill(8866,1)
                AI:UseSkill(8866,1)
                AI:SetTimer(0,50000,65535)
                AI:SetTimer(1,80000,65535)
                AI:SetTimer(2,35000,65535)
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.7 then
                AI:Say("We'll just see who has the last laugh!")
                --?? 
                AI:SetTimer(3,30000,65535)
                AI:SetTimer(8,15000,1)
                AI:SetArray(1,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.4 then
                AI:Say("You cannot defeat me!")
                --????ID 
                AI:DelTimer(3)
                AI:DelTimer(4)
                AI:DelTimer(8)
                AI:AddSkill(8869,1)
                AI:UseSkill(8869,1)
                AI:SetTimer(6,600000,65535)
                AI:SetTimer(5,20000,65535)
                AI:SetArray(1,3)
            end
        end
        if a == 3 then
            if HP < HPMAX * 0.1 then
                AI:Say("I would rather die than stay here in this prison!")
                --????ID 
                AI:AddSkill(8871,1)
                AI:UseSkill(8871,1) 
                AI:SetTimer(7,600000,65535)
                AI:SetArray(1,4)
            end
        end
    end
end 
  