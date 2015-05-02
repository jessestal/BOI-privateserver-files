	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/8/12
	--		Author:???
	--		Class:	.Lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
		function Event_OnTimer(nAI,nIndex,nCount)
		local AI = GetMonsterAI(nAI)
		--local mapid = AI:GetMapID()
		
			if nIndex == 0 then
				AI:PlayAction( "attack1" , 2000 ,0 )
			end
			
			if nIndex == 1 then
				AI:PlayAction("hurt" , 2000 ,0 )
			end
		end
		
		function Event_Thinking(nAI)
			local AI = GetMonsterAI(nAI)
			
			a = AI:GetArray(1)
			if a == 0 then
				AI:ScreenText("Dragon Emperor: You want to stop me!?", 1 )
				AI:PlayAction("skill\\Monster\\boss\\shenshengguanzhu\\fire\\shenshengguanzhu_fire.ini" , 0, 1)
				AI:SetTimer( 0, 1000, 1 )
				AI:SetTimer( 1, 3000, 1 )
				AI:SetArray( 1, 2)
			end
		end