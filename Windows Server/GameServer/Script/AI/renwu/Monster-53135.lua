	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/7/25
	--		Author:???
	--		Class:	.lua
	--		AIName:Monster-53135.lua
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      
      if nIndex == 0 then
      	AI:ScreenText("Long ago, I personally placed Aether's Blood in your very hands, yet your ignorance has led you to lead this poor, kindhearted mortal to run hither and tither so!",2)
      end
      
      if nIndex == 1 then
      	AI:ScreenText("Mortal, this was meant to test your abilities and your resolve. I see now that you truly have the potential to revive Odin!",2)
      end
      
      if nIndex == 2 then
      	AI:ScreenText("The strength of the mortals is far greater than it once was. It now contends with the strength of the gods. We Titans will involve ourselves no further. Go ask your goddess for what you seek!",2)
      	AI:SelfMurder()
      end
   
  end
  
  function Event_Thinking(nAI)
			local AI = GetMonsterAI(nAI)
			
			a = AI:GetArray(4)
	  	if a == 0 then
	  		AI:ScreenText("How long now have you been searching for your so-called relic? It's actually been in your hands all along.",2)
	  		AI:SetTimer(0,5000,1)
	  		AI:SetTimer(1,10000,1)
	  		AI:SetTimer(2,15000,1)
	  		AI:SetArray(4,1)
	  	end
			
	end