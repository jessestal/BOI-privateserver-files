	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/7/25
	--		Author:???
	--		Class:	.lua
	--		AIName:Monster-30600.lua
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      
      if nIndex == 0 then
      	AI:PlayAction("skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini" , 0, 1)
      	AI:SummonMonsterByPos(30601,101,164,90)
      end
      
      if nIndex == 1 then
      	AI:PlayAction("skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini" , 0, 1)
      	AI:SummonMonsterByPos(30601,103,162,90)
      	AI:SummonMonsterByPos(30601,103,166,90)
      end
      
      if nIndex == 2 then
      	AI:PlayAction("skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini" , 0, 1)
      	AI:SummonMonsterByPos(30601,103,162,90)
      	AI:SummonMonsterByPos(30601,103,166,90)
      	AI:SummonMonsterByPos(30601,101,164,90)
      end
      
      if nIndex == 3 then
      	AI:ScreenText("The shield generator is recharging. Please wait...",2)
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
    	AI:SetTimer(0,5000,1)
    	AI:SetTimer(1,20000,1)
    	AI:SetTimer(2,35000,1)
    	AI:SetTimer(3,50000,1)
    	AI:SetArray(1,1)
    end

	end 
	
	function Event_ReadSeekPos(nAI)
    local AI = GetMonsterAI(nAI)
        

	end
	 
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		
		
		
	end