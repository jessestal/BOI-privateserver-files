function Event_OnDead(nAI)
				local AI = GetMonsterAI(nAI)
				
				PosX = AI:GetPosX()
        PosY = AI:GetPosY()
				AI:Say("Prepare to die! ") 
        AI:SummonMonsterByPos(51372, PosX, PosY)
end	

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
		
end			