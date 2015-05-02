	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/07
	--		Author:???
	--		Class:	.Lua
	--		AIName:90-Milya-shiwei-60064.lua
	--		Remark:90??????
	----------------------------------------------------
	
	
	function Event_OnTimer( nAI, nIndex, nCount)
		
		local AI = GetMonsterAI(nAI)
		if nIndex == 0 then
		-- 
			AI:SetAIState(0) 
		end
		if nIndex == 1 then
		-- 
			AI:SummonMonsterByPos( 55077 , 240 , 115 )
			AI:SummonMonsterByPos( 55077 , 240 , 113 )
	        AI:SummonMonsterByPos( 55077 , 238 , 112 )
	        AI:SummonMonsterByPos( 55077 , 240 , 116 )
	        AI:SummonMonsterByPos( 55077 , 238 , 118 )
	        AI:SummonMonsterByPos( 55077 , 236 , 117 )
	        AI:SummonMonsterByPos( 55077 , 236 , 113 )
	        AI:SummonMonsterByPos( 55077 , 236 , 112 )
	        AI:ScreenText("Monsters have appeared in the tomb! ",2)
	        AI:Say("Darkness cannot remain hidden in the presence of light! ")
	        AI:SetAIState(0) 
		end
		if nIndex == 2 then
		-- 
			a = AI:GetArray(1)
			if a == 0 then
				AI:Say("What? Why is it closed? We must somehow find a way through.")
				AI:SetArray(1,1)
			elseif a == 1 then
				AI:Say("We were misled. This once allowed passage to the outside world but now an unknown force has disabled it permanently.")
				AI:SetArray(1,2)
			elseif a == 2 then
				AI:Say("She is the greatest priestess of our tribe, dead or alive. ")
				AI:SetArray(1,3)
			elseif a == 3 then
		        AI:Say("Let's go back. I think we will encounter trouble on the road. Now I'm worried about the assault.")
				AI:SetArray(1,4)
		   	elseif a == 4 then
		   	    AI:Say("No time to waste!")
		        AI:SetAIState(0)
		   	    AI:SetArray(1,5)
		    end
		end
		if nIndex == 3 then
		-- 
			AI:SummonMonsterByPos( 55077 , 234 , 89 )
	        AI:SummonMonsterByPos( 55077 , 234 , 94 )
	        AI:SummonMonsterByPos( 55077 , 234 , 92 )
	        AI:SummonMonsterByPos( 55077 , 231 , 90 )
	        AI:SummonMonsterByPos( 55077 , 232 , 88 )
	        AI:SummonMonsterByPos( 55077 , 233 , 87 )
	        AI:SummonMonsterByPos( 55077 , 229 , 90 )
	        AI:SummonMonsterByPos( 55077 , 229 , 92 )
	        AI:ScreenText("Monsters have appeared in the tomb! ",2)
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
	    
	    AI:AddSeekPos(242,248,126)
	    AI:AddSeekPos(242,239,123)
	    AI:AddSeekPos(242,238,115)
	    AI:AddSeekPos(242,230,113)
	    AI:AddSeekPos(242,230,102)
	    AI:AddSeekPos(242,244,101)
	    AI:AddSeekPos(242,248,109)
	    AI:AddSeekPos(242,255,110)
	    AI:AddSeekPos(242,255,118) 
	    AI:AddSeekPos(242,254,110)
	    AI:AddSeekPos(242,247,108)
	    AI:AddSeekPos(242,245,102)
	    AI:AddSeekPos(242,235,101)
	    AI:AddSeekPos(242,234,90)
	    AI:AddSeekPos(242,220,90)
	    AI:AddSeekPos(242,213,78)
	   
	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
	    
	    if (( PosX == 248 ) and ( PosY == 126 )) then
			AI:Say("Follow me, there will be danger. ")
	        AI:SetAIState(7)
	        AI:SetTimer(0,5000,1)
	        AI:SetTimer(4,900000,1)
	    end
	    if (( PosX == 238 ) and ( PosY == 115 )) then
	    	AI:SetAIState(7)
	        AI:SetTimer(1,5000,1)
	        AI:Say("Stop! I feel it is unsafe. ")
	        AI:ScreenText("Milia's guards are using magic. ",2)
	        AI:PlayEffect("skill\\Knight\\chaofeng\\fire\\tx_knight_chaofeng_fire.ini")
		end
		if (( PosX == 255 ) and ( PosY == 118 )) then
	    	AI:SetAIState(7)
	        AI:SetTimer(2,6000,5)
	        AI:SetDir(270)
		end
	    if (( PosX == 234 ) and ( PosY == 90 )) then
	    	AI:SetAIState(7)
	        AI:SetTimer(3,5000,1)
	        AI:Say("Something is approaching... Be careful...")
		end
	    if (( PosX == 213 ) and ( PosY == 78 )) then
	        AI:Say("I cannot open this gate myself. I will need the help of someone who is as strong as I am.")
	    	AI:AddNPC( 384 )
	        AI:Exit()
		end
	    	
	end
	
	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
    	AI:AddNPC( 383 )
	end
	