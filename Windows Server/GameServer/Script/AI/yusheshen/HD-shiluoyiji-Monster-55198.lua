	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/07
	--		Author:???
	--		Class:	.Lua
	--		AIName:HD-shiluoyiji-Monster-55198.lua
	--		Remark:?????.?????1
	----------------------------------------------------
	
	
	function Event_OnTimer( nAI, nIndex, nCount)
		
		local AI = GetMonsterAI(nAI)
		if nIndex == 0 then
		-- 
			a = AI:GetArray(1)
			if a == 0 then
				AI:Say("You know the Maya? ")
				AI:SetArray(1,1)
			elseif a == 1 then
				AI:Say("Our world is in the 5th age of the Mayan sun.")
				AI:SetArray(1,2)
			elseif a == 2 then
		     	AI:Say("Every age of the sun ends in ruin.")
				AI:SetArray(1,3)
			elseif a == 3 then
		     	AI:Say("The first was the destruction by flood. The second was the destruction by wind.")
				AI:SetArray(1,4)
			elseif a == 4 then
		   	   	AI:Say("The third was by fire, and the fourth by the fiery rains that burned the earth.")
				AI:SetArray(1,5)
			elseif a == 5 then
		   	   	AI:Say("Let's go and talk! ")
				AI:SetArray(1,6)
				AI:SetAIState(0)
		    end
		end
		if nIndex == 1 then
		-- 
			a = AI:GetArray(2)
			if a == 0 then
				AI:Say("Now, I have started to doubt my belief.")
				AI:SetArray(2,1)
			elseif a == 1 then
				AI:Say("I believe in you, and I would like you to ask Quetzalcoatl what the truth is.")
				AI:SetArray(2,2)
			elseif a == 2 then
		     	AI:Say("Will the world end?")
				AI:SetArray(2,3)
			elseif a == 3 then
		     	AI:Say("Be careful. My tribesmen are guarding Quetzalcoatl. I don't want anyone to die.")
				AI:SetArray(2,4)
		   	elseif a == 4 then
		   	   	AI:Say("So, just defeat all of Quetzalcoatl's guards first, then come to me.")
				AI:SetArray(2,5)
			elseif a == 5 then
				AI:SetArray(2,6)
				AI:AddNPC(487)
				AI:Exit()
		    end
		end
	end

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)

    end
		
	function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	    
	    AI:AddSeekPos(237,166,143) 
	    AI:AddSeekPos(237,166,149) 
	    AI:AddSeekPos(237,173,150) 
	    AI:AddSeekPos(237,180,150) 
	    AI:AddSeekPos(237,186,152) 
	    AI:AddSeekPos(237,188,159)
	    AI:AddSeekPos(244,188,166)
	   
	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
	    
	    if (( PosX == 166 ) and ( PosY == 143 )) then
			AI:Say("Ever heard about Maya's prophet?")
			AI:SetAIState(7)
			AI:SetTimer(0,4000,6)
	    elseif (( PosX == 166 ) and ( PosY == 149 )) then
			AI:Say("The last of the Maya foresaw a catastrophe that would be the end of the world. ")
		elseif (( PosX == 173 ) and ( PosY == 150 )) then
			AI:Say("That is to say, at the end of the fifth doomsday, the sun will disappear. The creatures on the earth will die. ")
			AI:ScreenText("The Jungle Defender continues talking.", 2 )
		elseif (( PosX == 180 ) and ( PosY == 150 )) then
			AI:Say("The fifth doomsday is in 2012.")
		elseif (( PosX == 186 ) and ( PosY == 152 )) then
	  	    AI:Say("The day is December 22nd. ")
	  	    AI:ScreenText("The Jungle Defender looks at you helplessly.", 2 )
		elseif (( PosX == 188 ) and ( PosY == 159 )) then
			AI:Say("Are you frightened? All this was told to us by Quetzalcoatl, our god. That's how we converted.")
		elseif (( PosX == 188 ) and ( PosY == 166 )) then
			AI:Say("Until now, I was the Jungle Defender. I led my tribe through the wilds....")
			AI:ScreenText("The Jungle Defender looks at you soberly.", 2 )
	    	AI:SetAIState(7)
			AI:SetTimer(1,4000,6)
			AI:SetDir( 180 )
		end
	    	
	end
	
	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
    	
	end
	