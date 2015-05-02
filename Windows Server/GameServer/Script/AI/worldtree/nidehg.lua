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
        
        b = AI:GetArray(2)
    		if b == 1 then
    			AI:DelTimer(3)
    			AI:SetArray(2,0)
    		end

        a = AI:GetArray(1)
        if a == 0 then
            if HP < HPMAX * 0.8 then
                AI:Say("Yggdrasil, this song will be your last!")
                AI:AddSkill(8861,37)
                AI:UseSkill(8861,37)
                AI:SummonMonster(51409, 10)
                AI:SetTimer(0,6000,9)
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.5 then
                AI:Say("Meet your fate, Yggdrasil! Meet your death!")
                AI:SummonMonster(51402, 10)
                AI:AddSkill(8712,1)
                AI:UseSkill(8712,1)
                AI:SetTimer(1,6000,1)
                AI:SetTimer(2,1000,1)
                AI:DelTimer(0)
                AI:SetArray(1,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.1 then
                AI:Say("Your spilled blood will show that there is beauty in death!") 
                AI:AddSkill(8710,1)
                AI:UseSkill(8710,1)
                AI:AddSkill(8737,2)
                AI:UseSkill(8737,2)
                AI:DelTimer(1)
                AI:DelTimer(2)
                AI:SetArray(1,3)
            end
        end
    end
end

function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    
    if nIndex == 0 then
    		AI:AddSkill(8861,37)
        AI:UseSkill(8861,37)
    end
    if nIndex == 1 then
        --???? 
        AI:Say("Die alongside your precious World Tree!")
        AI:AddSkill(8715,1)
        AI:UseSkill(8715,1)
    end
    if nIndex == 2 then
    		AI:SummonMonsterByPos(51349, 162, 170)
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

 
  