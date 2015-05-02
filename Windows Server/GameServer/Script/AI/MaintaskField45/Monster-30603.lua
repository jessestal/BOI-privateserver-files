	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/7/25
	--		Author:???
	--		Class:	.lua
	--		AIName:Monster-30603.lua
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      
      if nIndex == 0 then
      	n = math.random(1,3)
      	if n == 1 then
      		AI:Say("Bring this world unto ruin!")
      	end
      	if n == 2 then
      		AI:Say("You shall perish, just as we have!")
      	end
      	if n == 3	then
      		AI:Say("Aah!!!")
      	end
      end	
      
  end
  
  function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
		a = AI:GetArray(1)
			if a == 0 then
				AI:PlayAction("skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini" , 0, 1)
				AI:SetTimer(0,1000,1)
				AI:SetArray(1,1)
			end


	end 
	
	function Event_ReadSeekPos(nAI)
    local AI = GetMonsterAI(nAI)
        

	end
	 
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
			
--			x = AI:GetPosX()
--			y = AI:GetPosY()
--			mapid = AI:GetMapID()
--			n1 = math.random(0,100)
--			if n1 < 30 then
--				AI:SummonMonsterByPos(30603,x,y)
--			end

	end