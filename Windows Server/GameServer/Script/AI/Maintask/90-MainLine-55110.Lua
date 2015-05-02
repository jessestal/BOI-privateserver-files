	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/07
	--		Author:???
	--		Class:	.Lua
	--		AIName:90-MainLine-55110.Lua
	--		Remark:
	----------------------------------------------------
	
	
	function Event_OnTimer( nAI, nIndex, nCount)
		
		local AI = GetMonsterAI(nAI)
		if nIndex == 0 then
		-- 
			AI:SetAIState(0) 
		end
		if nIndex == 1 then
		-- 
			
	        AI:ScreenText("A great shadow looms from the sky!" , 1 )
	        AI:Say("Is that Horus? ")
	        AI:SetAIState(0) 
		end
		if nIndex == 2 then
		-- 
			a = AI:GetArray(1)
			if a == 0 then
				AI:Say("I have a dream! ")
				AI:SetArray(1,1)
			elseif a == 1 then
				AI:Say("I want to fly, like an eagle! ")
				AI:SetArray(1,2)
		  elseif a == 2 then
		   	    AI:Say("Keep going. I think I might see Horus today! ")
		        AI:SetAIState(0)
		   	    AI:SetArray(1,5)
		    end
		end
		if nIndex == 3 then
		-- 
	        AI:ScreenText("A sudden wind blows. " , 2 )
	        AI:SetAIState(0) 
		end
		if nIndex == 4 then
		-- 
			AI:SelfMurder()
		end
	end

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)

    end
		
	function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	    
	    AI:AddSeekPos(245,225,113)
	    AI:AddSeekPos(245,254,142)
	    AI:AddSeekPos(245,252,167)
	    AI:AddSeekPos(245,249,188)
	    AI:AddSeekPos(245,246,188)
	    AI:AddSeekPos(245,246,194)
	    AI:AddSeekPos(242,256,194)
	    
	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
	    
	    if (( PosX == 225 ) and ( PosY == 113 )) then
			AI:Say("We are looking for gods! Let's go! ")
	        AI:SetAIState(7)
	        AI:SetTimer(0,5000,1)
	        AI:SetTimer(4,900000,1)
	    elseif (( PosX == 254 ) and ( PosY == 142 )) then
	    	AI:SetAIState(7)
	        AI:SetTimer(1,5000,1)
	        AI:Say("I am thirsty. The desert is extremely dry! ")
		elseif (( PosX == 249 ) and ( PosY == 188 )) then
	    	AI:SetAIState(7)
	        AI:SetTimer(2,5000,5)
	        AI:SetDir(90)
		elseif (( PosX == 246 ) and ( PosY == 194 )) then
	    	AI:SetAIState(7)
	        AI:SetTimer(3,5000,1)
	        AI:Say("Something is approaching! ")
		elseif (( PosX == 256 ) and ( PosY == 194 )) then
	        AI:Say("I saw the real Horus! ")
		end
	    	
	end
	
	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
	end
	