--???AI
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        AI:Say("Taste of fear!")
        --??,??150?????????? 
        AI:AddSkill(8752,1)
        AI:UseSkill(8752,1)
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)

t = AI:HaveAttackTarget()
    if t == false then
        AI:DelTimer(0)
        AI:SetArray(4,0)
    else                   
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
                    
        a = AI:GetArray(4)
        if a == 0 then
            if HP < HPMAX then
                AI:Say("I'm from the hell! Submit to me, listen to me, offer me your soul!")
                AI:SetTimer(0,20000,65535)
                AI:SetArray(4,1)    
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.8 then
                AI:Say("Destroy all creatures with all my anger!")
                --??? 
                AI:AddSkill(8802,1)
                AI:UseSkill(8802,1)
                AI:SetArray(4,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.4 then
                AI:Say("Breath the smell of death!")
                --????,??360?5??????????,???DOT 
                AI:AddSkill(8753,1)
                AI:UseSkill(8753,1)
                AI:SetArray(4,3)
            end
        end
        if a == 3 then
            if HP < HPMAX * 0.2 then
                AI:Say("Ghost in the pits of hell! In the name of Oni, I'm calling! Become my power and crush them to ashes!")
                --??,??????? 
                AI:AddSkill(8802,1)
                AI:UseSkill(8802,1)
                AI:SetArray(4,4)
           end
        end
    end
end