--??????? 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --???? 
        AI:Say("A curse upon all human beings! Not even your soul is safe...") 
        AI:AddSkill(8891,2)
        AI:UseSkill(8891,2)
    end
    if nIndex == 1 then
        --???? 
        AI:Say("The demon inside me endows me with the immense power of hell!")
        AI:AddSkill(8892,2)
        AI:UseSkill(8892,2)
    end
    if nIndex == 2 then
        --???? 
        AI:Say("The spirit of hell envelops your body... isolating your mind...") 
        AI:AddSkill(8893,2)
        AI:UseSkill(8893,2)
    end
    if nIndex == 3 then
        --??DOT  
        AI:Say("Rot in the darkness!") 
        AI:AddSkill(8894,3)
        AI:UseSkill(8894,3)
    end
    if nIndex == 4 then
        --?????? 
        AI:Say("Don't let your inner feelings confuse you! Hahahaha!") 
        AI:SummonMonster(51477,2)
    end
    if nIndex == 5 then
        --???? 
        AI:Say("All right... now you're beginning to irritate me!") 
        AI:AddSkill(8895,3)
        AI:UseSkill(8895,3)
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
                AI:Say("You will leave this world as quietly as you came into it! No one will even notice...")
                AI:AddSkill(8891,2)
                AI:UseSkill(8891,2)
                AI:SetTimer(0,45000,65535)
                AI:SetTimer(1,65000,65535)
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.8 then
                AI:Say("The gates of hell open just for you!")
                --???? 
                AI:AddSkill(8893,2)
                AI:UseSkill(8893,2)
                AI:SetTimer(2,35000,65535)
                AI:SetArray(1,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.5 then
                AI:Say("Let the sorrow overwhelm you.") 
                --???? 
                AI:SummonMonster(51477,2)
                AI:SetTimer(3,50000,65535)
                AI:SetTimer(4,70000,65535)
                AI:SetArray(1,3)
            end
        end
        if a == 3 then
            if HP < HPMAX * 0.15 then
                AI:Say("You will see... Efreet will tear the flesh from your bones.") 
                --???? 
                AI:AddSkill(8895,3)
                AI:UseSkill(8895,3)
                AI:SetTimer(5,600000,65535)
                AI:SetArray(1,4)
            end
        end
    end
end 
  