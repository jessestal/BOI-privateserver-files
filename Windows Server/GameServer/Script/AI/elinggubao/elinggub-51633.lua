function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    
    if nIndex == 0	then
    	mapid = AI:GetMapID()
		HP = AI:GetHP()
	    HPMAX = AI:GetHPMax()
	    lose = HPMAX - HP
	    AI:SetEctypeVarInteger( mapid, 119, lose )
	    --n = AI:GetEnmityCount()
	    --AI:SetEctypeVarShort( mapid, 96, n )
	    --k = 113
	    --while n > 0 do
			--n = n -1
			--id = AI:GetPlayerIDByIndex(n)
			--AI:SetEctypeVarInteger( mapid, k, id )
			--k = k + 1
		--end
		x = AI:GetPosX()
		y = AI:GetPosY()
		AI:ScreenText( "Dark Harbinger: I'll explode you into bite-size pieces!", 2 )
		AI:SummonMonsterByPos( 51638, x, y )
		AI:SummonMonsterByPos( 51690, x, y )
		AI:SummonMonsterByPos( 51707, 208, 35 )
		AI:SummonMonsterByPos( 51694, 220, 25 )
		AI:SummonMonsterByPos( 51694, 220, 46 )
		AI:SummonMonsterByPos( 51694, 195, 46 )
		AI:SummonMonsterByPos( 51694, 195, 25 )
		AI:Exit()
	end
	
	if nIndex == 1	then
		
		mapid = AI:GetMapID()
		x = AI:GetPosX()
		y = AI:GetPosY()
		b = AI:GetEctypeVarInteger( mapid ,111 )
		AI:ScreenText( "Dark Harbinger: I'll summon Hell itself to consume you in flames!", 2 )
		if b == 0 then
			AI:SummonMonsterByPos( 51721, x+3, y+3 )
			AI:SummonMonsterByPos( 51721, x+3, y-3 )
			AI:SummonMonsterByPos( 51721, x-3, y-3 )
			AI:SummonMonsterByPos( 51721, x-3, y+3 )
		else
			AI:SummonMonsterByPos( 51692, x+3, y+3 )
			AI:SummonMonsterByPos( 51692, x+3, y-3 )
			AI:SummonMonsterByPos( 51692, x-3, y-3 )
			AI:SummonMonsterByPos( 51692, x-3, y+3 )
		end
		
		step = AI:GetArray( 2 )
		step = step + 1
		AI:SetArray(2,step)
		if step == 3 	then
			AI:SetArray(2,0)
			AI:SetTimer(0,15000,1)
		end
	end
	
	if nIndex == 2	then
		mapid = AI:GetMapID()
		b = AI:GetEctypeVarInteger( mapid ,111 )
		if b == 0 then
			AI:SetTimer(1,15000,3)
		else
			AI:SetTimer(1,15000,3)
		end
	end
	
	if nIndex == 3	then
		AI:AddSkill( 2027, 1 )
		AI:UseSkill( 2027, 1 )
	end
    
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)

    mapid = AI:GetMapID()
	n = AI:GetEnmityCount()
	if n < 1 then
		AI:SetArray(0,0)
		AI:SetArray(1,0)
		AI:SetArray(2,0)
		AI:DelTimer( 0 )
		AI:DelTimer( 1 )
		AI:DelTimer( 2 )
		open = AI:GetArray( 6 )
		--if open == 1 	then
			AI:SetEctypeVarShort( mapid, 99, 0 )
			AI:SetEctypeVarShort( mapid, 97, 0 )
			AI:SetEctypeVarShort( mapid, 96, 0 )
			AI:SetEctypeVarShort( mapid, 95, 0 )
			AI:SetEctypeVarInteger( mapid, 119, 0 )
			AI:OpenMapMask(17)
			AI:SetArray(6,0)
			AI:DelNPC(2254)
		--end
		AI:AddNPC(2141)
		AI:Exit()
	else
		
		y = AI:GetPosY()
	    if y >= 51 	then
	    	AI:ScreenText( "I tire of your cowardice.", 2 )
	    	a = AI:GetEctypeVarInteger( mapid ,110 )
			b = AI:GetEctypeVarInteger( mapid ,111 )
			AI:SetEctypeVarShort( mapid, 99, 0 )
			AI:SetEctypeVarShort( mapid, 97, 0 )
			AI:SetEctypeVarShort( mapid, 96, 0 )
			AI:SetEctypeVarShort( mapid, 95, 0 )
			AI:SetEctypeVarInteger( mapid, 119, 0 )
			if b == 0 then
				level = 62
			else
				level = 61
			end
		    --AI:SummonLevelMonsterByPos( 51633 , level , a  , 207 , 26 )
		    AI:OpenMapMask(17)
			AI:DelNPC(2254)
			AI:AddNPC(2141)
		    AI:Exit()
	    end
		
		lockvar = AI:GetArray( 4 )
	    if lockvar == 0 	then
	    	lose = AI:GetEctypeVarInteger( mapid, 119 )
			AI:LoseHPInstant(lose)
			AI:AddSkill( 2027, 1 )
			AI:UseSkill( 2027, 1 )
			AI:SetEctypeVarInteger( mapid, 119, 0 )
			AI:SetArray(4,1)
		end
		
		switch = AI:GetArray(1)
		if switch == 0	then
			new = AI:GetEctypeVarShort( mapid, 95 )
			if new == 0 	then
				b = AI:GetEctypeVarInteger( mapid ,111 )
				if b == 0 then
					AI:SetTimer(1,15000,3)
				else
					AI:SetTimer(1,15000,3)
				end
				AI:SetEctypeVarShort( mapid, 95, 1 )
			else
				AI:ScreenText( "The Dark Harbinger appears once more!", 2 )
				AI:SetTimer(2,18000,1) 
			end
			
			b = AI:GetEctypeVarInteger( mapid ,111 )
			if b == 0 then
				AI:SetTimer(3,6000,2000)
			else
				AI:SetTimer(3,3000,2000)
			end
			
			open = AI:GetArray( 6 )
			if open == 0 	then
				AI:CloseMapMask(17)
				AI:AddNPC(2254)
				AI:SetArray(6,1)
			end
			AI:SetArray(1,1)
		end
	end
end 
   
function Event_OnDead(nAI)
	local AI = GetMonsterAI(nAI)	
		
	AI:OpenMapMask(17)
	AI:DelNPC(2254)
		
end   
    
    