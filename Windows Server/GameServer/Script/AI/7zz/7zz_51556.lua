--X?

function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
    if nIndex == 0 then
        --????
        mapid = AI:GetMapID()
		AI:SetEctypeVarShort( mapid, 39, 55 )
    	AI:SummonMonster( 51596 , 1 )
        AI:SummonMonster( 51592 , 1 )
        AI:Exit()
    end
    
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
    
    --??
    b = AI:GetArray(2)
    if b == 0 then
    	AI:ScreenText( "Rage wrath split fury, wrath, rage, cranky, angry......run.", 2 )
        AI:AddSkill(2018,1)
        AI:UseSkill(2018,1)
        AI:SetTimer(0,15000,1)
        AI:SetArray( 2 , 1 )
    end
end

function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
     
    mapid = AI:GetMapID()
	AI:SetEctypeVarShort( mapid, 39, 55 )
    AI:SummonMonster( 51596 , 1 )
    AI:SummonMonster( 51592 , 1 )
     
end
