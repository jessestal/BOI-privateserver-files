	-----------------------------------------
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2012/07/30
	--		Author:???
	--		AIName:Monster_53113.lua
	--		AIID:53113 ????
	--
	-----------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
	  
	  if nIndex == 0 then
	  	AI:Say("Click on the fragments to combine them!") 
	  	AI:ScreenText("Click on the fragments to combine them!",2)
	  end
	  
	  if nIndex == 1 then
	  	AI:SelfMurder()
	  end
	
	end
	
	function Event_Thinking(nAI)
	  local AI = GetMonsterAI(nAI)
	  
	  a = AI:GetArray(1)
		if a == 0 then
			AI:PlayAction("skill\\Monster\\boss\\shenshengguanzhu\\fire\\shenshengguanzhu_fire.ini" , 0, 1)
			--AI:Say("GUID:03097000002")
			AI:SetTimer(0,2000,1)
			AI:SetTimer(1,10000,1)
			AI:SetArray(1,1)
		end
	
	end
	   