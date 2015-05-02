--??
function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
    if nIndex == 0 then
        AI:Say("So comfortable.") 
        mapid = AI:GetMapID()
		AI:SetEctypeVarShort( mapid, 39, 84 )
		x = AI:GetPosX()
		y = AI:GetPosY()
		AI:SummonMonsterByPos( 51596, x, y )
		AI:SummonMonsterByPos( 51570, x, y )
    end
    
    if nIndex == 1 then
        AI:Say("So comfortable.") 
        mapid = AI:GetMapID()
		AI:SetEctypeVarShort( mapid, 39, 84 )
		x = AI:GetPosX()
		y = AI:GetPosY()
		AI:SummonMonsterByPos( 51596, x+2, y+2 )
		AI:SummonMonsterByPos( 51570, x+2, y+2 )
		AI:SummonMonsterByPos( 51596, x-2, y-2 )
		AI:SummonMonsterByPos( 51570, x-2, y-2 )
	end
	
	if nIndex == 2 then
        AI:Say("Umh......") 
        mapid = AI:GetMapID()
		AI:SetEctypeVarShort( mapid, 39, 84 )
		x = AI:GetPosX()
		y = AI:GetPosY()
		AI:SummonMonsterByPos( 51596, x+3, y+3 )
		AI:SummonMonsterByPos( 51570, x+3, y+3 )
		AI:SummonMonsterByPos( 51596, x-3, y+3 )
		AI:SummonMonsterByPos( 51570, x-3, y+3 )
		AI:SummonMonsterByPos( 51596, x, y-2 )
		AI:SummonMonsterByPos( 51570, x, y-2 )
	end
	
	if nIndex == 3 then
        AI:Say("So full......") 
        mapid = AI:GetMapID()
		AI:SetEctypeVarShort( mapid, 39, 84 )
		x = AI:GetPosX()
		y = AI:GetPosY()
		AI:SummonMonsterByPos( 51596, x+2, y-2 )
		AI:SummonMonsterByPos( 51570, x+2, y-2 )
		AI:SummonMonsterByPos( 51596, x+2, y+2 )
		AI:SummonMonsterByPos( 51570, x+2, y+2 )
		AI:SummonMonsterByPos( 51596, x-2, y+2 )
		AI:SummonMonsterByPos( 51570, x-2, y+2 )
		AI:SummonMonsterByPos( 51596, x-2, y-2 )
		AI:SummonMonsterByPos( 51570, x-2, y-2 )
	end
	
	if nIndex == 4 then
        AI:Say("Nice......") 
        mapid = AI:GetMapID()
		AI:SetEctypeVarShort( mapid, 39, 84 )
		x = AI:GetPosX()
		y = AI:GetPosY()
		AI:SummonMonsterByPos( 51596, x, y )
		AI:SummonMonsterByPos( 51570, x, y )
		AI:SummonMonsterByPos( 51596, x+2, y-2 )
		AI:SummonMonsterByPos( 51570, x+2, y-2 )
		AI:SummonMonsterByPos( 51596, x+2, y+2 )
		AI:SummonMonsterByPos( 51570, x+2, y+2 )
		AI:SummonMonsterByPos( 51596, x-2, y+2 )
		AI:SummonMonsterByPos( 51570, x-2, y+2 )
		AI:SummonMonsterByPos( 51596, x-2, y-2 )
		AI:SummonMonsterByPos( 51570, x-2, y-2 )
	end
	
	if nIndex == 5 then
        AI:Exit()
	end
	
end

function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	a = AI:GetArray(1)
        if a == 0 then
        	AI:AddSkill(2018,1)
        	AI:UseSkill(2018,1)
        	AI:SetArray( 1 , 1 )
        end
end

function Event_ReadSeekPos(nAI)
    	local AI = GetMonsterAI(nAI)
    	
    	--????????
    	AI:AddSeekPos( 253 , 193 , 197 )
    	AI:AddSeekPos( 253 , 193 , 211 )
    	AI:AddSeekPos( 253 , 177 , 211 )
    	AI:AddSeekPos( 253 , 177 , 197 )	
      AI:AddSeekPos( 253 , 193 , 198 )
    	AI:AddSeekPos( 253 , 193 , 210 )
    	AI:AddSeekPos( 253 , 177 , 210 )
    	AI:AddSeekPos( 253 , 177 , 198 )	
      AI:AddSeekPos( 253 , 192 , 197 )
    	AI:AddSeekPos( 253 , 192 , 211 )
    	AI:AddSeekPos( 253 , 178 , 211 )
    	AI:AddSeekPos( 253 , 178 , 197 )
end

--?????????
function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
	local AI = GetMonsterAI(nAI)
    
    	if (( PosX == 193 ) and ( PosY == 197 )) then
        	AI:Say("I am very hungry.")
        	AI:SummonMonsterByPos( 51569 , 193 , 211 )
    	end
    	if (( PosX == 193 ) and ( PosY == 211 )) then
        	AI:Say("Such a big carrot.") 
        	AI:SetTimer(0,200,1)
        	AI:SummonMonsterByPos( 51569 , 177 , 211 )
    	end
    	if (( PosX == 177 ) and ( PosY == 211 )) then
    		AI:Say("I am still hungry.")
        	AI:SummonMonsterByPos( 51569 , 177 , 197 )
    	end
    	if (( PosX == 177 ) and ( PosY == 197 )) then
        	AI:Say("Though I like eating, don't take me as pig.")
        	AI:SetTimer(1,200,1)
        	AI:SummonMonsterByPos( 51569 , 193 , 198 )
    	end
    	
        if (( PosX == 193 ) and ( PosY == 198 )) then
        	AI:SummonMonsterByPos( 51569 , 193 , 210 )
    	end
    	if (( PosX == 193 ) and ( PosY == 210 )) then
    		AI:SetTimer(2,200,1)
        	AI:SummonMonsterByPos( 51569 , 177 , 210 )
    	end
    	if (( PosX == 177 ) and ( PosY == 210 )) then
        	AI:SummonMonsterByPos( 51569 , 177 , 198 )
    	end
    	if (( PosX == 177 ) and ( PosY == 198 )) then
    		AI:SetTimer(3,200,1)
        	AI:SummonMonsterByPos( 51569 , 192 , 197 )
    	end
    	
    	if (( PosX == 192 ) and ( PosY == 197 )) then
        	AI:SummonMonsterByPos( 51569 , 192 , 211 )
    	end
    	if (( PosX == 192 ) and ( PosY == 211 )) then
    		AI:SetTimer(4,200,1)
        	AI:SummonMonsterByPos( 51569 , 178 , 211 )
    	end
    	if (( PosX == 178 ) and ( PosY == 211 )) then
        	AI:SummonMonsterByPos( 51569 , 178 , 197 )
    	end
    	if (( PosX == 178 ) and ( PosY == 197 )) then
    		mapid = AI:GetMapID()
			AI:SetEctypeVarShort( mapid, 23, 0 )
    		AI:ScreenText( "Gluttony ate too much and died.", 2 )
    		AI:PlayAction( "dead", 2000, 0 )
    		x = AI:GetPosX()
			y = AI:GetPosY()
			AI:SummonMonsterByPos( 51586, x, y )
	    	AI:SetTimer(5,1500,1)
    	end
end

function Event_OnDead(nAI)
	local AI = GetMonsterAI(nAI)
end