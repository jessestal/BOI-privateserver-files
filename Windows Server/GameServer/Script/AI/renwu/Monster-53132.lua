	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/7/25
	--		Author:???
	--		Class:	.lua
	--		AIName:Monster-53132.lua
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      
      if nIndex == 0 then
      	AI:ScreenText("I don't know how you mortals play chess, so if you want to pass, you'll have to play by MY rules!",2)
      end
      
      if nIndex == 1 then
      	AI:ScreenText("Are you brave enough to challenge my King?",2)
      end
      
      if nIndex == 2 then
      	AI:SelfMurder()
      end
   
  end
  
  function Event_Thinking(nAI)
			local AI = GetMonsterAI(nAI)
			
			a = AI:GetArray(4)
	  	if a == 0 then
	  		AI:ScreenText("My chess pieces are eager to play with you! All you have to do is win a game of chess!",2)
	  		AI:SetTimer(0,4000,1)
	  		AI:SetTimer(1,9000,1)
	  		AI:SetTimer(2,10000,1)
	  		AI:SetArray(4,1)
	  	end
			
	end