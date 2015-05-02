	-----------------------------------------
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2012/07/30
	--		Author:???
	--		AIName:Monster_53107.lua
	--		AIID:53107 ????
	--
	-----------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
	  
	  if nIndex == 0 then
	  	AI:Say("Go to Giant Kingdom East (172.164) and use the Badge of Faith! I will help you find what has been concealed!") 
	  	AI:ScreenText("Go to Giant Kingdom East (172.164) and use the Badge of Faith! I will help you find what has been concealed!",2)
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
			AI:Say("Now we can be sure that there's something hidden between the three Manaforges!")
			AI:SetTimer(0,4000,1)
			AI:SetTimer(1,10000,1)
			AI:SetArray(1,1)
		end
	
	end
	   