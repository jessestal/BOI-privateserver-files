--??????? 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --AOE 
        AI:Say("Have you ever tasted hell?!") 
        AI:AddSkill(8856,1)
        AI:UseSkill(8856,1)
    end
    if nIndex == 1 then
        --???? 
        AI:Say("The Kraken will tear you to pieces!")
        AI:AddSkill(8857,1)
        AI:UseSkill(8857,1)
    end
    if nIndex == 2 then
        --????? 
        AI:Say("Meet my pet monkey! Isn't he playful?") 
        AI:SummonMonster(51136,1)
    end
    if nIndex == 3 then
        --????
        AI:Say("Hell is waiting for you!") 
        AI:AddSkill(8860,1)
        AI:UseSkill(8860,1)
    end
    if nIndex == 4 then
        --????? 
        AI:Say("Sailors!  Deal with these fools!") 
        AI:SummonMonster(51126,2)
    end
    if nIndex == 5 then
        --????
        rand = AI:GetRand(4)
        if rand == 0 then
            AI:Say("The moonlight reveals my true colors!")
            AI:SummonMonsterByPos(51141, 159, 113)
        end
        if rand == 1 then
            AI:Say("The moonlight reveals my true colors!")
            AI:SummonMonsterByPos(51141, 151, 109)
        end
        if rand == 2 then
            AI:Say("The moonlight reveals my true colors!")
            AI:SummonMonsterByPos(51141, 151, 102)
        end
        if rand == 3 then
            AI:Say("The moonlight reveals my true colors!")
            AI:SummonMonsterByPos(51141, 159, 102)
        end
        if rand == 4 then
            AI:Say("The moonlight reveals my true colors!")
            AI:SummonMonsterByPos(51141, 161, 107)
        end
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
        AI:SetArray(1,0)
    else
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()

        a = AI:GetArray(1)
        if a == 0 then
            if HP < HPMAX then
                AI:Say("You have a lot of courage to come here.  I admire that, but... I'm in a bad mood today! Die!")
                --??ID 
                AI:AddSkill(8857,1)
                AI:UseSkill(8857,1)
                AI:SetTimer(0,40000,65535)
                AI:SetTimer(1,65000,65535)
                AI:SetTimer(5,70000,65535)
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.9 then
                AI:Say("You want that coin?!  Take it!")
                --??? 
                AI:SummonMonster(51136,1)
                AI:SetTimer(2,85000,65535)
                AI:SetArray(1,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.6 then
                AI:Say("You dare challenge me?! Speak!")
                --????ID 
                AI:AddSkill(8860,1)
                AI:UseSkill(8860,1)
                AI:SetTimer(3,38000,65535)
                AI:SetArray(1,3)
            end
        end
        if a == 3 then
            if HP < HPMAX * 0.20 then
                AI:Say("You cannot kill what is already dead!")
                --??????? 
                AI:SummonMonster(51126,2)
                AI:SetTimer(4,45000,65535)
                --?? 
                AI:AddSkill(8862,1)
                AI:UseSkill(8862,1) 
                AI:SetArray(1,4)
            end
        end
    end
end 
  