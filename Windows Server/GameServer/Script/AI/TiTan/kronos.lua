function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
    		
    Mapid = AI:GetMapID()
    born = AI:GetEctypeVarShort(Mapid, 6)
    if born == 2 then
    	c = AI:GetArray(3)
    	if c == 0 then
    		AI:ScreenText("My arms! How dare you! ",2)
    		AI:ChangeFaction(1)
    		AI:SetArray(3,1)
    	end
    end
    
    frist = AI:GetEctypeVarShort(Mapid, 7)
    if frist == 0 then
    	a = AI:GetArray(1)
    	if a == 0 then
    		AI:ScreenText("You dare kill my servants? Die!",2)
    		AI:PlayEffect("skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini")
    		AI:SetEctypeVarShort(Mapid, 7, 1)
    		AI:SetArray(1,1)
    	end
    end	
    	
		t = AI:HaveAttackTarget()
    if t == false then
    		b = AI:GetArray(2)
    		if b == 0 then
    			AI:SetTimer(0,6000,65535)
    			AI:SetArray(2,1)
    		end
    else
    		b = AI:GetArray(2)
    		if b == 1 then
    			AI:DelTimer(0)
    			AI:SetArray(2,0)
    		end
    		
    		d = AI:GetArray(4)
    		if d == 0 then
    			AI:SetTimer(1,3000,1)
    			AI:SetArray(4,1)
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
        AI:DelTimer(4)
        AI:SetArray(1,0)
        AI:SetArray(2,0)
        AI:SetArray(3,0)
        AI:SetArray(4,0)
        AI:SetArray(5,0)
        AI:SetArray(6,0)
        AI:SetArray(7,0)
        AI:SetArray(8,0)
        AI:RestoreHPInstant(HPR)
        AI:RestoreMPInstant(MPR)
    end
    
    if nIndex == 1 then
    		e = AI:GetArray(5)
    		if e == 0 then
    			Rad = AI:GetRand(2)
    			if Rad == 0 then
    				AI:SetTimer(2,6000,1)
    				AI:SetArray(6,0)
    			end
    			if Rad == 1 then
    				AI:SetTimer(3,6000,1)
    				AI:SetArray(7,0)
    			end
    			if Rad == 2 then
    				AI:SetTimer(4,6000,1)
    				AI:SetArray(8,0)
    			end
    			AI:SetArray(5,1)
    		end
    end
    
    if nIndex == 2 then
    		f = AI:GetArray(6)
    		if f == 0 then
    			AI:SetTimer(5,2000,3)
		    	AI:SetArray(5,0)
		    	AI:SetTimer(1,1000,1)
		    	AI:SetArray(6,1)
    		end
    end
    
    if nIndex == 3 then
    		g = AI:GetArray(7)
    		if g == 0 then
    			AI:SetTimer(6,1000,1)
    			AI:SetTimer(5,2000,2)
		    	AI:SetArray(5,0)
		    	AI:SetTimer(1,1000,1)
		    	AI:SetArray(7,1)
    		end
    end
    
    if nIndex == 4 then
    		h = AI:GetArray(8)
    		if h == 0 then
    			ectype = AI:GetMapID()
    			var = AI:GetEctypeVarShort(ectype, 0)
    			if var == 0 then
    				mts1 = AI:SummonMonsterByPos(52240, 238.1, 86)
    				AI:AddSkill(2146,1)
    				AI:UseSkillByID(mts1,2146,1)
    				mts2 = AI:SummonMonsterByPos(52241, 250.8, 86)
    				AI:AddSkill(2150,1)
    				AI:UseSkillByID(mts2,2150,1)
    				AI:PlayAction("attack01",500,0)
    			end
    			if var == 1 then
    				mts1 = AI:SummonMonsterByPos(52240, 238.1, 86)
    				AI:AddSkill(2146,1)
    				AI:UseSkillByID(mts1,2146,1)
    				mts2 = AI:SummonMonsterByPos(52241, 250.8, 86)
    				AI:AddSkill(2150,1)
    				AI:UseSkillByID(mts2,2150,1)
    				mts3 = AI:SummonMonsterByPos(52242, 244.4, 94.6)
    				AI:AddSkill(2151,1)
    				AI:UseSkillByID(mts3,2151,1)
    				AI:PlayAction("attack01",500,0)
    			end
    			if var == 2 then
    				mts1 = AI:SummonMonsterByPos(52240, 238.1, 86)
    				AI:AddSkill(2146,1)
    				AI:UseSkillByID(mts1,2146,1)
    				mts2 = AI:SummonMonsterByPos(52241, 250.8, 86)
    				AI:AddSkill(2150,1)
    				AI:UseSkillByID(mts2,2150,1)
    				mts3 = AI:SummonMonsterByPos(52242, 244.4, 94.6)
    				AI:AddSkill(2151,1)
    				AI:UseSkillByID(mts3,2151,1)
    				AI:PlayAction("attack01",500,0)
    			end
    			AI:SetArray(5,0)
		    	AI:SetTimer(1,1000,1)
		    	AI:SetArray(8,1)
    		end
    end
    
    if nIndex == 5 then
    		AI:AddSkill(2143,1)
		    AI:UseSkill(2143,1)
		    AI:PlayAction("attack02",500,0)
    end
    
    if nIndex == 6 then
    		AI:AddSkill(2144,1)
        AI:UseSkill(2144,1)
        AI:PlayAction("attack02",500,0)
    end
    
end

function Event_OnDead(nAI)
				local AI = GetMonsterAI(nAI)
				local Mapid = AI:GetMapID()
				
			AI:ScreenText("No! My revenge is not yet complete!",2)
			AI:AddNPC(735)
			
			mode = AI:GetEctypeVarShort(Mapid, 6)
    	mode = mode + 1
    	AI:SetEctypeVarShort(Mapid, 6, mode)
    		
    	mode = AI:GetEctypeVarShort(Mapid, 10)
    	mode = mode + 1
    	AI:SetEctypeVarShort(Mapid, 10, mode)
			
end