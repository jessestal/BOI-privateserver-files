	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/8/09
	--		Author:???
	--		Class:	.Lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
		function Event_OnTimer(nAI,nIndex,nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
			if nIndex == 0 then
				AI:ScreenText("But you... You are not worthy of such an honor!",1)
			end
		
			if nIndex == 1 then
				AI:ScreenText("Do you really think you have what it takes to defeat me?",1)
			end
		
			if nIndex == 2 then
				AI:ScreenText("Make sure you come prepared... I've been waiting ages for a good fight!",1)
			end
		
			if nIndex == 3 then
				AI:ScreenText("Hahahahaha...",1)
				AI:PlayAction("skill\\Monster\\boss\\shenshengguanzhu\\fire\\shenshengguanzhu_fire.ini" , 0, 1)
			end
		
			if nIndex == 4 then
				AI:SelfMurder()
			end
			
			if nIndex == 5 then
			  AI:PlayAction( "specialidle" , 2000 ,0 )
			end
		end
		
		function Event_Thinking(nAI)
			local AI = GetMonsterAI(nAI)
			
			a = AI:GetArray(1)
			if a == 0 then
				AI:ScreenText("Even the Yellow Empire sacrificed himself before me!", 1)
				AI:PlayAction("skill\\Monster\\boss\\shenshengguanzhu\\fire\\shenshengguanzhu_fire.ini" , 0, 1)
				AI:SetTimer(0,5000,1)
				AI:SetTimer(1,10000,1)
				AI:SetTimer(2,15000,1)
				AI:SetTimer(3,20000,1)
				AI:SetTimer(4,22000,1)
				AI:SetTimer(5,4000,65535)
				AI:SetArray(1,1)
			end
		end
	
			