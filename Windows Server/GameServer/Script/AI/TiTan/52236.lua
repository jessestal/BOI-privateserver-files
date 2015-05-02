function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
		
		a = AI:GetArray(1)
      if a == 0 then
      	AI:SetTimer(2,1000,3)
       	AI:SetTimer(0,4000,1)
       	AI:SetTimer(1,5000,1)
       	AI:SetArray(1,1)
    	end
end

function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    
    if nIndex == 0 then
    		AI:AddSkill(2140,1)
       	AI:UseSkill(2140,1)
    end
    
    if nIndex == 1 then
    		AI:SelfMurder()
    end
    
    if nIndex == 2 then
    		AI:PlayEffect("skill\\Monster\\bingbao\\fire\\tx_bingbao_fire.ini")
    end
    
end