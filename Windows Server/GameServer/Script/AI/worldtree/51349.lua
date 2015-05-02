function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
		
		a = AI:GetArray(1)
      if a == 0 then
       	AI:AddSkill(8713,1)
       	AI:UseSkill(8713,1)
       	AI:Say("Warriors, come to me! Nidhogg has been driven insane. Nobody knows what he will do next! ")
       	AI:SetTimer(0,3000,1)
       	AI:SetArray(1,1)
    	end
end

function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    
    if nIndex == 0 then
    		AI:SelfMurder()
    end
end