	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/7/25
	--		Author:???
	--		Class:	.lua
	--		AIName:Monster-30604.lua
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      
      if nIndex == 0 then
      	AI:ScreenText("You little worm... Do you think you can change anything!?",2)
      end
      
      if nIndex == 1 then
      	AI:ScreenText("Soon I will have an army of slaves to do my bidding!",2)
      end
      
      if nIndex == 2 then
      	AI:ScreenText("You think you can hurt me with such a puny little weapon?",2)
      end
      
      if nIndex == 3 then
      	AI:ScreenText("Go home, you filthy human! You have no business here!",2)
      end
      
      if nIndex == 4 then
      	AI:ScreenText("The Pillar of the World will make a wonderful source of power!",2)
      end
      
      if nIndex == 5 then
      	AI:ScreenText("With the power of the Pillar, our army will be unstoppable!",2)
      end
      
      if nIndex == 6 then
      	AI:ScreenText("Maybe I'll let you live to see our glorious leader's return...",2)
      end
      
      if nIndex == 7 then
      	AI:PlayAction("skill\\Monster\\boss\\shenshengguanzhu\\fire\\shenshengguanzhu_fire.ini" , 0, 1)
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
    	AI:PlayAction("skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini" , 0, 1)
    	AI:ScreenText("Why must you cause such ruckus, human!?",2)
    	AI:SetTimer(0,5000,1)
    	AI:SetTimer(1,10000,1)
    	AI:SetTimer(2,15000,1)
    	AI:SetTimer(3,20000,1)
    	AI:SetTimer(4,25000,1)
    	AI:SetTimer(5,30000,1)
    	AI:SetTimer(6,35000,1)
    	AI:SetTimer(7,38000,1)
    	AI:SetArray(1,1)
    end

	end 
	
	function Event_ReadSeekPos(nAI)
    local AI = GetMonsterAI(nAI)
        

	end
	 
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		
		
		
	end