	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/8/09
	--		Author:???
	--		Class:	Monster-30291.Lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
		function Event_OnTimer(nAI,nIndex,nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
			if nIndex == 0 then
				AI:ScreenText("...huh? What are you doing here?",1)
			end
		
			if nIndex == 1 then
				AI:ScreenText("...no matter! We'll be meeting again soon! Hahaha!",1)
			end
		
			if nIndex == 2 then
				AI:SelfMurder()
			end
		
			if nIndex == 3 then
				AI:PlayAction("skill\\Monster\\boss\\shenshengguanzhu\\fire\\shenshengguanzhu_fire.ini" , 0, 1)
			end
		end
		
		function Event_Thinking(nAI)
			local AI = GetMonsterAI(nAI)
			
			a = AI:GetArray(1)
			if a == 0 then
				AI:ScreenText("Boss! I got what you asked for!", 1)
				AI:PlayAction("skill\\Monster\\boss\\shenshengguanzhu\\fire\\shenshengguanzhu_fire.ini" , 0, 1)
				AI:SetTimer(0,5000,1)
				AI:SetTimer(1,10000,1)
				AI:SetTimer(2,15000,1)
				AI:SetTimer(3,13000,1)
				AI:SetArray(1,1)
			end
		end