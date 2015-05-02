--??????? 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --AOE 
        AI:Say("Have you ever tasted hell?!") 
        AI:AddSkill(8856,2)
        AI:UseSkill(8856,2)
    end
    if nIndex == 1 then
        --???? 
        AI:Say("The Kraken will tear you to pieces!")
        AI:AddSkill(8857,4)
        AI:UseSkill(8857,4)
    end
    if nIndex == 2 then
        --??? 
        --AI:Say("GUID:02814000002") 
        --AI:SummonMonster(51456,1)
    end
    if nIndex == 3 then
        --????
        AI:Say("Hell is waiting for you!") 
        AI:AddSkill(8860,4)
        AI:UseSkill(8860,4)
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
        AI:SetArray(1,0)
    else
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()

        a = AI:GetArray(1)
        if a == 0 then
            if HP < HPMAX then
                AI:Say("You have a lot of courage to come here.  I admire that, but...I'm in a bad mood today! Die!")
                --??ID 
                AI:AddSkill(8857,4)
                AI:UseSkill(8857,4)
                --AI:SetTimer(0,40000,65535)
                AI:SetTimer(1,65000,65535)
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.6 then
                AI:Say("You dare challenge me?! Speak!")
                --????ID 
                AI:AddSkill(8860,4)
                AI:UseSkill(8860,4)
                AI:SetTimer(3,38000,65535)
                AI:SetArray(1,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.2 then
                AI:Say("You cannot kill what is already dead!")
                --??????? 
                --AI:SummonMonster(51446,2)
                --?? 
                AI:AddSkill(8862,2)
                AI:UseSkill(8862,2) 
                AI:SetArray(1,3)
            end
        end
    end
end 
  