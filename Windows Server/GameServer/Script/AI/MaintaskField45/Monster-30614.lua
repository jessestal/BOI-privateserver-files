	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/7/25
	--		Author:???
	--		Class:	.lua
	--		AIName:Monster-30614.lua
	--		Remark:
	----------------------------------------------------
	
	-- 341 ??10?
	-- 298 ??150?
	
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      
      if nIndex == 0 then
      	n = AI:GetServerValue(341)    	
      	if n == 0 then
      		AI:SetServerValue(298,0)
	      	while n < 10 do
		      	local x = math.random(165,173)
		      	local y = math.random(137,145)
		      	AI:SummonMonsterByPos(30615,x,y)      		
		      	n = n + 1
		      	AI:SetServerValue(341,n)
		      	AI:SetServerValue(298,n)
		      end	      
		    end
	    end

      
      if nIndex == 1 then
      	AI:ScreenText("A magic barrier appears.",2)
      	AI:SelfMurder()
      	AI:Exit()
      end
      

      
  end
  
  function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
		a = AI:GetArray(1)
    if a == 0 then
    	AI:ScreenText("The demons' attack has intensified!",2)
    	AI:SetTimer(0,3000,1)
    	AI:SetTimer(1,8000,1)
    	AI:SetArray(1,1)
    end
	

	end 
	
	function Event_ReadSeekPos(nAI)
    local AI = GetMonsterAI(nAI)
        

	end
	 
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		
		
		
	end
		
		
		