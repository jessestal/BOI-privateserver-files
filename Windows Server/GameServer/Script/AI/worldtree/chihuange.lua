function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
    
			a = AI:GetArray(1)
      if a == 0 then
       	AI:SetTimer(0,1000,1)
       	AI:SetArray(1,1)
    	end	   	
end

function Event_ReadSeekPos(nAI)
				local AI = GetMonsterAI(nAI)
				AI:AddSeekPos( 250, 162, 170 )       	
end

function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    
    if nIndex == 0 then
    		AI:Say("Yggdrasil, today is your doomsday!") 
    end
end