function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                  
		t = AI:HaveAttackTarget()
    if t == false then
    		b = AI:GetArray(2)
    		if b == 0 then
    			AI:SetTimer(3,6000,65535)
    			AI:SetArray(2,1)
    		end
    else
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
        PosX = AI:GetPosX()
        PosY = AI:GetPosY()
        Rnd = AI:GetRand(3)
        
        b = AI:GetArray(2)
    		if b == 1 then
    			AI:DelTimer(3)
    			AI:SetArray(2,0)
    		end

        a = AI:GetArray(1)
        if a == 0 then
            if HP < HPMAX * 0.8 then
                AI:Say("The flames are so beautiful... but I must resist...!")
                AI:AddSkill(8871,9)
                AI:UseSkill(8871,9)
                if Rnd == 0 then
                	AI:SummonMonsterByPos(51404, PosX+3, PosY+3)
                end
                if Rnd == 1 then
                	AI:SummonMonsterByPos(51404, PosX+3, PosY-3)
                end
                if Rnd == 2 then
                	AI:SummonMonsterByPos(51404, PosX-3, PosY+3)
                end
                if Rnd == 3 then
                	AI:SummonMonsterByPos(51404, PosX-3, PosY-3)
                end
                AI:SetTimer(0,20000,2)
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.4 then
                AI:Say("After a brief moment of peace, the Black Death approaches...")
                AI:AddSkill(8871,10)
                AI:UseSkill(8871,10)
                AI:SummonMonsterByPos(51388, PosX+4, PosY+4)
                AI:SummonMonsterByPos(51389, PosX+4, PosY-4)
                AI:SummonMonsterByPos(51390, PosX-4, PosY+4)
                AI:SummonMonsterByPos(51391, PosX-4, PosY-4)
                AI:SetTimer(1,29000,2)
                AI:SetTimer(2,30000,1)
                AI:DelTimer(0)
                AI:SetArray(1,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.2 then
                AI:Say("My sons! Aid your king!") 
                AI:DelTimer(1)
                AI:DelTimer(2)
                AI:SummonMonster(51410, 2)
                AI:SetArray(1,3)
            end
        end
    end
end

function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    
    if nIndex == 0 then
    		PosX = AI:GetPosX()
    		PosY = AI:GetPosY()
    		Rnd = AI:GetRand(3)
    		AI:AddSkill(8871,9)
        AI:UseSkill(8871,9)
        if Rnd == 0 then
           AI:SummonMonsterByPos(51404, PosX+3, PosY+3)
        end
        if Rnd == 1 then
           AI:SummonMonsterByPos(51404, PosX+3, PosY-3)
        end
        if Rnd == 2 then
           AI:SummonMonsterByPos(51404, PosX-3, PosY+3)
        end
        if Rnd == 3 then
           AI:SummonMonsterByPos(51404, PosX-3, PosY-3)
        end
    end
    if nIndex == 1 then
        --???? 
        AI:Say("Black Death!")
        AI:AddSkill(8861,23)
        AI:UseSkill(8861,23)
    end
    if nIndex == 2 then
        AI:Say("After a brief moment of peace, the Black Death approaches...")
        AI:AddSkill(8871,10)
        AI:UseSkill(8871,10)
        AI:SummonMonsterByPos(51388, PosX+4, PosY+4)
        AI:SummonMonsterByPos(51389, PosX+4, PosY-4)
        AI:SummonMonsterByPos(51390, PosX-4, PosY+4)
        AI:SummonMonsterByPos(51391, PosX-4, PosY-4)
    end
    if nIndex == 3 then
    		HPR = AI:GetHPMax()
    		MPR = AI:GetMPMax()
        AI:DelTimer(0)
        AI:DelTimer(1)
        AI:DelTimer(2)
        AI:SetArray(1,0)
        AI:RestoreHPInstant(HPR)
        AI:RestoreMPInstant(MPR)
    end
end

 
  