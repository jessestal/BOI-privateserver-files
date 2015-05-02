	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/7/25
	--		Author:???
	--		Class:	.lua
	--		AIName:Monster-30713.lua
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      
      if nIndex == 0 then
      	AI:ScreenText("Odin: Hades, explain yourself! What are you doing here?",2)
      end
      
      if nIndex == 1 then
      	AI:ScreenText("Hades: My lord, Odin, they are trying to destroy the Pillar of the World! I'm here to stop them!",2)
      end
      
      if nIndex == 2 then
      	AI:ScreenText("Odin: You dare lie to me? I already know full well of your guilt!",2)
      end

      if nIndex == 3 then
      	AI:ScreenText("Odin: I had hoped you might recognize your sins, but it seems I have no reason to spare you!",2)
      end
      
      if nIndex == 4 then
      	AI:ScreenText("Hades: Sins? No, I did nothing more than follow my ambition!",2)
      end
      
      if nIndex == 5 then
      	AI:ScreenText("Hades: I regret only that I have failed! I have been bested... Farewell!",2)
      end
      
       if nIndex == 6 then
      	AI:ScreenText("Odin: You mortals have come so far in my absence... with Hades gone, it is time to rebuild!",2)
      end
      
  end
  
  function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
		a = AI:GetArray(1)
		if a == 0 then
			AI:PlayAction("skill\\Monster\\boss\\shenshengguanzhu\\fire\\shenshengguanzhu_fire.ini" , 0, 1)
			AI:PlayAction("skill\\pet\\chunv\\hit\\tx_chunv_hit.ini" , 0, 1)
			AI:ScreenText("Silence!!",2)
			AI:SetTimer(0,8000,1)
			AI:SetTimer(1,16000,1)
			AI:SetTimer(2,24000,1)
			AI:SetTimer(3,32000,1)
			AI:SetTimer(4,40000,1)
			AI:SetTimer(5,48000,1)
			AI:SetTimer(6,60000,1)
			AI:SetArray(1,1)
		end
	

	end 
	
	function Event_ReadSeekPos(nAI)
    local AI = GetMonsterAI(nAI)
        

	end
	 
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		
		
		
	end