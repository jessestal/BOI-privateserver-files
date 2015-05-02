	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/7/25
	--		Author:???
	--		Class:	.lua
	--		AIName:Monster-53123.lua
	--		Remark:
	----------------------------------------------------
	
	--????1 ,???????~~~
	--????2,???????????
	
		function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      
      if nIndex == 0 then
--      	AI:SelfMurder()
      	AI:Exit()
      end
      
      if nIndex == 1 then
				mapid = AI:GetMapID()
				AI:SummonMonsterByPos(53150,216,119)
				AI:SummonMonsterByPos(53151,172,124)
				AI:SummonMonsterByPos(53152,180,97)
				AI:SummonMonsterByPos(53153,209,110)
			end
			
  	end
  
  	function Event_Thinking(nAI)
			local AI = GetMonsterAI(nAI)
			
			HP = AI:GetHP()
    	HPMAX = AI:GetHPMax()
			a = AI:GetArray(1)
	  	if a == 0 then
	  		if HP < HPMAX then
	  			AI:ScreenText("Oh, I wonder what this new magic pen could do!",2)
	  			AI:SetArray(1,1)
	  		end
	  	end
	  	
	  	if a == 1 then
	  		if HP < HPMAX * 0.7 then
	  			Mapid = AI:GetMapID()
	  			ci = AI:GetEctypeVarShort(Mapid,1)
	  			x = AI:GetPosX()
	  			y = AI:GetPosY()
	  			if ci == 0 then
		  			AI:ScreenText("Just what is that little pen writing now?",2)
		  			AI:SummonMonsterByPos(53124,x,y,0)
		  			AI:SetEctypeVarShort(Mapid,1,1)
		  			AI:SetTimer(0,100,1)
		  		end
		  		AI:SetArray(1,2)
		  	end
		  end
		  
		  if a == 2 then
		  	if HP < HPMAX * 0.5 then
		  		Mapid = AI:GetMapID()
	  			ci = AI:GetEctypeVarShort(Mapid,1)
	  			x = AI:GetPosX()
	  			y = AI:GetPosY()
	  			if ci == 1 then
		  			AI:ScreenText("Why, that thing looks like it could really hurt!",2)
		  			mapid = AI:GetMapID()
						AI:SummonMonsterByPos(53150,216,119)
						AI:SummonMonsterByPos(53151,172,124)
						AI:SummonMonsterByPos(53152,180,97)
						AI:SummonMonsterByPos(53153,209,110)
--		  			AI:SummonMonsterByPos(53125,x,y,0)
		  			AI:SetEctypeVarShort(Mapid,1,2)
		  			AI:SetTimer(1,10000,5)
--		  			AI:SetTimer(0,100,1)
		  		end
		  		AI:SetArray(1,3)
		  	end
		  end
		  
		  if a == 3 then
		  	if HP < HPMAX * 0.2 then
		  		Mapid = AI:GetMapID()
	  			ci = AI:GetEctypeVarShort(Mapid,1)
	  			x = AI:GetPosX()
	  			y = AI:GetPosY()
	  			if ci == 2 then
		  			AI:ScreenText("Guess which one's the real one?",2)
		  			AI:SummonMonsterByPos(53130,188,103,0)
		  			AI:SummonMonsterByPos(53130,188,111,0)
		  			AI:SummonMonsterByPos(53130,197,111,0)
		  			AI:SummonMonsterByPos(53130,197,103,0)
		  			AI:SetEctypeVarShort(Mapid,1,3)
		  			AI:SetTimer(0,100,1)
		  		end
		  		AI:SetArray(1,4)
		  	end
		  end  			
			
		end