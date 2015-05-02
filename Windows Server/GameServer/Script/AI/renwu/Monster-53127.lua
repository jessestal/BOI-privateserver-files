	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/7/25
	--		Author:???
	--		Class:	.lua
	--		AIName:Monster-53127.lua
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      
      if nIndex == 0 then
      	AI:ScreenText("You humans are always so focused on your own interests, never even considering what it means for others!",2)
      end
      
      if nIndex == 1 then
      	AI:ScreenText("You humans are always so focused on your own interests, never even considering what it means for others!",2)
      end
      
      if nIndex == 2 then
      	AI:SelfMurder()
      end
   
  end
  
  function Event_Thinking(nAI)
			local AI = GetMonsterAI(nAI)
			
			a = AI:GetArray(4)
	  	if a == 0 then
	  		AI:ScreenText("Oh, poor Rognos. All he wanted was forgiveness, but you couldn't even allow him that? And now he's lost his last chance...",2)
	  		AI:SetTimer(0,4000,1)
	  		AI:SetTimer(1,9000,1)
	  		AI:SetTimer(2,15000,1)
	  		AI:SetArray(4,1)
	  	end
			
	end