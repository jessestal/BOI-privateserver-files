--??? 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --???? 
        AI:Say("Go to hell.") 
        AI:GetRandTarget()
        AI:AddSkill(2051,1)
        AI:UseSkill(2051,1)
    end
    if nIndex == 1 then
        --??AOE 
        AI:Say("Taste the feeling of hell.")
        AI:AddSkill(2052,1)
        AI:UseSkill(2052,1)
    end
    if nIndex == 2 then
        --???????? 
        AI:Say("I summon my sadness, tear you into pieces.") 
        AI:SummonMonster(30061,2)
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
                AI:Say("My endless and dark way to become god.")
                --???? 
                AI:SetTimer(0,20000,65535)
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.8 then
                AI:SetTimer(1,40000,65535) 
                AI:Say("I am a real god, you can't stop me.")
                AI:AddSkill(2052,1) 
                AI:UseSkill(2052,1)
                AI:SetArray(1,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.5 then
                AI:Say("I am the ruler of the universe, of everything. Since the gods abandoned me, I will replace them!")
                AI:SetTimer(2,60000,65535)
                AI:AddSkill(2053,1) 
                AI:UseSkill(2053,1)
                AI:SetArray(1,3)
            end
        end
        if a == 3 then
            if HP < HPMAX * 0.2 then
                AI:Say("You creatures are stupid, my way is right. You will understand someday.")
                AI:AddSkill(2053,1) 
                AI:UseSkill(2053,1)
                AI:SetArray(1,4)
            end
        end
    end
end

                