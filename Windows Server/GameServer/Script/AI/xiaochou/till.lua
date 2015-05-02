--????
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --????
        AI:Say("Dance of Prayer!") 
        AI:AddSkill(8801,1)
        AI:UseSkill(8801,1)
    end
    if nIndex == 1 then
        --????
        AI:Say("Dance of Rage!")
        AI:AddSkill(8800,1)
        AI:UseSkill(8800,1)
    end
    if nIndex == 2 then
        --20K
        AI:AddSkill(8787,1)
        AI:UseSkill(8787,1)
    end
    if nIndex == 3 then
        --???
        AI:Say("3")
    end
    if nIndex == 4 then
        --???
        AI:Say("2")
    end
    if nIndex == 5 then
        --???
        AI:Say("1")
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                  
t = AI:HaveAttackTarget()
    if t == false then
        AI:DelTimer(0)
        AI:DelTimer(1)
        AI:DelTimer(2)
        AI:SetArray(1,0)
    else
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
                    
        a = AI:GetArray(1)
        if a == 0 then
            if HP < HPMAX then
                AI:Say("I'm the second, the most handsome of the world!")
                --???? 
                AI:SetTimer(0,55000,65535)
                AI:SetTimer(1,117000,65535)
                AI:AddSkill(8800,1)
                AI:UseSkill(8800,1)
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.05 then 
                AI:Say("Welcome the doomsday! Let's count down together!")
                AI:SetTimer(2,4000,1)
                AI:SetTimer(3,1000,1)
                AI:SetTimer(4,2000,1)
                AI:SetTimer(5,3000,1)
                AI:SetArray(1,2)
            end     
        end
    end
end

