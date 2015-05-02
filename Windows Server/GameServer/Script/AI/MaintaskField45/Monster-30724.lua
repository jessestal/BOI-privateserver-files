	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/7/25
	--		Author:???
	--		Class:	.lua
	--		AIName:Monster-30724.lua
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      
      
--      if nIndex == 0 then
--      	x = math.random(203,217)
--      	y = math.random(165,178)
--      	AI:SummonMonsterByPos(30707,x,y,1)
--      end
      
      if nIndex == 1 then
      	AI:ScreenText("The hellspawn are weak to lightning! Use the spark (210, 172) to defeat them!",2)
      	AI:SummonMonsterByPos(30715,223,183,0)
      end
      
      if nIndex == 2 then
      	AI:ScreenText("The hellspawn are weak to lightning! Use the spark (223,159) to defeat them!",2)
      	AI:SummonMonsterByPos(30716,223,159,0)
      end
      
      if nIndex == 3 then
      	AI:ScreenText("The hellspawn are weak to lightning! Use the spark (196, 159) to defeat them!",2)
      	AI:SummonMonsterByPos(30717,196,159,0)
      end
      
      if nIndex == 4 then
      	AI:ScreenText("The hellspawn are weak to lightning! Use the spark (196, 183) to defeat them!",2)
      	AI:SummonMonsterByPos(30718,196,183,0)
      end
      
      if nIndex == 5 then
      	AI:SelfMurder()
      	AI:Exit()
      end
      	

      
  end
  
  function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
		 a = AI:GetArray(1)
     if a == 0 then
	     	AI:ScreenText("Watch out! The demons are invading!",2)
--	     	AI:SetTimer(0,1500,65535)
	     	AI:SetTimer(1,1000,1)
	     	AI:SetTimer(2,35000,1)
	     	AI:SetTimer(3,60000,1)
	     	AI:SetTimer(4,85000,1)
	     	AI:SetTimer(5,100000,1)
	     	AI:SetArray(1,1)
     end
	

	end 
	
	function Event_ReadSeekPos(nAI)
    local AI = GetMonsterAI(nAI)
        

	end
	 
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		
		
		
	end
		