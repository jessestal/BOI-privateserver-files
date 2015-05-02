function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
		
		a = AI:GetArray(1)
      if a == 0 then
       	AI:SetTimer(0,2000,5)
       	AI:SetTimer(1,11000,1)
       	AI:SetArray(1,1)
    	end
end

function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    
    if nIndex == 0 then
    		AI:AddSkill(2142,1)
       	AI:UseSkill(2142,1)
    end
    
    if nIndex == 1 then
    		AI:SelfMurder()
    end
    
end