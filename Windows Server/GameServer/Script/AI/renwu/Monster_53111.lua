	-----------------------------------------
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2012/07/30
	--		Author:???
	--		AIName:Monster_53111.lua
	--		AIID:53111 ????
	--
	-----------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
	  
	  if nIndex == 0 then
	  	AI:Say("The Desert Soldier Ants in Fate's Expanse have what you need!") 
	  	AI:ScreenText("The Desert Soldier Ants in Fate's Expanse have what you need!",2)
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
			AI:Say("Hoddak could prove to be useful, so let's just do what he wants for now.")
			AI:ScreenText("Hoddak could prove to be useful, so let's just do what he wants for now.",2)
			AI:SetTimer(0,4000,1)
			AI:SetTimer(1,10000,1)
			AI:SetArray(1,1)
		end
	
	end
	   