	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/7/25
	--		Author:???
	--		Class:	.lua
	--		AIName:Monster-53137.lua
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      
      if nIndex == 0 then
      	AI:ScreenText("Soul of Paladin Deserter: Help me! Please! Please help me!",2)
      end
      
      if nIndex == 1 then
      	AI:SelfMurder()
      end
   
  end
  
  function Event_Thinking(nAI)
			local AI = GetMonsterAI(nAI)
			
			a = AI:GetArray(4)
	  	if a == 0 then
	  		AI:ScreenText("Soul of Paladin Deserter: How could I possible defeat a Titan?",2)
	  		AI:SetTimer(0,5000,1)
	  		AI:SetTimer(1,10000,1)
	  		AI:SetArray(4,1)
	  	end
			
	end