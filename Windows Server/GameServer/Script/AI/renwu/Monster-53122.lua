	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/7/25
	--		Author:???
	--		Class:	.lua
	--		AIName:Monster-53122.lua
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      
      if nIndex == 0 then
      	AI:ScreenText("If you can defeat our little human friend here, I'll grant you pardon. But if you fail, prepare to live your whole life as a rat!",2)
      end
      
      if nIndex == 1 then
      	AI:SelfMurder()
      end
   
  end
  
  function Event_Thinking(nAI)
			local AI = GetMonsterAI(nAI)
			
			a = AI:GetArray(4)
	  	if a == 0 then
	  		AI:ScreenText("I've temporarily restored your Titan's body, Rognos. Though for the purpose of fairness, I've slightly adjusted your size...",2)
	  		AI:SetTimer(0,4000,1)
	  		AI:SetTimer(1,10000,1)
	  		AI:SetArray(4,1)
	  	end
			
	end