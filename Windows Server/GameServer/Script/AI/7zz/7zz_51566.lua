--Ã∞¿∑µƒ±¶œ‰
function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --±¶œ‰AOE
        AI:AddSkill(2009,1)
        AI:UseSkill(2009,1)
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
    
    t = AI:HaveAttackTarget()
    if t == false then
        AI:DelTimer(0)
        AI:SetArray(1,0)
    else
    	   
        a = AI:GetArray(1)
        if a == 0 then
            AI:SetTimer(0,3000,65535)
            AI:SetArray(1,1)
        end
    end
end

function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
    
     map = AI:GetMapID()
     AI:SetEctypeVarShort( map, 41, 1 )
end