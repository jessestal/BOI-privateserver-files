--ÇùÄ¸ 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
end

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
            if HP < HPMAX * 0.7 then
                AI:AddSkill(2041,1)
                AI:UseSkill(2041,1)
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.4 then
                AI:AddSkill(2041,1)
                AI:UseSkill(2041,1)
                AI:SetArray(1,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.1 then
                AI:AddSkill(2041,1)
                AI:UseSkill(2041,1)
                AI:SetArray(1,3)
            end
        end
    end
end

function Event_OnDead(nAI)
	local AI = GetMonsterAI(nAI)
end            