--????
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --???? 
        AI:Say("Shadow Force!") 
        AI:AddSkill(8751,1)
        AI:UseSkill(8751,1)
    end
    if nIndex == 1 then
        --????
        AI:Say("Let my song sink into the endless dark!")
        AI:AddSkill(8754,1)
        AI:UseSkill(8754,1)
    end
    if nIndex == 2 then
        --???? 
        AI:Say("Undead Rage!") 
        AI:AddSkill(8756,1) 
        AI:UseSkill(8756,1)
    end
    if nIndex == 3 then
        --??
        AI:Say("Trembling as the night falls!") 
        AI:AddSkill(8752,1) 
        AI:UseSkill(8752,1)
    end
    if nIndex == 4 then
        --????
        AI:Say("Fear my wrath! Feel it!")
        AI:SummonMonster(30039,3)
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
        AI:SetArray(1,0)
    else

        HP = AI:GetHP()
        HPMAX = AI:GetHPMax() 
        HPADD = AI:GetArray(3)
                               
        a = AI:GetArray(1)
        if a == 0 then
            if HP < HPMAX then
                AI:Say("The Great Pharaoh, Osiris, abandoned me in this cold jail. He abandoned me! Can't you feel my loneliness? ")
                --????
                AI:SetArray(3,HP)
                HPADD = AI:GetArray(3)
                AI:SetTimer(3,45000,65535) 
                AI:SetArray(1,1)
            end
        end

        if HPADD - HP > 80000 then
            AI:Say("As your flesh decays, you will become my slave!")
            --AI:AddSkill(8863,1)
            --AI:UseSkill(8863,1)
            AI:SetArray(3,HP)
            --??8???????AI 
        end

        if a == 1 then
            if HP < HPMAX * 0.7 then
                AI:Say("Fade in the darkness and feel the fear of death!") 
                AI:AddSkill(8751,1)
                AI:UseSkill(8751,1)
                AI:SetTimer(0,300000,65535)
                AI:SetTimer(4,30000,65535)
                AI:SetArray(1,2)
            end
        end

        if a == 2 then
            if HP < HPMAX * 0.3 then
                AI:Say("Sinking, sinking. Osiris can not resist the temptation, let alone you!") 
                AI:AddSkill(8756,1)
                AI:UseSkill(8756,1)
                AI:SetTimer(1,120000,65535)
                AI:SetTimer(2,60000,65535)
                AI:SetArray(1,3)
            end
        end
    end
end

