	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/7/25
	--		Author:???
	--		Class:	.lua
	--		AIName:Monster-53008.lua
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      
      if nIndex == 0 then
        --?? 
         AI:SelfMurder()  
      end
      
  end
  
  function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	  a = AI:GetArray(4)
	  if a == 0 then
			AI:Say("I'm the real one!")
			AI:SetTimer(0,8000,1)
			AI:SetArray(4,1)
		end
	end 
	
	function Event_ReadSeekPos(nAI)
    local AI = GetMonsterAI(nAI)
        
    mapid = AI:GetMapID()
    fang = AI:GetEctypeVarShort(mapid,1)
    if fang == 4 then
	    x1 = math.random(207,232)
	    y1 = math.random(72,93)
	    x2 = math.random(207,232)
	    y2 = math.random(72,93)
	    AI:AddSeekPos( mapid , x1 , y1 )
	    AI:AddSeekPos( mapid , x2 , y2 )
	    x3 = math.random(207,232)
	    y3 = math.random(72,93)
	    AI:AddSeekPos( mapid , x3 , y3 )
	    x4 = math.random(207,232)
	    y4 = math.random(72,93)
	    AI:AddSeekPos( mapid , x4 , y4 )
	    x5 = math.random(207,232)
	    y5 = math.random(72,93)
	    AI:AddSeekPos( mapid , x5 , y5 )
	  end
	  
	  if fang == 8 then
	  	x1 = math.random(207,232)
	  	y1 = math.random(117,138)
	  	x2 = math.random(207,232)
	  	y2 = math.random(117,138)
	  	AI:AddSeekPos( mapid , x1 , y1 )
	    AI:AddSeekPos( mapid , x2 , y2 )
	    x3 = math.random(207,232)
	  	y3 = math.random(117,138)
	  	AI:AddSeekPos( mapid , x3 , y3 )
	  	x4 = math.random(207,232)
	  	y4 = math.random(117,138)
	  	AI:AddSeekPos( mapid , x4 , y4 )
	  	x5 = math.random(207,232)
	  	y5 = math.random(117,138)
	  	AI:AddSeekPos( mapid , x5 , y5 )
	  end
	  
	  if fang == 12 then
	  	x1 = math.random(207,232)
	  	y1 = math.random(163,183)
	  	x2 = math.random(207,232)
	  	y2 = math.random(163,183)
	  	AI:AddSeekPos( mapid , x1 , y1 )
	    AI:AddSeekPos( mapid , x2 , y2 )
	    x3 = math.random(207,232)
	  	y3 = math.random(163,183)
	  	AI:AddSeekPos( mapid , x3 , y3 )
	  	x4 = math.random(207,232)
	  	y4 = math.random(163,183)
	  	AI:AddSeekPos( mapid , x4 , y4 )
	  	x5 = math.random(207,232)
	  	y5 = math.random(163,183)
	  	AI:AddSeekPos( mapid , x5 , y5 )
	  end
	 end
	 
	 function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		mapid = AI:GetMapID()
		x = AI:GetPosX()
		y = AI:GetPosY()
		AI:SummonMonsterByPos( 53014, x , y)
		
	 end