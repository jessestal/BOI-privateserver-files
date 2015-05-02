	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/7/25
	--		Author:???
	--		Class:	.lua
	--		AIName:Monster-53017.lua
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      
      if nIndex == 0 then
      	AI:ScreenText("4",2)
      end
      
      if nIndex == 1 then
      	AI:ScreenText("3",2)
      end
      
      if nIndex == 2 then
      	AI:ScreenText("2",2)
      end
      
      if nIndex == 3 then
      	AI:ScreenText("1",2)
      end
      
--      if nIndex == 4 then
--      	AI:ScreenText("1",2)
--      end
      
--      if nIndex == 5 then
--      	AI:ScreenText("0",2)
--      end
      
      if nIndex == 6 then
      	AI:SelfMurder()
      end

   
  end
  
  function Event_Thinking(nAI)
			local AI = GetMonsterAI(nAI)
			
			a = AI:GetArray(4)
	  	if a == 0 then
	  		AI:ScreenText("You must kill all the monsters within 5 seconds in order to pass! Begin the countdown...",2)
	  		AI:SetTimer(0,1000,1)
	  		AI:SetTimer(1,2000,1)
	  		AI:SetTimer(2,3000,1)
	  		AI:SetTimer(3,4000,1)
--	  		AI:SetTimer(4,5000,1)
--	  		AI:SetTimer(5,6000,1)
	  		AI:SetTimer(6,60000,1)
	  		AI:SetArray(4,1)
	  	end
			
	end