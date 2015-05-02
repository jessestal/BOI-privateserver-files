	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/07
	--		Author:???
	--		Class:	.Lua
	--		AIName:Main-90-Yingshen-60056.lua
	--		Backup:90???????
	----------------------------------------------------
	
	
	function Event_OnTimer( nAI, nIndex, nCount)
		
		local AI = GetMonsterAI(nAI)
		if nIndex == 0 then
		-- 
			AI:Say("Thank you for helping me get here. Please, let me look around. ") 
			AI:SetTimer(1,2000,1)
		end
		if nIndex == 1 then
		--
			AI:Say("Set has been sleeping all this time. Why did he leave? ")
			AI:SetTimer(2,5000,1)
		end
		if nIndex == 2 then
		--
			AI:PlayEffect("common\Yanhua\tx_leiyu\tx_leiyu.ini")
			AI:ScreenText("Horus is using magic. ")
			AI:SetTimer(3,3000,1)
		end
		if nIndex == 3 then
		--
			AI:Say("You finally appeared! ")
			AI:SummonMonsterByPos ( 60057 , 245 , 212 )
			
		end
     	if nIndex == 4 then
		--
			AI:Say("I am here. Set! ")
			AI:SetAIState(0)
		end
	end

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		
		a = AI:GetArray(1)
		if a == 0 then
			AI:SetTimer(0,3000,1)
			AI:SetArray(1,1)
		end
		
    end
		
	function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	    	 
	    AI:AddSeekPos( 243 , 245 , 246 )
	    AI:AddSeekPos( 243 , 245 , 234 )
	    AI:AddSeekPos( 243 , 245 , 238 )
	    AI:AddSeekPos( 243 , 245 , 225 )
	end
	
	//?????????
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
	    
	    if (( PosX == 245 ) and ( PosY == 246 )) then
			AI:Say("I'm waiting for you! ")
	        AI:SetAIState(7)
	        AI:SetTimer(0,60000,1)
	    end
	    if (( PosX == 245 ) and ( PosY == 234 )) then
	    	AI:SetAIState(7)
	        AI:Say("Alright, my children. You can come out now! ")
	        AI:SummonMonsterByPos( 60055 , 247 , 232 )
	        AI:SummonMonsterByPos( 60055 , 245 , 232 )
	        AI:SummonMonsterByPos( 60055 , 243 , 232 )
	        AI:SummonMonsterByPos( 60055 , 243 , 227 )
	        AI:SummonMonsterByPos( 60055 , 245 , 227 )
	        AI:SummonMonsterByPos( 60055 , 247 , 227 )
	        AI:SetTimer(4,60000,1)
		end
		if (( PosX == 245 ) and ( PosY == 238 )) then
	    end
		if (( PosX == 245 ) and ( PosY == 225 )) then
	       	AI:Exit()
	    end
	    	
	end
	