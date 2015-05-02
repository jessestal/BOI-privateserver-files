	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/7/25
	--		Author:???
	--		Class:	.lua
	--		AIName:Monster-30731.lua
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      
      if nIndex == 0 then
      	mapid = AI:GetMapID()
      	di1 = AI:GetEctypeVarShort(mapid,8)
      	while di1 < 60 do
      		di1 = di1 + 1
	      	x = math.random(135,160)
	      	y = math.random(215,220)
	      	AI:SummonMonsterByPos(30730,x,y)
	      	AI:SetEctypeVarShort(mapid,8,di1)
	      end
      end
      
      if nIndex == 1 then
      	AI:SelfMurder()
      end
      
      if nIndex == 1 then
      	AI:ScreenText("Destroy the invaders before they can reach the Pillar of the World!",2)
      end
      
--      if nIndex == 1 then
--      	AI:ScreenText("GUID:02979000001",2)
--      end
      
--      if nIndex == 2 then
--      	AI:ScreenText("GUID:02979000002",2)
--      end
      
--      if nIndex == 3 then
--      	AI:SummonMonsterByPos(30713,150,216)
--      	AI:SummonMonsterByPos(30710,145,213)
--      	AI:SummonMonsterByPos(30711,154,215)
--      	AI:SummonMonsterByPos(30712,152,219)
--      end
      
--      if nIndex == 4 then
--      	AI:SummonMonsterByPos(30725,150,223)
--      end
      
      

      
  end
  
  function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
		a = AI:GetArray(1)
     if a == 0 then
	     	AI:SetTimer(2,3000,1)
	     	AI:PlayAction("skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini" , 0 , 1)
	     	AI:SetTimer(0,1000,1)
	     	AI:SetTimer(1,4000,1)
--	     	AI:SetTimer(1,15000,1)
--	     	AI:SetTimer(2,30000,1)
--	     	AI:SetTimer(3,50000,1)
--	     	AI:SetTimer(4,70000,1)
	     	AI:SetArray(1,1)
	   end
	     	
	

	end 
	
	function Event_ReadSeekPos(nAI)
    local AI = GetMonsterAI(nAI)
        

	end
	 
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		
		
		
	end