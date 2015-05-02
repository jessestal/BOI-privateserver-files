function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
		
			AI:AddSkill(2145,1)
      AI:UseSkill(2145,1)
      
end

function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
       
end