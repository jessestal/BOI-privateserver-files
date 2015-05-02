--??????
function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --???? 
        AI:ScreenText("Gluttony's remains make me sick, don't get too close.",1)
        AI:AddSkill(2008,1)
        AI:UseSkill(2008,1)
        AI:PlayEffect( "skill\\Monster\\boss\\haidaodaojishi\\fire\\tx_boss_haidaodaojishi_fire.ini" )
        AI:SetTimer(1,1600,1)
    end
    if nIndex == 1 then
        AI:Exit()
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
            AI:SetTimer(0,2000,1)
            AI:SetArray(1,1)
        end
    end
end

function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
end