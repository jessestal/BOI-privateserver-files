	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/07
	--		Author:???
	--		Class:	.Lua
	--		AIName:90-Milya-shiwei-60065.lua
	--		Backup:90??????
	----------------------------------------------------
	
	
	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		if nIndex == 0 then
		--
			a = AI:GetArray(1)
			if a == 0 then
				AI:Say("Why did you wake me up? ")
				AI:SetArray(1,1)
			elseif a == 1 then
				AI:Say("Wraith Tome is so powerful. ")
				AI:SetArray(1,2)
			elseif a == 2 then
				AI:Say("I have followed the Arch Priestess for a very long time now. Nobody knows her better than I do. ")
				AI:SetArray(1,3)
			elseif a == 3 then
			    AI:Say("Though it was her mistake which brought an endless nightmare upon us, she is still the one I respect the most. ")
				AI:SetArray(1,4)
			elseif a == 4 then
			   	AI:Say("Let's get going! ")
			    AI:SetAIState(0)
			    AI:SetArray(1,5)
			end
		end
		if nIndex == 1 then
		-- 
			AI:SummonMonsterByPos( 55078 , 179 , 113 )
	        AI:SummonMonsterByPos( 55078 , 178 , 114 )
	        AI:SummonMonsterByPos( 55078 , 177 , 114 )
	        AI:SummonMonsterByPos( 55078 , 175 , 113 )
	        AI:SummonMonsterByPos( 55078 , 174 , 110 )
	        AI:SummonMonsterByPos( 55078 , 176 , 110 )
	        AI:SummonMonsterByPos( 55078 , 177 , 109 )
	        AI:SummonMonsterByPos( 55078 , 178 , 110 )
		    AI:ScreenText("Monsters have appeared in the tomb! ",2)
		    AI:SetAIState(0) 
		end
		if nIndex == 2 then
		-- 
		    AI:SummonMonsterByPos( 55078 , 193 , 92 )
		    AI:SummonMonsterByPos( 55078 , 192 , 91 )
		    AI:SummonMonsterByPos( 55078 , 192 , 89 )
		    AI:SummonMonsterByPos( 55078 , 193 , 87 )
		    AI:SummonMonsterByPos( 55078 , 194 , 87 )
		    AI:SummonMonsterByPos( 55078 , 195 , 88 )
		    AI:SummonMonsterByPos( 55078 , 195 , 90 )
		    AI:SummonMonsterByPos( 55078 , 197 , 92 )
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
	    
		AI:AddSeekPos(242,178,132)
	    AI:AddSeekPos(242,178,112)
	    AI:AddSeekPos(242,168,105)
	    AI:AddSeekPos(242,170,100)
	    AI:AddSeekPos(242,192,101)
	    AI:AddSeekPos(242,193,90)
	    AI:AddSeekPos(242,209,88)
	    AI:AddSeekPos(242,214,78)
	   
	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
	    
	    if (( PosX == 178 ) and ( PosY == 132 )) then
	        AI:SetAIState(7)
	        AI:SetTimer(0,6000,5)
	        AI:SetTimer(4,900000,1)
	    elseif (( PosX == 178 ) and ( PosY == 112 )) then
	    	AI:SetAIState(7)
	        AI:SetTimer(1,5000,1)
	        AI:Say("Wraith Tome guards? Do they think my long slumber has weakened me? ")
		elseif (( PosX == 193 ) and ( PosY == 90 )) then
	    	AI:SetAIState(7)
	        AI:SetTimer(2,5000,1)
	        AI:Say("They have returned! ")
		elseif (( PosX == 214 ) and ( PosY == 78 )) then
	    	AI:Say("Long time no see. I never expected that I would be working with you to help the Arch Priestess.")
	    	AI:AddNPC( 388 )
	        AI:Exit()
		end
	    	
	end
	
	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
    	AI:AddNPC( 385 )
	end
	