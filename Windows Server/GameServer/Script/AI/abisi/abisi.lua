--?????
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --???? 
        AI:Say("Flames, born from the abyss... burn my enemies!") 
        AI:AddSkill(8764,1)
        AI:UseSkill(8764,1)
    end
    if nIndex == 1 then
        --??
        AI:Say("Flames of the earth, obey my commands! Reduce these fools to ashes!")
        AI:AddSkill(8765,1)
        AI:UseSkill(8765,1)
    end
    if nIndex == 2 then
        --???? 
        AI:Say("I shall be reborn from flames!") 
        AI:AddSkill(8767,1) 
        AI:UseSkill(8767,1)
    end
    if nIndex == 3 then
        --???? 
        AI:Say("Succumb to the seething fires of my anger!")
        AI:AddSkill(8768,1)
        AI:UseSkill(8768,1)
    end
    if nIndex == 4 then
        --?? 
        AI:Say("I'll watch you roast! Your pain is delicious!")
        AI:AddSkill(8769,1)
        AI:UseSkill(8769,1)
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
                AI:Say("I will not be imprisoned here forever, Osiris! Your crown rightfully belongs to me!")
                --???? 
                AI:SetTimer(0,35000,65535)
                AI:SetArray(3,HP)
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.7 then
                AI:SetTimer(1,25000,65535) 
                AI:Say("Recovering flames surround my body! Be my sword and shield!")
                AI:AddSkill(8767,1) 
                AI:UseSkill(8767,1)
                AI:SetTimer(2,300000,65535)
                HPADD = AI:GetArray(3)
                if HPADD - HP > 100000 then
                    AI:Say("Let fire incinerate your flesh... devour your soul!")
                    AI:AddSkill(8766,1) 
                    AI:UseSkill(8766,1)
                    AI:SetArray(3,HP)
                end
                AI:SetArray(1,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.39 then
                AI:Say("My desires have yet to be fulfilled! If you mortals insist on blocking my path to revival, I have no choice but to destroy you!")
                AI:SetTimer(3,50000,65535)
                AI:SetTimer(4,20000,65535)
                AI:SetArray(1,3)
            end
        end
    end
end

                