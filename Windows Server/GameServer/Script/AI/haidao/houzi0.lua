--幽灵猴子杰克 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --自爆
        AI:AddSkill(8859,4)
        AI:UseSkill(8859,4)
    end
    if nIndex == 1 then
        --自杀
        AI:SelfMurder()
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
    t = AI:HaveAttackTarget()
    if t == false then
        AI:DelTimer(0)
        AI:DelTimer(1)
        AI:SetArray(1,0)
    else
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
        a = AI:GetArray(1)
        if a == 0 then
                --进入战斗
                AI:SetTimer(0,19000,1)
                AI:SetArray(1,1)
        end
    end
end
