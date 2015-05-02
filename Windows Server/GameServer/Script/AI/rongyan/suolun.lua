--????? 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --???? 
        AI:Say("Foolish mortals! You underestimate me!") 
        AI:AddSkill(8880,1)
        AI:UseSkill(8880,1)
    end
    if nIndex == 1 then
        --??? 
        AI:Say("Ha! You and your faith. Go to hell!")
        AI:AddSkill(8881,1)
        AI:UseSkill(8881,1)
    end
    if nIndex == 2 then
        --???? 
        AI:Say("I've had enough of your nonsense!") 
        AI:AddSkill(8882,1)
        AI:UseSkill(8882,1)
    end
    if nIndex == 3 then
        --??????  
        AI:Say("The Engraved Fingerband grants me great power! I barely need a dash of it to destroy you.") 
        AI:SummonMonster(51177,1)
    end
    if nIndex == 4 then
        --??????? 
        AI:Say("Orcs! Protect your master!") 
        AI:SummonMonster(51176,2)
    end
    if nIndex == 5 then
        --???? 
        AI:Say("I won't let you have my Engraved Fingerband!") 
        AI:AddSkill(8885,1)
        AI:UseSkill(8885,1)
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
                AI:Say("And yet you still dare challenge me! Do you not know my power?!")
                AI:SetTimer(0,55000,65535)
                AI:SetTimer(1,30000,65535)
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.9 then
                AI:Say("You cannot hope to defeat me! I could conquer this pathetic world!")
                --????ID 
                AI:AddSkill(8837,1)
                AI:UseSkill(8837,1)
                AI:SetTimer(2,38000,65535)
                AI:SetArray(1,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.6 then
                AI:Say("You cannot handle the power of the Engraved Fingerband!") 
                --?????? 
                AI:SummonMonster(51177,1)
                AI:SetTimer(3,65000,65535)
                AI:SetArray(1,3)
            end
        end
        if a == 3 then
            if HP < HPMAX * 0.3 then
                AI:Say("I will kill you for trying to stop the summoning ritual!") 
                --????? 
                AI:SummonMonster(51176,2)
                AI:SetTimer(4,35000,65535)
                AI:SetArray(1,4)
            end
        end
        if a == 4 then
            if HP < HPMAX * 0.1 then
                AI:Say("My power never fails!  Never!!") 
                AI:DelTimer(3)
                AI:DelTimer(4)
                --????ID
                AI:AddSkill(8885,1)
                AI:UseSkill(8885,1) 
                AI:SetTimer(5,600000,65535)
                AI:SetArray(1,5)
            end
        end   
    end
end 
  