--?? 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --???? 
        AI:Say("Your doomsday is just around the corner!") 
        AI:AddSkill(8777,1)
        AI:UseSkill(8777,1)
    end
    if nIndex == 1 then
        --DOT 
        AI:Say("All flesh must decay! You don't need it in hell!")
        AI:AddSkill(8832,1)
        AI:UseSkill(8832,1)
    end
    if nIndex == 2 then
        --?????? 
        AI:Say("Why resist me? Your behaviors confuse me.") 
        AI:AddSkill(8774,1) 
        AI:UseSkill(8774,1)
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
                AI:Say("Death is one of the most beautiful statues for its eternity.")
                --????
                AI:AddSkill(8832,1)
                AI:UseSkill(8832,1)
                AI:SetTimer(1,120000,65535) 
                AI:SetArray(1,1)
            end
        end

        if a == 1 then
            if HP < HPMAX * 0.7 then
                AI:Say("Fade in the darkness and feel the fear of death!") 
                AI:AddSkill(8777,1)
                AI:UseSkill(8777,1)
                AI:SetTimer(0,45000,65535)
                AI:SetTimer(2,150000,65535)
                AI:SetArray(1,2)
            end
        end

        if a == 2 then
            if HP < HPMAX * 0.3 then
                AI:Say("Don't miss the ugly world, mortal, your hypocrisy makes me sick! Let me end it!") 
                AI:AddSkill(8751,1)
                AI:UseSkill(8751,1)
                AI:SetArray(1,3)
            end
        end
    end
end

