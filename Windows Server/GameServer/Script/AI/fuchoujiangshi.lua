    --??BOSS AI 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        AI:Say("Prevent the Dragon Emperor from fulfilling his ambition! Release us from our curse!")
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
            random = math.random( 20000 , 60000 )
            AI:SetTimer(0, random , 65535)
            AI:SetArray(1,1)
        end
    end
end
