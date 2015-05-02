	-----------------------------------------
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2012/07/30
	--		Author:???
	--		AIName:Monster_53103.lua
	--		AIID:???
	--
	-----------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
	  
	  if nIndex == 0 then
	  	AI:AddSkill(2350,1)
	  	AI:UseSkill(2350,1)
	  end
	  
	  if nIndex == 1 then
	  	AI:SelfMurder()
	  end
	 
	end
	
	function Event_Thinking(nAI)
	  local AI = GetMonsterAI(nAI)
	  
	  a = AI:GetArray(1)
	  if a == 0 then
	  	AI:ScreenText("A vast number of spiderlings crawl out from under the Spider Queen!",2)
	  	AI:AddSkill(2350,1)
	  	AI:UseSkill(2350,1)
	  	AI:SetTimer(0,5000,65535)
	  	AI:SetTimer(1,60000,1)
	  	AI:SetArray(1,1)
	  end
	end