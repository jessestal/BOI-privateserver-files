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
                AI:Say("I am finally free from the horrible power. Beowulf could not see him again. I will fill Golden Trumpet with Beowulf's love, so that we could be together in other means. Please send the Golden Trumpet to Beowulf.")
                AI:SetArray(4,1)
            end
        end
    end
end