	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/7/25
	--		Author:???
	--		Class:	.lua
	--		AIName:Monster-30608.lua
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      
      
      if nIndex == 0 then
      	AI:SelfMurder()
      	AI:Exit()
      end
      
      if nIndex == 1 then
      	AI:Say("Huh?")
      end
      
      if nIndex == 2 then
      	AI:Say("Hey, scram!")
      end

      
  end
  
  function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
		a = AI:GetArray(1)
		if a == 0 then
			AI:PlayAction("skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini" , 0, 1)
			AI:Say("Ah!!",2)
			AI:SetTimer(0,120000,1)
			AI:SetTimer(1,4000,1)
			AI:SetTimer(2,8000,1)
			AI:SetArray(1,1)
		end
	

	end 
	
	function Event_ReadSeekPos(nAI)
    local AI = GetMonsterAI(nAI)
        

	end
	 
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		
		
		
	end