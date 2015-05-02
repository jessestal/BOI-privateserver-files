	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2009/12/27
	--		Author:???
	--		Class:	.Lua
	--		AIName:ShengyiAngel-Monster-55176.lua
	--		Remark:????
	----------------------------------------------------
	
	
	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		if nIndex == 0 then
			a = AI:GetArray(2)
			if a == 0 then
				AI:ScreenText("Holy Angel: Are you ready?",2)
				AI:PlayAction( "hurt" , 20 ,0 )
				AI:SetArray(2,1)
			elseif a == 1 then
				AI:ScreenText("Holy Angel: Let's hunt treasure!",2)
				AI:PlayAction( "hurt" , 20 ,0 )
				AI:SetAIState(0)
				AI:SetArray(2,2)
				AI:SetArray(5,1)
			end
		end
		
		--??????
		if nIndex == 1 then
		--	
			AI:ScreenText("Holy Angel: Angel Chest.",2)
			AI:PlayAction( "hurt" , 20 ,0 )
			posx = AI:GetPosX()
			posy = AI:GetPosY()
			ranx = math.random( posx-9 , posx+9 )
      rany = math.random( posy-9 , posy+9 )
			
			AI:SummonMonsterByPos( 55174 , ranx , rany )
			
			ranx = math.random( posx-9 , posx+9 )
      rany = math.random( posy-9 , posy+9 )
			AI:SummonMonsterByPos( 55174 , ranx , rany )
			
			ranx = math.random( posx-9 , posx+9 )
      rany = math.random( posy-9 , posy+9 )
			AI:SummonMonsterByPos( 55174 , ranx , rany )
			
			ranx = math.random( posx-9 , posx+9 )
      rany = math.random( posy-9 , posy+9 )
			AI:SummonMonsterByPos( 55174 , ranx , rany )
			
			ranx = math.random( posx-9 , posx+9 )
      rany = math.random( posy-9 , posy+9 )
			AI:SummonMonsterByPos( 55174 , ranx , rany )
			
			ranx = math.random( posx-9 , posx+9 )
      rany = math.random( posy-9 , posy+9 )
			AI:SummonMonsterByPos( 55174 , ranx , rany )
			
			ranx = math.random( posx-9 , posx+9 )
      rany = math.random( posy-9 , posy+9 )
			AI:SummonMonsterByPos( 55174 , ranx , rany )
			
			ranx = math.random( posx-9 , posx+9 )
      rany = math.random( posy-9 , posy+9 )
			AI:SummonMonsterByPos( 55174 , ranx , rany )
			
			ranx = math.random( posx-9 , posx+9 )
      rany = math.random( posy-9 , posy+9 )
			AI:SummonMonsterByPos( 55174 , ranx , rany )
			
			ranx = math.random( posx-9 , posx+9 )
      rany = math.random( posy-9 , posy+9 )
			AI:SummonMonsterByPos( 55174 , ranx , rany )
			
			ranx = math.random( posx-9 , posx+9 )
      rany = math.random( posy-9 , posy+9 )
			AI:SummonMonsterByPos( 55174 , ranx , rany )
			
			ranx = math.random( posx-9 , posx+9 )
      rany = math.random( posy-9 , posy+9 )
			AI:SummonMonsterByPos( 55174 , ranx , rany )
			
			ranx = math.random( posx-9 , posx+9 )
      rany = math.random( posy-9 , posy+9 )
			AI:SummonMonsterByPos( 55174 , ranx , rany )
			
			ranx = math.random( posx-9 , posx+9 )
      rany = math.random( posy-9 , posy+9 )
			AI:SummonMonsterByPos( 55174 , ranx , rany )
			
			ranx = math.random( posx-9 , posx+9 )
      rany = math.random( posy-9 , posy+9 )
			AI:SummonMonsterByPos( 55174 , ranx , rany )
			
			ranx = math.random( posx-9 , posx+9 )
      rany = math.random( posy-9 , posy+9 )
			AI:SummonMonsterByPos( 55174 , ranx , rany )
			
			ranx = math.random( posx-9 , posx+9 )
      rany = math.random( posy-9 , posy+9 )
			AI:SummonMonsterByPos( 55174 , ranx , rany )
			
			ranx = math.random( posx-9 , posx+9 )
      rany = math.random( posy-9 , posy+9 )
			AI:SummonMonsterByPos( 55174 , ranx , rany )
			
			ranx = math.random( posx-9 , posx+9 )
      rany = math.random( posy-9 , posy+9 )
			AI:SummonMonsterByPos( 55174 , ranx , rany )
			
			ranx = math.random( posx-9 , posx+9 )
      rany = math.random( posy-9 , posy+9 )
			AI:SummonMonsterByPos( 55174 , ranx , rany )
			
			ranx = math.random( posx-9 , posx+9 )
      rany = math.random( posy-9 , posy+9 )
			AI:SummonMonsterByPos( 55174 , ranx , rany )
			
			ranx = math.random( posx-9 , posx+9 )
      rany = math.random( posy-9 , posy+9 )
			AI:SummonMonsterByPos( 55174 , ranx , rany )
			
			ranx = math.random( posx-9 , posx+9 )
      rany = math.random( posy-9 , posy+9 )
			AI:SummonMonsterByPos( 55174 , ranx , rany )
			
			ranx = math.random( posx-9 , posx+9 )
      rany = math.random( posy-9 , posy+9 )
			AI:SummonMonsterByPos( 55174 , ranx , rany )
			
			ranx = math.random( posx-9 , posx+9 )
      rany = math.random( posy-9 , posy+9 )
			AI:SummonMonsterByPos( 55174 , ranx , rany )
			
			
			ranx = math.random( posx-9 , posx+9 )
      rany = math.random( posy-9 , posy+9 )
			AI:SummonMonsterByPos( 55175 , ranx , rany )
			
		end
	end


	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		
		a = AI:GetArray(5)
		if a == 1 then
			AI:SetTimer(1,30000,20)
			AI:SetArray(5,2)
		end
	end
		
	function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	    
	    AI:AddSeekPos(2,150,175)
	    AI:AddSeekPos(2,150,189)
	    AI:AddSeekPos(2,137,197)
	    AI:AddSeekPos(2,110,196)
	    AI:AddSeekPos(2,110,172)
	    AI:AddSeekPos(2,87,170)
	    AI:AddSeekPos(2,87,185)
	    AI:AddSeekPos(2,104,196)
	    AI:AddSeekPos(2,104,232)
	    AI:AddSeekPos(2,117,232)
	    AI:AddSeekPos(2,117,202)
	    AI:AddSeekPos(2,150,202)
	    AI:AddSeekPos(2,150,250)
    	AI:AddSeekPos(2,154,202)
	 	  AI:AddSeekPos(2,195,193)
	 	  AI:AddSeekPos(2,151,186)
  	  AI:AddSeekPos(2,150,194)
	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		if (( PosX == 150 ) and ( PosY == 175 )) then
			AI:ScreenText("Holy Angel: Hello everyone, the event to look for Angel Chest is starting again.",2)
			AI:SetAIState(7)
			AI:SetTimer(0,5000,3)
		end
	end
	
	
	
	