--??????? 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --???? 
        AI:Say("I hold the power to stop time in my hands!") 
        AI:AddSkill(8886,1)
        AI:UseSkill(8886,1)
    end
    if nIndex == 1 then
        --?? 
        AI:Say("You won't be able to pierce my magic shield! No matter how strong your weapon!")
        AI:AddSkill(8887,1)
        AI:UseSkill(8887,1)
    end
    if nIndex == 2 then
        --?? 
        AI:Say("Nothing survives an attack from my magic!") 
        AI:AddSkill(8888,1)
        AI:UseSkill(8888,1)
    end
    if nIndex == 3 then
        --????  
        AI:Say("Is that mana I sense? I'll just take a little for myself, okay?") 
        AI:AddSkill(8889,1)
        AI:UseSkill(8889,1)
    end
    if nIndex == 4 then
        --?????? 
        AI:Say("Don't let your inner feelings confuse you! Hahahaha!") 
        AI:SummonMonster(51187,2)
    end
    if nIndex == 5 then
        --???? 
        AI:Say("All right... now you're beginning to irritate me!") 
        AI:AddSkill(8890,1)
        AI:UseSkill(8890,1)
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
                AI:Say("Since you are here, you might as well accept my challenge. You can't possibly stand against Efreet, even if you manage to defeat me!")
                AI:AddSkill(8886,1)
                AI:UseSkill(8886,1)
                AI:SetTimer(0,45000,65535)
                AI:SetTimer(1,65000,65535)
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.8 then
                AI:Say("Your trial has begun!  But you haven't seen anything, yet!")
                --??ID 
                AI:AddSkill(8888,1)
                AI:UseSkill(8888,1)
                AI:SetTimer(2,35000,65535)
                AI:SetArray(1,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.5 then
                AI:Say("I'm sorry... does that ruin your focus?") 
                --???? 
                AI:SummonMonster(51187,2)
                AI:SetTimer(3,50000,65535)
                AI:SetTimer(4,70000,65535)
                AI:SetArray(1,3)
            end
        end
        if a == 3 then
            if HP < HPMAX * 0.15 then
                AI:Say("You aren't nearly strong enough for me!") 
                --???? 
                AI:AddSkill(8890,1)
                AI:UseSkill(8890,1)
                AI:SetTimer(5,600000,65535)
                AI:SetArray(1,4)
            end
        end
    end
end 
  