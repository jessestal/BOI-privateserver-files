function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
		  
    a = AI:GetArray(1)
    if a == 0 then
    	AI:PlayAction("attack1",500,0)
      AI:SetTimer(1,250,1)
      AI:SetTimer(0,1250,1)
      AI:SetArray(1,1)
    end
   
end

function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    
    if nIndex == 0 then
    		AI:SelfMurder()
    end
    
    if nIndex == 1 then
    		AI:AddSkill(2158,1)
      	AI:UseSkill(2158,1)
    end
    
end