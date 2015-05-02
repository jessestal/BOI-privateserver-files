--MD maintask
function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                  
t = AI:HaveAttackTarget()
    if t == false then
    else 
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
                                    
        a = AI:GetArray(4)
        if a == 0 then
            if HP < HPMAX * 0.1 then
                AI:Say("I can't resist, but the tribe guards will defeat you.")
                AI:SetArray(4,1)
            end
        end
    end
end