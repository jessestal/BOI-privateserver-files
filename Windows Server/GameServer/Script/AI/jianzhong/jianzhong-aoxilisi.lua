--????
    
function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                  
t = AI:HaveAttackTarget()
    if t == false then
        AI:SetArray(1,0)
    else
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
                    
        a = AI:GetArray(1)
        if a == 0 then
            if HP < HPMAX * 0.5 then
                AI:Say("The only thing you can do is to worship me.")
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
                --AI:SetTimer(0,60000,65535)
                AI:SetArray(1,1)
            end
        end
    end
end     