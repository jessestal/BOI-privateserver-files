--MD MAINTASK
function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                  
t = AI:HaveAttackTarget()
    if t == false then
        AI:SetArray(4,0)
    else 
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
                                    
        a = AI:GetArray(4)
        if a == 0 then
            if HP < HPMAX then
                AI:Say("Who are you? Stay away from the stone table.")
                AI:SetArray(4,1)    
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.75 then
                AI:Say("How did you get into our tribe?")
                AI:SetArray(4,2)    
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.5 then
                AI:Say("I am asking you, answer me.")
                AI:SetArray(4,3)    
            end
        end
        if a == 3 then
            if HP < HPMAX * 0.25 then
                AI:Say("You read our ancient book, I must kill you.")
                AI:SetArray(4,4)
            end
        end
        if a == 4 then
            if HP < HPMAX * 0.1 then
                AI:Say("I swear to get the ancient book back.")
                AI:SetArray(4,5)
            end
        end
    end
end