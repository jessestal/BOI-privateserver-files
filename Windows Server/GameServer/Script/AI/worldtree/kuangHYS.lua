function Event_OnDead(nAI)
				local AI = GetMonsterAI(nAI)
				
				PosX = AI:GetPosX()
        PosY = AI:GetPosY()
				AI:Say("Die in a fire!") 
        AI:SummonMonsterByPos(51377, PosX, PosY)
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
		
		a = AI:GetArray(1)
        if a == 0 then
                AI:Say("My flames are everlasting!")
                AI:AddSkill(8871,11)
                AI:UseSkill(8871,11)
                AI:SetArray(1,1)
        end
end	