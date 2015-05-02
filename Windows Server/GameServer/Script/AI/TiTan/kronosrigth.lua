function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
    
    a = AI:GetArray(1)
    if a == 0 then
    	AI:SetTimer(5,5000,1)
    	AI:SetArray(1,1)
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
        AI:DelTimer(5)
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
    				AI:SetTimer(2,5000,1)
    				AI:SetArray(6,0)
    			end
    			if Rad == 1 then
    				AI:SetTimer(3,7000,1)
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
    			AI:AddSkill(2159,1)
		    	AI:UseSkill(2159,1)
		    	AI:PlayAction("attack01",500,0)
		    	AI:SetArray(5,0)
		    	AI:SetTimer(1,1000,1)
		    	AI:SetArray(6,1)
    		end
    end
    
    if nIndex == 3 then
    		g = AI:GetArray(7)
    		if g == 0 then
    			Posx = 227
    			Posy = 88
    			
    			Rad = AI:GetRand(40)
    	  	Rad = Rad - 20
    	  	Rad1 = AI:GetRand(16)
    	  	Rad1 = Rad1 - 8
    	  	AI:SummonMonsterByPos(52236, Posx+Rad, Posy+Rad1 )
    	  	
    	  	Rad = AI:GetRand(40)
    	  	Rad = Rad - 20
    	  	Rad1 = AI:GetRand(16)
    	  	Rad1 = Rad1 - 8
    	  	AI:SummonMonsterByPos(52236, Posx+Rad, Posy+Rad1 )
    	  	
    	  	Rad = AI:GetRand(40)
    	  	Rad = Rad - 20
    	  	Rad1 = AI:GetRand(16)
    	  	Rad1 = Rad1 - 8
    	  	AI:SummonMonsterByPos(52236, Posx+Rad, Posy+Rad1 )
    	  	
    	  	Rad = AI:GetRand(40)
    	  	Rad = Rad - 20
    	  	Rad1 = AI:GetRand(16)
    	  	Rad1 = Rad1 - 8
    	  	AI:SummonMonsterByPos(52236, Posx+Rad, Posy+Rad1 )
    	  	
    	  	Rad = AI:GetRand(40)
    	  	Rad = Rad - 20
    	  	Rad1 = AI:GetRand(16)
    	  	Rad1 = Rad1 - 8
    	  	AI:SummonMonsterByPos(52236, Posx+Rad, Posy+Rad1 )
    	  	
    	  	Rad = AI:GetRand(40)
    	  	Rad = Rad - 20
    	  	Rad1 = AI:GetRand(16)
    	  	Rad1 = Rad1 - 8
    	  	AI:SummonMonsterByPos(52236, Posx+Rad, Posy+Rad1 )
    	  	
    	  	Rad = AI:GetRand(28)
    	  	Rad = Rad - 14
    	  	Rad1 = AI:GetRand(16)
    	  	Rad1 = Rad1 - 8
    	  	AI:SummonMonsterByPos(52236, Posx+Rad, Posy+Rad1 )
    	  	
    	  	Rad = AI:GetRand(28)
    	  	Rad = Rad - 14
    	  	Rad1 = AI:GetRand(16)
    	  	Rad1 = Rad1 - 8
    	  	AI:SummonMonsterByPos(52236, Posx+Rad, Posy+Rad1 )
    	  	
    	  	Rad = AI:GetRand(28)
    	  	Rad = Rad - 14
    	  	Rad1 = AI:GetRand(16)
    	  	Rad1 = Rad1 - 8
    	  	AI:SummonMonsterByPos(52236, Posx+Rad, Posy+Rad1 )
    	  	
    	  	Rad = AI:GetRand(28)
    	  	Rad = Rad - 14
    	  	Rad1 = AI:GetRand(16)
    	  	Rad1 = Rad1 - 8
    	  	AI:SummonMonsterByPos(52236, Posx+Rad, Posy+Rad1 )
    	  	
    	  	Rad = AI:GetRand(28)
    	  	Rad = Rad - 14
    	  	Rad1 = AI:GetRand(16)
    	  	Rad1 = Rad1 - 8
    	  	AI:SummonMonsterByPos(52236, Posx+Rad, Posy+Rad1 )
    	  	
    	  	Rad = AI:GetRand(28)
    	  	Rad = Rad - 14
    	  	Rad1 = AI:GetRand(16)
    	  	Rad1 = Rad1 - 8
    	  	AI:SummonMonsterByPos(52236, Posx+Rad, Posy+Rad1 )
    	  	
    	  	Rad = AI:GetRand(14)
    	  	Rad = Rad - 7
    	  	Rad1 = AI:GetRand(16)
    	  	Rad1 = Rad1 - 8
    	  	AI:SummonMonsterByPos(52236, Posx+Rad, Posy+Rad1 )
    	  	
    	  	Rad = AI:GetRand(14)
    	  	Rad = Rad - 7
    	  	Rad1 = AI:GetRand(16)
    	  	Rad1 = Rad1 - 8
    	  	AI:SummonMonsterByPos(52236, Posx+Rad, Posy+Rad1 )
    	  	
    	  	Rad = AI:GetRand(14)
    	  	Rad = Rad - 7
    	  	Rad1 = AI:GetRand(16)
    	  	Rad1 = Rad1 - 8
    	  	AI:SummonMonsterByPos(52236, Posx+Rad, Posy+Rad1 )
    	  	
    	  	Rad = AI:GetRand(14)
    	  	Rad = Rad - 7
    	  	Rad1 = AI:GetRand(16)
    	  	Rad1 = Rad1 - 8
    	  	AI:SummonMonsterByPos(52236, Posx+Rad, Posy+Rad1 )
    	  	
    	  	Rad = AI:GetRand(14)
    	  	Rad = Rad - 7
    	  	Rad1 = AI:GetRand(16)
    	  	Rad1 = Rad1 - 8
    	  	AI:SummonMonsterByPos(52236, Posx+Rad, Posy+Rad1 )
    	  	
    	  	Rad = AI:GetRand(14)
    	  	Rad = Rad - 7
    	  	Rad1 = AI:GetRand(16)
    	  	Rad1 = Rad1 - 8
    	  	AI:SummonMonsterByPos(52236, Posx+Rad, Posy+Rad1 )
    	  	AI:SummonMonsterByPos(52236, 230, 80 )
    			
    			AI:PlayAction("attack01",500,0)
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
    				Posx = 228
    			
    				Rad = AI:GetRand(28)
    	  		Rad = Rad - 14
    	  		AI:SummonMonsterByPos(52237, Posx+Rad, 98 )
    	  		Rad = AI:GetRand(28)
    	  		Rad = Rad - 14
    	  		AI:SummonMonsterByPos(52237, Posx+Rad, 98 )
    	  		Rad = AI:GetRand(28)
    	  		Rad = Rad - 14
    	  		AI:SummonMonsterByPos(52237, Posx+Rad, 98 )
    	  		Rad = AI:GetRand(28)
    	  		Rad = Rad - 14
    	  		AI:SummonMonsterByPos(52237, Posx+Rad, 98 )
    	  		Rad = AI:GetRand(28)
    	  		Rad = Rad - 14
    	  		AI:SummonMonsterByPos(52237, Posx+Rad, 98 )
    	  		
    			end
    			if var == 1 then
    				Posx = 228
    			
    				Rad = AI:GetRand(28)
    	  		Rad = Rad - 14
    	  		AI:SummonMonsterByPos(52237, Posx+Rad, 98 )
    	  		Rad = AI:GetRand(28)
    	  		Rad = Rad - 14
    	  		AI:SummonMonsterByPos(52237, Posx+Rad, 98 )
    	  		Rad = AI:GetRand(28)
    	  		Rad = Rad - 14
    	  		AI:SummonMonsterByPos(52237, Posx+Rad, 98 )
    	  		Rad = AI:GetRand(28)
    	  		Rad = Rad - 14
    	  		AI:SummonMonsterByPos(52237, Posx+Rad, 98 )
    	  		Rad = AI:GetRand(28)
    	  		Rad = Rad - 14
    	  		AI:SummonMonsterByPos(52237, Posx+Rad, 98 )
    	  		Rad = AI:GetRand(28)
    	  		Rad = Rad - 14
    	  		AI:SummonMonsterByPos(52237, Posx+Rad, 98 )
    	  		Rad = AI:GetRand(28)
    	  		Rad = Rad - 14
    	  		AI:SummonMonsterByPos(52237, Posx+Rad, 98 )
    	  		Rad = AI:GetRand(28)
    	  		Rad = Rad - 14
    	  		AI:SummonMonsterByPos(52237, Posx+Rad, 98 )
    	  		Rad = AI:GetRand(28)
    	  		Rad = Rad - 14
    	  		AI:SummonMonsterByPos(52237, Posx+Rad, 98 )
    	  		
    			end
    			if var == 2 then
    				Posx = 228
    			
    				Rad = AI:GetRand(28)
    	  		Rad = Rad - 14
    	  		AI:SummonMonsterByPos(52237, Posx+Rad, 98 )
    	  		Rad = AI:GetRand(28)
    	  		Rad = Rad - 14
    	  		AI:SummonMonsterByPos(52237, Posx+Rad, 98 )
    	  		Rad = AI:GetRand(28)
    	  		Rad = Rad - 14
    	  		AI:SummonMonsterByPos(52237, Posx+Rad, 98 )
    	  		Rad = AI:GetRand(28)
    	  		Rad = Rad - 14
    	  		AI:SummonMonsterByPos(52237, Posx+Rad, 98 )
    	  		Rad = AI:GetRand(28)
    	  		Rad = Rad - 14
    	  		AI:SummonMonsterByPos(52237, Posx+Rad, 98 )
    	  		Rad = AI:GetRand(28)
    	  		Rad = Rad - 14
    	  		AI:SummonMonsterByPos(52237, Posx+Rad, 98 )
    	  		Rad = AI:GetRand(28)
    	  		Rad = Rad - 14
    	  		AI:SummonMonsterByPos(52237, Posx+Rad, 98 )
    	  		Rad = AI:GetRand(28)
    	  		Rad = Rad - 14
    	  		AI:SummonMonsterByPos(52237, Posx+Rad, 98 )
    	  		Rad = AI:GetRand(28)
    	  		Rad = Rad - 14
    	  		AI:SummonMonsterByPos(52237, Posx+Rad, 98 )
    	  		Rad = AI:GetRand(28)
    	  		Rad = Rad - 14
    	  		AI:SummonMonsterByPos(52237, Posx+Rad, 98 )
    	  		Rad = AI:GetRand(28)
    	  		Rad = Rad - 14
    	  		AI:SummonMonsterByPos(52237, Posx+Rad, 98 )
    	  		Rad = AI:GetRand(28)
    	  		Rad = Rad - 14
    	  		AI:SummonMonsterByPos(52237, Posx+Rad, 98 )
    	  		Rad = AI:GetRand(28)
    	  		Rad = Rad - 14
    	  		AI:SummonMonsterByPos(52237, Posx+Rad, 98 )
    	  		
    			end
    			AI:PlayAction("attack01",500,0)
    			AI:SetArray(5,0)
		    	AI:SetTimer(1,1000,1)
		    	AI:SetArray(8,1)
    		end
    end
    
    if nIndex == 5 then
    		AI:ChangeFaction(1)
    end
    
end

function Event_OnDead(nAI)
				local AI = GetMonsterAI(nAI)
				
				Mapid = AI:GetMapID()
				
    		mode = AI:GetEctypeVarShort(Mapid, 6)
    		mode = mode + 1
    		AI:SetEctypeVarShort(Mapid, 6, mode)
    		
    		mode = AI:GetEctypeVarShort(Mapid, 10)
    		mode = mode + 1
    		AI:SetEctypeVarShort(Mapid, 10, mode)
end