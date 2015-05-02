	--//****************************************
	--//
	--//		Copyright:PERFECT WORLD
	--//		Modified:2011/11/10
	--//		Author:???
	--//		TaskName:Monster-30276.lua
	--//		TaskID:
	--//
	--//****************************************
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0 then
			--t = AI:HaveAttackTarget()
			--if t == false then
				AI:ScreenText( "Raphael: This wouldn't have happened if you'd listened to me in the first place... but now you'll get to meet Odin again!", 1 )			
			--end
		end
		
		if nIndex == 1 then
				AI:PlayAction("skill\\Monster\\boss\\shenshengguanzhu\\fire\\shenshengguanzhu_fire.ini" , 0, 1)
				AI:SelfMurder()
				AI:Exit()
		end
		
	end
	
	function Event_Thinking(nAI)
			local AI = GetMonsterAI(nAI)
			HP = AI:GetHP()
   	 	HPMAX = AI:GetHPMax()
			a = AI:GetArray(1)
			if a == 0 then
				if HP < HPMAX * 0.8 then
					AI:ScreenText("Raphael: I expected better from you...", 1 )
					AI:SetArray(1,1)
				end
			end
			
			if a == 1 then
				if HP < HPMAX * 0.65 then
					AI:ScreenText("Raphael: It's time for you to die!", 1 )
					AI:PlayAction("skill\\Monster\\boss\\shenshengguanzhu\\fire\\shenshengguanzhu_fire.ini" , 0, 1)
					AI:SetTimer(0,4000,1)
					AI:SetTimer(1,7000,1)
					AI:SetArray(1,2)
				end
			end
	end
			