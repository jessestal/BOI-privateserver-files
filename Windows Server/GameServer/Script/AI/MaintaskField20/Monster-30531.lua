	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/03/30
	--		Author:???
	--		Class:	Monster-30531.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0 then
			AI:PlayAction("skill\\Monster\\boss\\shenshengguanzhu\\fire\\shenshengguanzhu_fire.ini" , 0, 1)
		end
		
		if nIndex == 1 then
			AI:ScreenText("There's still time for you to turn around.", 1)
			AI:SelfMurder()
		end
	end
	
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
			
		a = AI:GetArray(1)
		if a == 0 then
			AI:ScreenText("The beach is swarmed by the corrupted monsters!", 1)
			AI:SetTimer(0,10000,1)
			AI:SetTimer(1,13000,1)
			AI:SetArray(1,2)
		end
	end
	
	function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
    
    map_id = AI:GetMapID()
    posx = AI:GetPosX()
		posy = AI:GetPosY()
		AI:SummonMonsterByPos( 30517 , posx , posy )
	end