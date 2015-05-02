function Event_OnTimer(nAI, nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        AI:AddSkill(9802,1)
        AI:UseSkill(9802,1) 
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
          AI:SetTimer( 0, 3000, 65535 )
          AI:SetArray(1,1)
       end
    end
end
  