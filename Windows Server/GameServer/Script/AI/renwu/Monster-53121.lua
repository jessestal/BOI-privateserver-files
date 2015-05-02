	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/7/25
	--		Author:???
	--		Class:	.lua
	--		AIName:Monster-53121.lua
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      
      if nIndex == 0 then
      	AI:ScreenText("Ah! There you are. I've been waiting for you... Did you have fun with my servants, human? ",2)
      end
      
      if nIndex == 1 then
      	AI:ScreenText("I must say, you've surpassed my expectations. Now, don't just stand there, come on! I know what it is you want...",2)
      end
      
      if nIndex == 2 then
      	AI:SelfMurder()
      end
   
  end
  
  function Event_Thinking(nAI)
			local AI = GetMonsterAI(nAI)
			
			a = AI:GetArray(4)
	  	if a == 0 then
	  		AI:SetTimer(0,1000,1)
	  		AI:SetTimer(1,5000,1)
	  		AI:SetTimer(2,10000,1)
	  		AI:SetArray(4,1)
	  	end
			
	end