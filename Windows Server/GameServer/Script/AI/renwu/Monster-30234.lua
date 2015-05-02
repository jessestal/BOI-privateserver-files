	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/6/28
	--		Author:???
	--		Class:	.Lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
		function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
			if nIndex == 1 then
				a = AI:GetArray(1)
				if a == 1 then				
					AI:ScreenText("Now they're completely worthless, just like you! Hahaha...",2)
					AI:SetArray(1,2)
				end
			end
			if nIndex == 2 then
				a = AI:GetArray(2)
				if a == 1 then
					AI:PlayAction("skill\\Monster\\boss\\shenshengguanzhu\\fire\\shenshengguanzhu_fire.ini" , 0, 1)
					AI:SetArray(2,2)
				end
			end			
			if nIndex == 3 then
				a = AI:GetArray(3)
				if a == 1 then
					AI:SetArray(3,2)
					AI:SelfMurder()
					--AI:Exit()
				end
			end
		end
	
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		a = AI:GetArray(1)
		if a == 0 then
			--AI:Say("GUID:03040000001")
			AI:ScreenText("I should thank you, human! Thanks to you, the seal the Guardians protected has been broken!",2)
			AI:SetTimer(1,5000,1)
			AI:SetArray(1,1)
		end
		
		a = AI:GetArray(2)
		if a == 0 then
			AI:SetTimer(2,8000,1)
			AI:SetArray(2,1)
		end
		
		a = AI:GetArray(3)
		if a == 0 then
			AI:SetTimer(3,10000,1)
			AI:SetArray(3,1)
		end
			
	end