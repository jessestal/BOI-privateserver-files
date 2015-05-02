--??? 
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
                AI:Say("It's stupid to interrupt my meal. You will regret what you did!")
                AI:SetArray(4,1)    
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.05 then
                AI:Say("Ow! Stop gloating! We, Diabolic Wolves, will never die!")
                AI:SetArray(4,2)    
            end
        end
    end
end