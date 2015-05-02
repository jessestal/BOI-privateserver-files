	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/07
	--		Author:???
	--		Class:	.Lua
	--		AIName:Swb-Mjmy-51505.lua
	--		Remark:????A 96.168
	----------------------------------------------------
	
	
	function Event_OnTimer( nAI, nIndex, nCount)
		
		local AI = GetMonsterAI(nAI)
		if nIndex == 0 then
		-- 
			mapid = AI:GetMapID()
			road = AI:GetEctypeVarShort( mapid , 22 )
			if road == 2 then
				AI:SetAIState(0)
			end
		end
		if nIndex == 1 then
		-- 
			
		end
	end

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
			a = AI:GetArray(1)
			if a == 0 then
				AI:ScreenText("Great energy gathers slowly in the center of the hall.",2)
				AI:SetArray(1,1)
			end
    end
		
	function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	    
	    AI:AddSeekPos(254,122,212)
	    AI:AddSeekPos(254,122,186)
	    
	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		
		if (( PosX == 122 ) and ( PosY == 212 )) then
			AI:SetAIState(7)
			AI:ScreenText("Energy starts to rush the closed gate.",2)
			mapid = AI:GetMapID()
			road = AI:GetEctypeVarShort( mapid , 22 )
			AI:SetEctypeVarShort( mapid , 22 , road + 1 )
			AI:SetTimer(0,500,65535)
		elseif (( PosX == 122 ) and ( PosY == 186 )) then
			AI:OpenMapMask(2)
			AI:ScreenText("Gate is activated.",2)
			AI:SelfMurder()
		end
	end
	
	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
    	
	end
	