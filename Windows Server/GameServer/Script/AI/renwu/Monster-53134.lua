	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/7/25
	--		Author:???
	--		Class:	.lua
	--		AIName:Monster-53134.lua
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      
      if nIndex == 0 then
      	AI:ScreenText("If you can win this last game, I'll tell you what you want to know.",2)
      end
      
      if nIndex == 1 then
      	AI:ScreenText("Oh, I can just imagine your face when you find out the truth!",2)
      end
      
      if nIndex == 2 then
      	AI:ScreenText("Are you ready, mortal?",2)
      	AI:SelfMurder()
      end
   
  end
  
  function Event_Thinking(nAI)
			local AI = GetMonsterAI(nAI)
			
			a = AI:GetArray(4)
	  	if a == 0 then
	  		AI:ScreenText("Come and meet my puppet... she'll be your final opponent!",2)
	  		AI:SetTimer(0,4000,1)
	  		AI:SetTimer(1,9000,1)
	  		AI:SetTimer(2,13000,1)
	  		AI:SetArray(4,1)
	  	end
			
	end