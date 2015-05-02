function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                  
		t = AI:HaveAttackTarget()
    if t == false then
    		b = AI:GetArray(2)
    		if b == 0 then
    			AI:SetTimer(0,6000,65535)
    			AI:SetArray(2,1)
    		end
    else
    		Mapid = AI:GetMapID()
        HP = AI:GetHP()
        Var = AI:GetEctypeVarInteger(Mapid, 110)
        
        syn = AI:GetArray(9)
        if syn == 0 then
        	AI:AddSkill(2135,1)
          AI:UseSkill(2135,1)
          AI:SetArray(9,1)
        end
        
        b = AI:GetArray(2)
    		if b == 1 then
    			AI:DelTimer(0)
    			AI:SetArray(2,0)
    		end
    		
    		Hart = Var - HP
    		if Hart > 0 then
    			AI:SetEctypeVarInteger(Mapid, 110, HP)
    		end
    		if Hart < 0 then
    			blood = HP - Var
    			AI:LoseHPInstant(blood)
    		end
    		
    		die = AI:GetHP()
    		if die <= 1 then
    			AI:SelfMurder()
    		end
    		
    		HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
        
        a = AI:GetArray(1)
        if a == 0 then
        	if HP > HPMAX * 0.55 then
        		AI:SetTimer(1,20000,65535)
        		AI:SetArray(1,1)
        	end
        end
        
        mode = AI:GetEctypeVarShort(Mapid, 4)
        if mode == 1 then
        	c = AI:GetArray(3)
        	if c == 0 then
        		AI:Say("Ah! My eyes!")
        		AI:AddSkill(2134,2)
            AI:UseSkill(2134,2)
            AI:SetArray(3,1)
        	end
        end
        if mode == 2 then
        	d = AI:GetArray(4)
        	if d == 0 then
        		AI:SummonMonsterByPos(52243, 97.3, 169.3)
        		AI:AddSkill(2134,1)
            AI:UseSkill(2134,1)
            AI:SetArray(4,1)
        	end
        end
        if mode == 3 then
        	e = AI:GetArray(5)
        	if e == 0 then
        		AI:AddSkill(2134,1)
            AI:UseSkill(2134,1)
        		AI:SetArray(5,1)
        	end
        end
        
        f = AI:GetArray(6)
        if f == 0 then
        	if HP <= HPMAX * 0.55 then
        		AI:DelTimer(1)
        		AI:SetArray(6,1)
        	end
        end
        
        if HP <= HPMAX * 0.5 then
        	g = AI:GetArray(7)
        	if g == 0 then
        		AI:AddSkill(2134,2)
            AI:UseSkill(2134,2)
    				AI:SetTimer(2,2000,10)
    				AI:SetArray(7,1)
        	end
        end
        
    end
end

function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    
    if nIndex == 0 then
    		HPR = AI:GetHPMax()
    		MPR = AI:GetMPMax()
        AI:DelTimer(0)
        AI:DelTimer(1)
        AI:DelTimer(2)
        AI:DelTimer(3)
        AI:SetArray(1,0)
        AI:SetArray(2,0)
        AI:SetArray(3,0)
        AI:SetArray(4,0)
        AI:SetArray(5,0)
        AI:SetArray(6,0)
        AI:SetArray(7,0)
        AI:SetArray(8,0)
        AI:SetArray(9,0)
        AI:RestoreHPInstant(HPR)
        AI:RestoreMPInstant(MPR)
    end
    
    if nIndex == 1 then
    		Mapid = AI:GetMapID()
    		mode = AI:GetEctypeVarShort(Mapid, 4)
    		if mode == 0 then
    			AI:SetArray(3,0)
    		end
    		if mode == 1 then
    			AI:SetArray(4,0)
    		end
    		if mode == 2 then
    			AI:SetArray(5,0)
    		end
    		if mode == 3 then
    			AI:SetArray(3,0)
    		end
    end
    
    if nIndex == 2 then
    		AI:Say("Feel my pain!")
        AI:AddSkill(2137,1)
        AI:UseSkill(2137,1)
        h = AI:GetArray(8)
        if h == 0 then
        	AI:SetTimer(3,60000,1)
        	AI:SetArray(8,1)
        end
        
    end
    
    if nIndex == 3 then
    		AI:Say("Can you feel the pain leaving your eyes? ")
        AI:SetTimer(2,2000,10)
        AI:SetArray(8,0)
    end
    
end

function Event_OnDead(nAI)
				local AI = GetMonsterAI(nAI)
				
				Mapid = AI:GetMapID()
				AI:SetEctypeVarInteger(Mapid, 110, 0)
				
end