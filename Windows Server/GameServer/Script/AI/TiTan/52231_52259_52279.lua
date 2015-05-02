function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                  
		t = AI:HaveAttackTarget()
    if t == false then
    		b = AI:GetArray(2)
    		if b == 0 then
    			AI:SetTimer(2,6000,65535)
    			AI:SetArray(2,1)
    		end
    else
        b = AI:GetArray(2)
    		if b == 1 then
    			AI:DelTimer(2)
    			AI:SetArray(2,0)
    		end
    		
        a = AI:GetArray(1)
        if a == 0 then
        	ectype = AI:GetMapID()
    			var = AI:GetEctypeVarShort(ectype, 0)
    			if var == 0 then
    				AI:AddSkill(2139,1)
        		AI:UseSkill(2139,1)
    			end
    			if var == 1 then
    				AI:AddSkill(2139,2)
        		AI:UseSkill(2139,2)
    			end
    			if var == 2 then
    				AI:AddSkill(2139,3)
        		AI:UseSkill(2139,3)
    			end
    			AI:SetTimer(1,30000,1)
    			AI:SetArray(1,1)
        end
        
    end
    
    Mapid = AI:GetMapID()
    Var = AI:GetEctypeVarInteger(Mapid, 110)
    if Var <= 1 then
    	AI:SelfMurder()
    end
    
end

function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
       
    if nIndex == 0 then
        AI:AddSkill(2138,1)
        AI:UseSkill(2138,1)
        h = AI:GetArray(3)
        if h == 0 then
        	AI:SetTimer(1,60000,1)
        	AI:SetArray(3,1)
        end
        
    end
    
    if nIndex == 1 then
        AI:SetTimer(0,2000,10)
        AI:SetArray(3,0)
    end
    
    if nIndex == 2 then
    		HPR = AI:GetHPMax()
    		MPR = AI:GetMPMax()
        AI:DelTimer(0)
        AI:DelTimer(1)
        AI:DelTimer(2)
        AI:SetArray(1,0)
        AI:SetArray(2,0)
        AI:SetArray(3,0)
        AI:RestoreHPInstant(HPR)
        AI:RestoreMPInstant(MPR)
    end
    
end

function Event_OnDead(nAI)
				local AI = GetMonsterAI(nAI)
				
end