--????? 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --???AOE 
        AI:Say("Shadow Impact!") 
        AI:AddSkill(8835,2)
        AI:UseSkill(8835,2)
    end
    if nIndex == 1 then
        --???? 
        AI:Say("Stay!")
        AI:GetRandTarget()
        AI:AddSkill(8836,2)
        AI:UseSkill(8836,2)
    end
    if nIndex == 2 then
        --?? 
        AI:Say("Don't even think of running! I'll break your legs!") 
        AI:AddSkill(8837,2)
        AI:UseSkill(8837,2)
    end
    if nIndex == 3 then
        --??? 
        AI:Say("In 5 seconds, you will feel the power of hell!") 
        AI:SetTimer(4,1000,1)
        AI:SetTimer(5,2000,1)
        AI:SetTimer(6,3000,1)
        AI:SetTimer(7,4000,1)
        AI:SetTimer(8,5000,1)
    end
    if nIndex == 4 then
        --??? 
        AI:Say("4!") 
    end
    if nIndex == 5 then
        --??? 
        AI:Say("3!") 
    end
    if nIndex == 6 then
        --??? 
        AI:Say("2!") 
    end
    if nIndex == 7 then
        --??? 
        AI:Say("1!") 
    end
    if nIndex == 8 then
        --??? 
        AI:Say("Go to hell!")
        AI:AddSkill(8838,2)
        AI:UseSkill(8838,2) 
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
                AI:Say("Welcome to Specter Island. I'm your guide!")
                AI:AddSkill(8835,2)
                AI:UseSkill(8835,2)
                AI:SetTimer(0,20000,65535)
                AI:SetTimer(1,50000,65535)
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.8 then
                AI:Say("The greeting ceremony has begun!")
                AI:AddSkill(8837,2)
                AI:UseSkill(8837,2)
                AI:SetTimer(2,25000,65535)
                AI:SetArray(1,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.5 then
                AI:DelTimer(2)
                AI:Say("In 5 seconds, you will feel the power of hell!") 
                AI:SetTimer(4,1000,1)
                AI:SetTimer(5,2000,1)
                AI:SetTimer(6,3000,1)
                AI:SetTimer(7,4000,1)
                AI:SetTimer(8,5000,1)
                AI:SetTimer(3,30000,65535)
                AI:SetArray(1,3)
            end
        end
        if a == 3 then
            if HP < HPMAX * 0.15 then
                AI:DelTimer(3)
                AI:Say("No more games! Down to business...") 
                AI:AddSkill(8839,2)
                AI:UseSkill(8839,2)
                AI:SetArray(1,4)
            end
        end    
    end
end 
  