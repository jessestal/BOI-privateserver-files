	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/7/25
	--		Author:???
	--		Class:	.lua
	--		AIName:Monster-30601.lua
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      
      if nIndex == 0 then
      	AI:SelfMurder()
      	AI:Exit()
      end
      

      
  end
  
  function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
		HP = AI:GetHP()
    HPMAX = AI:GetHPMax()
    a = AI:GetArray(1)
    	
    if a == 0 then
    	AI:ScreenText("The shield generator is recharging. Please wait...",2)
    	AI:SetTimer(0,120000,1)
    	AI:SetArray(1,1)
    end
	

	end 
	
	function Event_ReadSeekPos(nAI)
    local AI = GetMonsterAI(nAI)
        

	end
	 
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		
		
		
	end