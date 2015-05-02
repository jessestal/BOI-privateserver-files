function Event_OnDead(nAI)
				local AI = GetMonsterAI(nAI)
				
				PosX = AI:GetPosX()
        PosY = AI:GetPosY()
				AI:Say("One little mistake will spell your death!") 
        AI:SummonMonsterByPos(51376, PosX, PosY)
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
		
end