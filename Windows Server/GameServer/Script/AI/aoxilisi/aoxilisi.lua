--???? 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --????????
        AI:DelTimer(1)
        AI:DelTimer(2)
        AI:DelTimer(3)
        AI:DelTimer(4)
        AI:DelTimer(5)
        AI:DelTimer(6)
        AI:DelTimer(7)
        AI:DelTimer(8)
 
        rand = AI:GetRand(3)
        if rand == 0 then
            AI:Say("As fire gathers in my hands, everything will ruin at my will!")
            AI:AddSkill(8767,1)
            AI:UseSkill(8767,1)
            AI:SetTimer(1,40000,65535)
            AI:SetTimer(2,30000,65535)
            AI:Say("My servent, Arbyss, I summon you from hell. Fight for me!")
            AI:SummonMonster(10849,1)
        end
        if rand == 1 then
            AI:Say("Ice, appoints with me. Pierce their bodies, erode their impulses!")
            AI:AddSkill(8771,1)
            AI:UseSkill(8771,1)
            AI:SetTimer(3,40000,65535)
            AI:SetTimer(4,30000,65535)
            AI:Say("My advisers, Britacesk, I summon you from hell. Fight for me!")
            AI:SummonMonster(10850,1)
        end
        if rand == 2 then
            AI:Say("Light is just my accessory. I said, let there was light, and there was light!")
            AI:AddSkill(8757,1)
            AI:UseSkill(8757,1)
            AI:SetTimer(5,40000,65535)
            AI:SetTimer(6,30000,65535)
            AI:Say("My warrior, Molmes, I summon you from hell. Fight for me!")
            AI:SummonMonster(10848,1)
        end
        if rand == 3 then
            AI:Say("Dark, the spirit under my feet, releases your anger, kills them all!")
            AI:AddSkill(8751,1)
            AI:UseSkill(8751,1)
            AI:SetTimer(7,40000,65535)
            AI:SetTimer(8,30000,65535)
            AI:Say("Forget your sorrow, my queen. I summon you from hell. Fight for me!")
            AI:SummonMonster(10847,1)
        end
    end
    if nIndex == 1 then
        --????
        AI:Say("Fire Storm!")
        AI:AddSkill(8779,1)
        AI:UseSkill(8779,1)
    end
    if nIndex == 2 then
        --?? 
        AI:Say("Fire Soul!")
        AI:AddSkill(8782,1)
        AI:UseSkill(8782,1)
    end
    if nIndex == 3 then
        --????
        AI:Say("Frost Storm!")
        AI:AddSkill(8776,1)
        AI:UseSkill(8776,1)
    end
    if nIndex == 4 then
        --??
        AI:Say("Ice Soul!")
        AI:AddSkill(8783,1)
        AI:UseSkill(8783,1)
    end
    if nIndex == 5 then
        --????
        AI:Say("Light Storm!")
        AI:AddSkill(8778,1)
        AI:UseSkill(8778,1)
    end
    if nIndex == 6 then
        --??
        AI:Say("Light Soul!")
        AI:AddSkill(8781,1)
        AI:UseSkill(8781,1)
    end
    if nIndex == 7 then
        --????
        AI:Say("Shadowshroud!")
        AI:AddSkill(8777,1)
        AI:UseSkill(8777,1)
    end
    if nIndex == 8 then
        --??
        AI:Say("Shadow Soul!")
        AI:AddSkill(8780,1)
        AI:UseSkill(8780,1)
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
        AI:DelTimer(6)
        AI:DelTimer(7)
        AI:DelTimer(8)
        AI:SetArray(1,0)
    else
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
                    
        a = AI:GetArray(1)
        if a == 0 then
            if HP < HPMAX then
                AI:Say("I'm god of sola, the sovereign of Egypt. You non-entities surrender to me!")
                --????
                r = AI:GetRand(3)
                if r == 0 then
                    AI:Say("Fire Storm!")
                    AI:AddSkill(8779,1)
                    AI:UseSkill(8779,1)
                end
                if r == 1 then
                    AI:Say("Frost Storm!")
                    AI:AddSkill(8776,1)
                    AI:UseSkill(8776,1)
                end
                if r == 2 then
                    AI:Say("Light Storm!")
                    AI:AddSkill(8778,1)
                    AI:UseSkill(8778,1)
                end
                if r == 3 then
                    AI:Say("Shadowshroud!")
                    AI:AddSkill(8777,1)
                    AI:UseSkill(8777,1)
                end
                AI:SetTimer(0,60000,65535)
                AI:SetArray(1,1)
            end
        end
    end
end     