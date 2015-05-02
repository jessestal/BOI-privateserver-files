--阵营战场怪物AI 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --AOE
        AI:AddSkill(9502,12)
        AI:UseSkill(9502,12)
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
    t = AI:HaveAttackTarget()
    if t == false then
        AI:DelTimer(0)
        AI:SetArray(1,0)
    else
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
        a = AI:GetArray(1)
        if a == 0 then
            if HP < HPMAX then
                --进入战斗
                AI:AddSkill(9502,12)
        				AI:UseSkill(9502,12)
                AI:SetTimer(0,20000,65535)
                AI:SetArray(1,1)
            end
        end
    end
end
