	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/10/08
	--		Author:???
	--		Class:	Monster-30510.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
		function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
			if nIndex == 0 then
				AI:SelfMurder()
			end
		
		end
		
		function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		
		a = AI:GetArray(1)
			if a == 0 then
				AI:Say("Hey, they let me go! Did Rietz send you?")
				AI:SetArray(1,1)
			end
		end
		
		function Event_ReadSeekPos(nAI)
    	local AI = GetMonsterAI(nAI)
    	--local Mapid = AI:GetMapID()
    	
    	--if nIndex == 1 then					    	
    	--????????
    	--AI:AddSeekPos( 475 , 223 , 194 )
    	--end
    	--if nIndex == 2 then	
    	--AI:AddSeekPos( 475 , 223 , 202 )
    	--AI:AddSeekPos( 475 , 223 , 211 )
    	AI:AddSeekPos( 537 , 110 , 133 )
    	--end
		end

		--?????????
		function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
			local AI = GetMonsterAI(nAI)
    
    	if (( PosX == 110 ) and ( PosY == 133)) then
        	AI:Say("I'm still on patrol. Gotta keep moving.")
        	AI:SetTimer(0,3000,1)
					AI:SetAIState( 7 )
        	
      end
		end