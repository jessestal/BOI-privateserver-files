	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/7/25
	--		Author:???
	--		Class:	.lua
	--		AIName:Monster-30728.lua
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      
      if nIndex == 0 then
      	x = math.random(193,220)
      	y = math.random(94,114)
      	AI:SummonMonsterByPos(30708,x,y,1)
      end
      
      if nIndex == 1 then
      	AI:SelfMurder()
      	AI:Exit()
      end

      
  end
  
  function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
		a = AI:GetArray(1)
     if a == 0 then
	     	AI:ScreenText("Try everything to protect the Mages! The Magic Barrier is our last defense!",2)
	     	AI:SetTimer(0,1500,60)
	     	AI:SetTimer(1,120000,1)
	     	AI:SetArray(1,1)
	   end
	

	end 
	
	function Event_ReadSeekPos(nAI)
    local AI = GetMonsterAI(nAI)
        

	end
	 
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		
		
		
	end