	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/07
	--		Author:???
	--		Class:	.Lua
	--		AIName:HD-shiluoyiji-Monster-55199.lua
	--		Remark:?????.?????2
	----------------------------------------------------
	
	
	function Event_OnTimer( nAI, nIndex, nCount)
		
		local AI = GetMonsterAI(nAI)
		if nIndex == 0 then
		-- 
			a = AI:GetArray(1)
			if a == 0 then
				AI:Say("Don't be so arrogant, you don't know the secrets of the jungle.")
				AI:SetArray(1,1)
			elseif a == 1 then
				AI:Say("Our power comes from the earth, and is easily refreshed.")
				AI:SetArray(1,2)
			elseif a == 2 then
		     	AI:Say("It was I who weakened the men of my tribe....")
				AI:SetArray(1,3)
			elseif a == 3 then
		     	AI:Say("The prophet of the doomsday has strengthened my resolve, you will never know how difficult this is.")
				AI:SetArray(1,5)
				AI:SetAIState(0)
		    end
		end
		if nIndex == 1 then
		-- 
			a = AI:GetArray(2)
			if a == 0 then
				AI:Say("I did, my lord!")
				AI:SetArray(2,1)
			elseif a == 1 then
				AI:Say("I came to ask you if the world is dying.")
				AI:SetArray(2,2)
			elseif a == 2 then
		     	AI:Say("The world is not stable anymore, though it will not be destroyed. I doubt your abilities.")
				AI:SetArray(2,3)
			elseif a == 3 then
		     	AI:Say("As expected, you are not the real Quetzalcoatl, who doesn't need rumors to maintain his prestige!")
				AI:SetArray(2,4)
		   	elseif a == 4 then
		   	   	AI:Say("Help me kill the false prophet. Everyone who blasphemed Quetzalcoatl must die, including me.")
				AI:SetArray(2,5)
				AI:SelfMurder()
		    end
		end
	end

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)

    end
		
	function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	    
	    AI:AddSeekPos(237,188,166) 
	    AI:AddSeekPos(237,188,160) 
	    AI:AddSeekPos(237,183,150)  --??
	    AI:AddSeekPos(237,165,142)  --??
	    AI:AddSeekPos(244,167,179)  --??1
	    AI:AddSeekPos(244,143,162)  --??2
	    AI:AddSeekPos(244,155,167)  --???
	   
	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
	    
	    if (( PosX == 188 ) and ( PosY == 166 )) then
			AI:Say("If this goes badly, I will have to kill myself!")
			AI:SetAIState(7)
			AI:SetTimer(0,5000,4)
	    elseif (( PosX == 188 ) and ( PosY == 160 )) then
			AI:Say("We are summoning Quetzalcoatl.")
		elseif (( PosX == 183 ) and ( PosY == 150 )) then
			AI:Say("There are two seals we must open, please hurry.")
			AI:ScreenText("The Jungle Defender is scared.", 2 )
		elseif (( PosX == 165 ) and ( PosY == 142 )) then
	  	    AI:Say("Here is the first seal.")
	  	    AI:SummonMonsterByPos( 55124 , 165 , 142 )
	  	    AI:ScreenText("The first seal is opened.", 2 )
		elseif (( PosX == 167 ) and ( PosY == 179 )) then
			AI:Say("Here is the second seal.")
	  	    AI:SummonMonsterByPos( 55124 , 167 , 179 )
	  	    AI:ScreenText("The second seal is opened.", 2 )
		elseif (( PosX == 155 ) and ( PosY == 167 )) then  --????????
			AI:SummonMonsterByPos( 55196 , 159 , 167 )
			AI:SetAIState(7)
			AI:SetTimer( 1 , 8000 , 5 )
		end
	    	
	end
	
	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
    	
	end
	