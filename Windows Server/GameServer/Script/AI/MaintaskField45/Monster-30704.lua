	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/7/25
	--		Author:???
	--		Class:	.lua
	--		AIName:Monster-30704.lua
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      
      if nIndex == 0 then
      	AI:ScreenText("Hayes: I won't let you have this city, Chiyu!",2)
      end
			
			if nIndex == 1 then
				AI:ScreenText("Chiyu: Hades, my lord, I'll handle this! You deal with Agritt!",2)
			end
      
  end
  
  function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
		a = AI:GetArray(1)
		if a == 0 then
			AI:PlayAction("skill\\Monster\\boss\\shenshengguanzhu\\fire\\shenshengguanzhu_fire.ini" , 0, 1)			
			AI:SetTimer(1,8000,1)
			AI:SetTimer(0,16000,1)
			AI:SetArray(1,1)
		end
			
	

	end 
	
	function Event_ReadSeekPos(nAI)
    local AI = GetMonsterAI(nAI)
        

	end
	 
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		
		
		
	end