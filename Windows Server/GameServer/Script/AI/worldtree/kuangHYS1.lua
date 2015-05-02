function Event_ReadSeekPos(nAI)
				local AI = GetMonsterAI(nAI)
				
        AI:AddSeekPos( 250, 162, 170 )
end

function Event_OnDead(nAI)
				local AI = GetMonsterAI(nAI)
				
				PosX = AI:GetPosX()
        PosY = AI:GetPosY()
				AI:Say("Die in a fire!") 
        AI:SummonMonsterByPos(51377, PosX, PosY)
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
		
end				