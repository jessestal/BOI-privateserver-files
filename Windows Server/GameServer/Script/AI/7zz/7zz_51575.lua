--??

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
    
    t = AI:HaveAttackTarget()
    if t == false then
        AI:DelTimer(0)
        AI:SetArray(1,0)
    else
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
        
        a = AI:GetArray(1)
        if a == 0 then
            if HP < HPMAX then
                AI:Say("How? How can you get this sword?") 
                AI:SetArray(1,1)
            end 
        end
        if a == 1 then
            if HP < HPMAX * 0.8 then
                AI:Say("I have a surprise for you, come out Hayes. ") 
                AI:SummonMonsterByPos( 51577 , 168 , 113 )
                AI:SetArray(1,2)
            end 
        end
        if a == 2 then
            if HP < HPMAX * 0.6 then
                AI:Say("So cool...Milia! Come to heal us.") 
                AI:SummonMonsterByPos( 51576 , 199 , 112 )
                AI:SetArray(1,3)
            end 
        end
    end
end

function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
end