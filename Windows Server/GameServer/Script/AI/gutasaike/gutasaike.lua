--???????
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --???? 
        AI:Say("Cover the world with white. Original Frost!") 
        AI:AddSkill(8770,1)
        AI:UseSkill(8770,1)
    end
    if nIndex == 1 then
        --????
        AI:Say("Frost Force!") 
        AI:AddSkill(8771,1)
        AI:UseSkill(8771,1)
    end
    if nIndex == 2 then
        --??
        AI:Say("Demons in the dark fool this poor mortal!")
        AI:SummonMonster(10837,2)
    end
    if nIndex ==3 then
        --???? 
        rand = AI:GetRand(1)
        if rand == 0 then 
            AI:Say("Now, this puts a smile on my face!")
            AI:AddSkill(8773,1)
            AI:UseSkill(8773,1) 
        end
        if rand == 1 then
            AI:Say("All right... now I'm angry!") 
            AI:AddSkill(8774,1)
            AI:UseSkill(8774,1)
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
        AI:SetArray(1,0)
    else
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
                    
        a = AI:GetArray(1)
        if a == 0 then
            if HP < HPMAX then
                AI:Say("The elves and I have an eternal agreement. With their powerful magic, not even Set can surpass me. Your doomsday is nigh!")
                --???? 
                AI:SetTimer(0,60000,65535)
                AI:SetArray(3,HP)
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.7 then
                AI:Say("Unyielding snow and bitter frost, gather before me! Feel my sorrow, destroy my enemies! Frost Force!")
                AI:AddSkill(8771,1)
                AI:UseSkill(8771,1)
                AI:SetTimer(1,300000,65535)
                AI:SetTimer(2,45000,65535)
                AI:SetArray(1,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.4 then
                AI:SetTimer(3,60000,65535)
                HPADD = AI:GetArray(3)
                if HPADD - HP > 100000 then
                    AI:Say("Let the truth dispel all pitiful delusions of power, and let everything return to dust!")
                    AI:AddSkill(8775,1)
                    AI:UseSkill(8775,1)
                end
                AI:SetArray(1,3)
            end
        end
    end
end 
  