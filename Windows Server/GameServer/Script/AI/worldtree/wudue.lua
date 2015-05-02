function Event_OnTimer(nAI, nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        AI:Say("Stand and fight, fellow insects! I won't let you die!")
        AI:AddSkill(8716,1)
        AI:UseSkill(8716,1) 
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
          AI:SetTimer( 0, 20000, 65535 )
          AI:SetArray(1,1)
       end
    end
end 
  