	----------------------------------------------------
	--		Copyright：PERFECT WORLD
	--		Modified：2010/08/31
	--		Author：魏东园
	--		Class:	.Lua
	--		AIName：.lua
	--		Remark：冥界之门-泰坦王座
	----------------------------------------------------

	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		--召唤半人马
		if nIndex == 0 then
				Posx = AI:GetPosX()
				Posy = AI:GetPosY()
				
				AI:SummonMonsterByPos(52245, Posx, Posy )
				AI:PlayEffect("common\\story\\absolve\\fire\\tx_absolve_fire.ini")
		end
		
		if nIndex == 1 then
				AI:SelfMurder()
		end
		
	end
	
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		
      	a = AI:GetArray(1)
        if a == 0 then
        	ectype = AI:GetMapID()
    			var = AI:GetEctypeVarShort(ectype, 0)
    			if var == 0 then
    				AI:SetTimer(0,5000,1)
          	AI:SetTimer(1,6000,1)
    			end
    			if var == 1 then
    				AI:SetTimer(0,5000,2)
          	AI:SetTimer(1,11000,1)
    			end
    			if var == 2 then
    				AI:SetTimer(0,5000,3)
          	AI:SetTimer(1,16000,1)
    			end
          AI:SetArray(1,1)
			  end
			
 	end
 	
 	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
	
	end