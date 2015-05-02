--??? 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --?? 
        AI:Say("As the pace of life is so fast, keep your step, mortal!")
        AI:AddSkill(8793,1)
        AI:UseSkill(8793,1)
    end
    if nIndex == 1 then
        --???? 
        AI:Say("In this dark and wet environment, reptiles may suit the atmosphere here!")
        AI:AddSkill(8794,1)
        AI:UseSkill(8794,1)
    end
    if nIndex == 2 then
        --???? 
        AI:Say("As the worship of mortals, the totem can grant me infinite mighty!")
        AI:SummonMonster(30164,1)
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
        HPADD = AI:GetArray(3)
        
        if HPADD - HP > 100000 then
            AI:Say("Everlasting perdition is the trial of destiny!")
            AI:AddSkill(8796,1)
            AI:UseSkill(8796,1)
            AI:SetArray(3,HP) 
        end
        
        a = AI:GetArray(1)
        if a == 0 then
            if HP < HPMAX then
                --????
                AI:Say("I dominate all of life and death. Respect me or die. It's up to you!") 
                AI:SetTimer(0,90000,65535)
                AI:SetTimer(1,150000,65535)
                HPADD = HPMAX
                AI:SetArray(3,HPADD) 
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.5 then
                AI:Say("I'm Quetzalcoatl, the one who is respected by all human beings! To show their worship, they built numerous totems from which I can obtain mystical power!") 
                AI:SetTimer(2,120000,65535)
                AI:SummonMonster(30164,1)
                AI:SetArray(1,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.01 then
                AI:Say("I fail!") 
                AI:SetArray(1,3)
            end
        end
    end
end
