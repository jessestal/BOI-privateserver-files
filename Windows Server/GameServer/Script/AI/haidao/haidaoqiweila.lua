--????? 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --??DOT 
        AI:Say("You like to have fighting?  Keep love for fighting!") 
        AI:GetRandTarget()
        AI:AddSkill(8850,1) 
        AI:UseSkill(8850,1)
    end
    if nIndex == 1 then
        --180??? 
        AI:Say("I am hating silence! You scream more!")
        AI:AddSkill(8851,1)
        AI:UseSkill(8851,1)
    end
    if nIndex == 2 then
        --??DOT 
        AI:Say("Feel love for fighting in my heart, yes?!") 
        AI:AddSkill(8852,1)
        AI:UseSkill(8852,1)
    end
    if nIndex == 3 then
        --?? 
        AI:Say("You think I am strange, yes? Killing you is great fun!") 
        AI:AddSkill(8853,1)
        AI:UseSkill(8853,1)
    end
    if nIndex == 4 then
        --??? 
        AI:Say("You will learn to be liking me... then I kill you dead!") 
        AI:AddSkill(8854,1)
        AI:UseSkill(8854,1)
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
                AI:Say("Jocart is much different from me. I am more hospitable!")
                --?DOTID 
                AI:GetRandTarget()
                AI:AddSkill(8850,1) 
                AI:UseSkill(8850,1)
                AI:SetTimer(0,90000,65535)
                AI:SetTimer(1,35000,65535)
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.8 then
                AI:Say("This great fun! I am being so bored for ages! I must thank you!")
                --??DOTID 
                AI:AddSkill(8852,1)
                AI:UseSkill(8852,1)
                AI:SetTimer(2,110000,65535)
                AI:SetArray(1,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.6 then
                AI:Say("Is like Siberian blizzard, here! I wish it to be hotter.")
                AI:AddSkill(8853,1)
                AI:UseSkill(8853,1)
                AI:SetTimer(3,70000,65535)
                AI:SetArray(1,3)
            end
        end
        if a == 3 then
            if HP < HPMAX * 0.25 then
                AI:Say("Captain Barbert teach you lesson in manners!")
                --??ID 
                AI:AddSkill(8854,1)
                AI:UseSkill(8854,1)
                AI:SetTimer(4,40000,65535)
                --?? 
                AI:AddSkill(8855,1)
                AI:UseSkill(8855,1)
                AI:SetArray(1,4)
            end
        end
    end
end 
  