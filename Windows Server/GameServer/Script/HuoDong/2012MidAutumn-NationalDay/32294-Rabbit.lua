	--****************************************
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2012/09/18
	--		Author:???
	--		Class: Lua
	--		AIName:32294-Rabbit.lua
	--		Backup:???
	--****************************************


	function Event_OnTimer(nAI,nIndex, nCount)
  local AI = GetMonsterAI(nAI)
	local mapid = AI:GetMapID()
  	
		if nIndex == 1 then--????  	
	  	Posx1 = AI:GetPosX()
	  	Posy1 = AI:GetPosY()
	  	a = AI:GetArray(1)
	  	if a == 1 then
	  		AI:UpdateSeekPath(1)	
	      AI:SetArray(1,2)
	      AI:ScreenText("Mid-Autumn Jaden Rabbit: please take this gift!",2)
	    	for time = 1, 5, 1 do
	    		Dir = math.random(1,8)
	    		PosX,PosY = math.random(Posx1-5,Posx1+5),math.random(Posy1-5,Posy1+5)
	    		AI:SummonMonsterByPos(32295,PosX,PosY,Dir)	    		
	    	end	      
	    end
	    if a == 2 then
	    	AI:SetArray(1,3)
	    end
	    if a == 3 then
	    	for time = 1, 5, 1 do
	    		Dir = math.random(1,8)
	    		PosX,PosY = math.random(Posx1-5,Posx1+5),math.random(Posy1-5,Posy1+5)
	    		AI:SummonMonsterByPos(32295,PosX,PosY,Dir)
	    	end	    
	    	AI:Exit()
	    end	    
	    
	    
	  end--??????
    	  
end


	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		a = AI:GetArray(1)
		if a == 0 then
			AI:SetTimer(1,2000,3)
			AI:SetArray(1,1)
		end   
	
end


	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)  
		local mapid = AI:GetMapID()
		
		
	end
	
	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
				
		if nIndex == 1 then
			Posx = AI:GetPosX()
			Posy = AI:GetPosY()
			PosX,PosY = math.random(Posx-10,Posx+10),math.random(Posy-10,Posy+10)
			AI:AddSeekPos(mapid,PosX,PosY)
		end
	end	
	
	
	
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
	end