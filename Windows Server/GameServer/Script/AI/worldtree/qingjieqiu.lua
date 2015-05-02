function Event_OnDead(nAI)
				local AI = GetMonsterAI(nAI)
				
				PosX = AI:GetPosX()
        PosY = AI:GetPosY()
				AI:Say("Serenity has been restored.") 
        AI:SummonMonsterByPos(51379, PosX, PosY)
        
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
		
end				