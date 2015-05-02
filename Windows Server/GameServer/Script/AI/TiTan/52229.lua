function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
    
    target = AI:HaveAttackTarget()
    if target == true then
    	base = AI:GetArray(1)
    	if base == 0 then
    		ectype = AI:GetMapID()
    		var = AI:GetEctypeVarShort(ectype, 0)
    		if var == 0 then
    			AI:SummonMonsterByPos(52226, 85.2, 169.3)
    			AI:SummonMonsterByPos(52227, 97.3, 169.3)
    			AI:SummonMonsterByPos(52228, 91.3, 181)
    		end
    		if var == 1 then
    			AI:SummonMonsterByPos(52256, 85.2, 169.3)
    			AI:SummonMonsterByPos(52257, 97.3, 169.3)
    			AI:SummonMonsterByPos(52258, 91.3, 181)
    		end
    		if var == 2 then
    			AI:SummonMonsterByPos(52276, 85.2, 169.3)
    			AI:SummonMonsterByPos(52277, 97.3, 169.3)
    			AI:SummonMonsterByPos(52278, 91.3, 181)
    		end
    		AI:SetArray(1,1)
    		AI:Exit()
    	end
    end
		
end