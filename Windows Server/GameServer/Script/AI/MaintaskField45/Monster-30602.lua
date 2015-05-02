	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/7/25
	--		Author:???
	--		Class:	.lua
	--		AIName:Monster-30602.lua
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      
--      if nIndex == 0 then
--      	n = math.random(1,3)
--      	if n == 1 then
--      		AI:Say("GUID:02957000000")
--      	end
--      	if n == 2 then
--      		AI:Say("GUID:02957000001")
--      	end
--      	if n == 3	then
--      		AI:Say("GUID:02957000002")
--      	end
--      end	
      
  end
  
  function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
		a = AI:GetArray(1)
			if a == 0 then
--				AI:SetTimer(1,1000,1)
				AI:SetArray(1,1)
			end


	end 
	
	function Event_ReadSeekPos(nAI)
    local AI = GetMonsterAI(nAI)
        

	end
	 
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
			
			x = AI:GetPosX()
			y = AI:GetPosY()
			mapid = AI:GetMapID()
			n1 = math.random(0,100)
			if n1 < 30 then
				AI:SummonMonsterByPos(30603,x,y)
			end

	end