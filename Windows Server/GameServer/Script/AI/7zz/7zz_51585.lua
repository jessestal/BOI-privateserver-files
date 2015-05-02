--???? 

function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        AI:ScreenText( "Lust is look for something.", 2 )
        AI:SetTimer(1,4000,1)
    end
    if nIndex == 1 then
        AI:Say("Such youth! Such passion! Join us to experience pleasure you could never feel in the human world.")
        AI:SetTimer(2,3000,1)
    end
    if nIndex == 2 then
    	AI:ChangeFaction(4)
        mapid = AI:GetMapID()
        x = AI:GetPosX()
		y = AI:GetPosY()
		AI:SetEctypeVarShort( mapid, 39, 55 )
		AI:SetEctypeVarShort( mapid, 10, 0 )
		AI:SummonMonsterByPos( 51596 , x+1, y+1 )
		AI:SummonMonsterByPos( 51572 , x+1, y+1 )
    end
    if nIndex == 1 then
    	AI:ScreenText( "Lust shouts: Don't touch my girl.", 2 )
        AI:SetTimer(2,1000,1)
    end
end

function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
    	map = AI:GetMapID()
    	x = AI:GetEctypeVarShort(map, 10)
   		--AI:Say( "GUID:02549000003"..tostring(x).."GUID:02549000004" )
   		a = AI:GetArray(1)
        if a == 0 then
        	AI:AddSkill(2018,1)
        	AI:UseSkill(2018,1)
        	AI:SetArray( 1 , 1 )
        	AI:PlayAction( "walk", 10000, 0 )
        	AI:SetTimer(3,10000,65535)
        end
        
        if a == 1 then
        	if x == 1 then
        		HP = AI:GetHP()
        		HPMAX = AI:GetHPMax()
        		losehp = HPMAX * 0.1
            	AI:LoseHPInstant(losehp)
            	AI:ScreenText( "Lust is saddened by the loss of his mistress, loses some HP.", 2 )
	        	mapid = AI:GetMapID()
	        	AI:SetEctypeVarShort( mapid, 39, 55 )
	        	x = AI:GetPosX()
				y = AI:GetPosY()
	        	AI:SummonMonsterByPos( 51596 , x+1, y+1 )
		    	AI:SummonMonsterByPos( 51572 , x+1, y+1 )
		    	AI:SummonMonsterByPos( 51596 , x-1, y-1 )
		    	AI:SummonMonsterByPos( 51598 , x-1, y-1 )
	            AI:SetArray( 1 , 2 )
       		end
        end
        if a == 2 then
        	if x == 3 then
        		HP = AI:GetHP()
        		HPMAX = AI:GetHPMax()
        		losehp = HPMAX * 0.2
            	AI:LoseHPInstant(losehp)
            	AI:ScreenText( "Lust hurts from the loss of his mistress, loses some HP.", 2 )
	        	mapid = AI:GetMapID()
	        	AI:SetEctypeVarShort( mapid, 39, 55 )
				x = AI:GetPosX()
				y = AI:GetPosY()
	        	AI:SummonMonsterByPos( 51596 , x+1, y+1 )
		    	AI:SummonMonsterByPos( 51572 , x+1, y+1 )
		    	AI:SummonMonsterByPos( 51596 , x-1, y-1 )
		    	AI:SummonMonsterByPos( 51598 , x-1, y-1 )
		    	AI:SummonMonsterByPos( 51596 , x+1, y-1 )
		    	AI:SummonMonsterByPos( 51598 , x+1, y-1 )
		    	AI:SummonMonsterByPos( 51596 , x-1, y+1 )
		    	AI:SummonMonsterByPos( 51598 , x-1, y+1 )
	            AI:SetArray( 1 , 3 )
       		end
        end
   		if a == 3 then
	        if x == 7 then
		    	mapid = AI:GetMapID()
		        AI:SetEctypeVarShort( mapid, 39, 55 )
		        x = AI:GetPosX()
			    y = AI:GetPosY()
		        AI:SummonMonsterByPos( 51596 , x , y )
		        AI:SummonMonsterByPos( 51571 , x , y )
		        AI:Exit()
	       end
       end
end

function Event_ReadSeekPos(nAI)
    	local AI = GetMonsterAI(nAI)
    	
    	--????????
    	AI:AddSeekPos( 253 , 178 , 204 )
end

--?????????
function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
	local AI = GetMonsterAI(nAI)
    
    	if (( PosX == 178 ) and ( PosY == 204 )) then
        	AI:SetTimer(0,1000,1)
    	end
    	
end

function Event_OnDead(nAI)
	local AI = GetMonsterAI(nAI)
	
	mapid = AI:GetMapID()
	AI:SetEctypeVarShort( mapid, 23, 0 )
	x = AI:GetPosX()
	y = AI:GetPosY()
	AI:SummonMonsterByPos( 51586, x, y )
	
end