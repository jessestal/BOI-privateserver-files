	------------------------------------------
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2010/08/24
	--		Author:??
	--		AIName:monster-51901.lua
	--		AIID:?????
	--		?AI?????
	------------------------------------------
	
	--??id?
	require ".\\Script\\AI\\jiazufuben\\id"

	function Event_OnTimer(nAI,nIndex, nCount)
	    local AI = GetMonsterAI(nAI)
	    if nIndex == 0 then
		    local map_id = AI:GetMapID()
		    local wave = AI:GetEctypeVarShort( map_id, 0 )
				local posX_min = 69
				local posY_min = 53
				local num = monster_id[wave][2]
				local i = 0
				local lv = AI:GetLevel()
				while i < num do 
					posX = posX_min + AI:GetRand( 25 )
					posY = posY_min + AI:GetRand( 25 )
					local Field = AI:GetEctypeVarShort(map_id,10)
					if Field == 0 then
						AI:SummonLevelMonsterByPos(monster_id[wave][1], 78,lv ,posX , posY)
					else
						AI:CreateFieldMonster(monster_id[wave][1], 78, Field, 1, map_id, posX, posY, 0)
					end
					i = i + 1
				end
	    end
	end
	
	function Event_Thinking(nAI)
	    local AI = GetMonsterAI(nAI)
	    local map_id = AI:GetMapID()
	    
	    --??????
	    local only_one = AI:GetArray(1)
	    if only_one == 0 then
	    	AI:ScreenText( "First wave will appear in 10 sec.", 2 )
	    	AI:SetEctypeVarShort( map_id, 0, 1 )
	    	AI:SetEctypeVarShort( map_id, 2, 0 )
	    	AI:SetTimer( 0 , 10000 , 1 )
	    	AI:SetArray( 1, 1 )
	    end  
	    
	    --????
	    local wave = AI:GetEctypeVarShort( map_id, 0 )
	    
	    --??????????????
		local can_do = AI:GetEctypeVarShort( map_id, 2 )
		if can_do == 1 then
			local frame_level = AI:GetEctypeVarShort( map_id, 3 )
			local max_wave = 0
			if frame_level == 0 then
				max_wave = 11
			end
			if frame_level == 1 then
				max_wave = 21
			end
			if frame_level == 2 then
				max_wave = 21
			end
			if frame_level == 3 then
				max_wave = 31
			end
			if frame_level == 4 then
				max_wave = 31
			end
			if frame_level == 5 then
				max_wave = 41
			end
			if frame_level > 5 then
				max_wave = 41
			end
			wave = wave + 1
			if wave < max_wave then
				local notice = "Wave " .. wave .. " will appear in 10 sec."
				AI:ScreenText( notice, 2 )
		    	AI:SetEctypeVarShort( map_id, 2, 0 )
				AI:SetEctypeVarShort( map_id, 0, wave )
				AI:SetTimer( 0 , 10000 , 1 )
		    else
		    	local notice = "You are admirable. All monsters are cleared."
		    	AI:ScreenText( notice, 2 )
		    	AI:SetEctypeVarShort( map_id, 0, max_wave )
		    end
		end
		
	end 
		
	function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	    
	end
	
	function Event_ArriveSeekPos(nAI , MapID , PosX , PosY)
		local AI = GetMonsterAI(nAI)	
		
	end
	
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
			
	end