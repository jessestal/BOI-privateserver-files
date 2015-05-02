--??????AI
function Event_OnTimer(nAI, nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --???? 
        AI:Say("I can tear you flesh as tearing the Chrono!")
        AI:AddSkill(8655,1)
        AI:UseSkill(8655,1)
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                  
t = AI:HaveAttackTarget()
    if t == false then
        AI:DelTimer(0)
        AI:SetArray(4,0)
    else 
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
        HPADD = AI:GetArray(3)
        
        if HPADD - HP > 100000 then
            AI:Say("I hear of numerous guardian's moans. Ha, stupid human beings, you are doomed today!")
            AI:AddSkill(8657,1)
            AI:UseSkill(8657,1)
            AI:SetArray(3,HP) 
        end
                    
        a = AI:GetArray(4)
        if a == 0 then
            if HP < HPMAX then
                AI:Say("I'm the lord of the Void. Who can defeat me?")
                AI:SetTimer(0,80000,65535)
                AI:SetArray(4,1)
                AI:SetArray(3,HP)    
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.9 then
                AI:Say("Time stops!")
                AI:AddSkill(8654,1)
                AI:UseSkill(8654,1)
                AI:SetArray(4,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.8 then
                AI:Say("Chaos is the source of all power. Feel my rage!")
                AI:AddSkill(8656,1)
                AI:UseSkill(8656,1)
                AI:SetArray(4,3)
            end
        end
        if a == 3 then
            if HP < HPMAX * 0.75 then
                AI:Say("Time stops!")
                AI:AddSkill(8654,1)
                AI:UseSkill(8654,1)
                AI:SetArray(4,4)
            end
        end
        if a == 4 then
            if HP < HPMAX * 0.60 then
                AI:Say("Chaos is the source of all power. Feel my rage!")
                AI:AddSkill(8656,1)
                AI:UseSkill(8656,1)
                AI:SetArray(4,5)
            end
        end
        if a == 5 then
            if HP < HPMAX * 0.50 then
               	AI:Say("Time stops!")
                AI:AddSkill(8654,1)
                AI:UseSkill(8654,1)
                AI:SetArray(4,6)
            end
        end
        if a == 6 then
            if HP < HPMAX * 0.40 then
               	AI:Say("Chaos is the source of all power. Feel my rage!")
                AI:AddSkill(8656,1)
                AI:UseSkill(8656,1)
                AI:SetArray(4,7)
            end
        end
        if a == 7 then
            if HP < HPMAX * 0.30 then
               	AI:Say("Time stops!")
                AI:AddSkill(8654,1)
                AI:UseSkill(8654,1)
                AI:SetArray(4,8)
            end
        end
        if a == 8 then
            if HP < HPMAX * 0.20 then
               	AI:Say("Chaos is the source of all power. Feel my rage!")
                AI:AddSkill(8656,1)
                AI:UseSkill(8656,1)
                AI:SetArray(4,9)
            end
        end
        if a == 9 then
            if HP < HPMAX * 0.15 then
               	AI:Say("Time stops!")
                AI:AddSkill(8654,1)
                AI:UseSkill(8654,1)
                AI:SetArray(4,10)
            end
        end
        if a == 10 then
            if HP < HPMAX * 0.1 then
               	AI:Say("Chaos is the source of all power. Feel my rage!")
                AI:AddSkill(8656,1)
                AI:UseSkill(8656,1)
                AI:SetArray(4,11)
            end
        end
    end
end