function Event_ReadSeekPos(nAI)
				local AI = GetMonsterAI(nAI)
				
        AI:AddSeekPos( 250, 162, 170 )
end

function Event_OnDead(nAI)
				local AI = GetMonsterAI(nAI)
				
				PosX = AI:GetPosX()
        PosY = AI:GetPosY()
				AI:Say("Nobody can hurt Nidhogg!") 
        AI:SummonMonsterByPos(51378, PosX, PosY)
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
		
end				