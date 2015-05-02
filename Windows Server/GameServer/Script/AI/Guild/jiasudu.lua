--??? 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    
end
    
function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                  
end

function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
       AI:Say("A pot of oil broke over the wheels, speeding the caravan.")
       AI:SummonMonster(32187, 1 )
end        