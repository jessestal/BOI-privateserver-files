	-----------------------------------------
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2012/07/30
	--		Author:???
	--		AIName:Monster_53131.lua
	--		AIID:??
	--
	-----------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
	  
	  if nIndex == 0 then
	  
	  	mapid = AI:GetMapID()
	  	AI:SetEctypeVarShort(mapid,11,0)
	  	a = AI:GetEctypeVarShort(mapid,11)	  	  	
	  	while a < 5 do	  		
	  		x = math.random(95,107)
	  		y = math.random(102,116)
	  		AI:SummonMonsterByPos(53137,x,y)
	  		a = a + 1	  		
	  	end
	  	AI:SetEctypeVarShort(mapid,11,a)
	  	AI:ScreenText("Stay your blades! Those orbs of light are the only way to damage the puppets!",2)
	  end
	  
	  if nIndex == 1 then
	  	mapid = AI:GetMapID()
	  	AI:SetEctypeVarShort(mapid,12,0)
	  	b = AI:GetEctypeVarShort(mapid,12)
	  	c = AI:GetEctypeVarShort(mapid,13)
	  	if c < 21 then
		  	while b < 10 do
			  	x = math.random(95,107)
			  	y = math.random(102,116)
			  	AI:SummonMonsterByPos(53138,x,y)
			  	b = b + 1
			  	AI:ScreenText("Watch out for the green spots, or you'll be in real trouble!",2)
			  end
			end
			c = c + 10
		  AI:SetEctypeVarShort(mapid,13,c)
	  end
	  
	  if nIndex == 2 then
	  	x = math.random(94,119)
	  	y = math.random(92,119)
	  	AI:SummonMonsterByPos(53139,x,y)
	  	AI:ScreenText("Need a boost? Try touching this...",2)
	  end
	  	
	  if nIndex == 3 then
	  	x1 = AI:GetPosX()
	  	y1 = AI:GetPosY()
	  	AI:SummonMonsterByPos(53140,x+1,y)
--	  	AI:SummonMonsterByPos(53140,x-1,y)
--	  	AI:SummonMonsterByPos(53140,x,y+1)
--	  	AI:SummonMonsterByPos(53140,x,y-1)
	  end
	  
	  if nIndex == 4 then
	  	mapid = AI:GetMapID()
	  	AI:SetEctypeVarShort(mapid,11,0)
	  	AI:SetEctypeVarShort(mapid,12,0)
	  	AI:SetEctypeVarShort(mapid,13,0)
--	  	AI:DelTimer(0)
	  	AI:DelTimer(2)
	  end
				  

	 
	end
	
	function Event_Thinking(nAI)
	  local AI = GetMonsterAI(nAI)
	  t = AI:HaveAttackTarget()
 			HP = AI:GetHP()
    	HPMAX = AI:GetHPMax()
    	a = AI:GetArray(1)
			if t == false then
						if a > 0 then
							if HP == HPMAX then
		    				AI:DelTimer(0)
								AI:DelTimer(1)
								AI:DelTimer(2)
								AI:DelTimer(3)
								AI:DelTimer(4)
		    				AI:SetArray(1,0)
		    			end
		    		end
			else
		
				if a == 0 then
					if HP < HPMAX then
						mapid = AI:GetMapID()
						AI:ScreenText("Here's your final challenge. Don't disappoint me!",2)
						AI:SetEctypeVarShort(mapid,11,0)
				  	a = AI:GetEctypeVarShort(mapid,11)	  	  	
				  	while a < 5 do	  		
				  		x = math.random(95,107)
				  		y = math.random(102,116)
				  		AI:SummonMonsterByPos(53137,x,y)
				  		a = a + 1	  		
				  	end
						AI:SetEctypeVarShort(mapid,12,0)
	  				b = AI:GetEctypeVarShort(mapid,12)
				  	c = AI:GetEctypeVarShort(mapid,13)
				  	if c < 21 then
					  	while b < 10 do
						  	x = math.random(95,107)
						  	y = math.random(102,116)
						  	AI:SummonMonsterByPos(53138,x,y)
						  	b = b + 1
						  	AI:ScreenText("Watch out for the green spots, or you'll be in real trouble!",2)
						  end
						end
				  	
						AI:SetTimer(0,30000,65535)
						AI:SetTimer(1,25000,65535)
						AI:SetTimer(4,25000,65535)
						AI:SetArray(1,1)
					end
				end
				
				if a == 1 then
					if HP < HPMAX * 0.7 then
						x1 = AI:GetPosX()
	  				y1 = AI:GetPosY()
	  				AI:SummonMonsterByPos(53140,x1+1,y1)
--						AI:SetTimer(1,10000,1)
						AI:SetTimer(2,35000,65535)
						AI:SetArray(1,2)
					end
				end
				
				
				if a == 2 then
					if HP < HPMAX * 0.6 then
						x1 = AI:GetPosX()
	  				y1 = AI:GetPosY()
	  				AI:SummonMonsterByPos(53140,x1+1,y1)
--						AI:SetTimer(0,3000,1)
--						AI:SetTimer(1,10000,1)
--						AI:SetTimer(2,35000,65535)
						AI:SetArray(1,3)
					end
				end
				
				if a == 3 then
					if HP < HPMAX * 0.4 then
						x1 = AI:GetPosX()
	  				y1 = AI:GetPosY()
	  				AI:SummonMonsterByPos(53140,x1+1,y1)
--						AI:SetTimer(0,3000,1)
--						AI:SetTimer(1,10000,1)
--						AI:SetTimer(2,15000,1)
						AI:SetArray(1,4)
					end
				end
				
				if a == 4 then
					if HP < HPMAX * 0.2 then
						x1 = AI:GetPosX()
	  				y1 = AI:GetPosY()
	  				AI:SummonMonsterByPos(53140,x1+1,y1)
--						AI:SetTimer(0,3000,1)
--						AI:SetTimer(1,10000,1)
--						AI:SetTimer(2,15000,1)
						AI:SetArray(1,5)
					end
				end 
			end
				
	end