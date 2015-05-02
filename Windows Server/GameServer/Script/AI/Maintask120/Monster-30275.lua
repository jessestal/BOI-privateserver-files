	--//****************************************
	--//
	--//		Copyright:PERFECT WORLD
	--//		Modified:2011/11/10
	--//		Author:???
	--//		TaskName:Monster-30275.lua
	--//		TaskID:
	--//
	--//****************************************
	
		function Event_OnTimer(nAI,nIndex, nCount)
			local AI = GetMonsterAI(nAI)
			
			if nIndex == 0 then
				hp = AI:GetTargetHP()
				if hp < 65000 then
					AI:ScreenText( "How could this have happened!?", 1 )
					AI:SelfMurder()
				end
      end
		end
		
		
		function Event_Thinking(nAI)
			local AI = GetMonsterAI(nAI)
			t = AI:HaveAttackTarget()
 			HP = AI:GetHP()
    	HPMAX = AI:GetHPMax()
			a = AI:GetArray(1)
			if t == false then
				if a > 0 then
					if HP == HPMAX then
		    		AI:DelTimer(0)
		    		AI:SetArray(1,1)
		    	end
	    	end
	    else
				if a == 0 then
					if HP < HPMAX then
						--????
						AI:ScreenText("Hephaestus: What is it you're trying to do!? I knew you were up to no good!", 1 )
						AI:SetTimer(0,1000,65535)
						AI:SetArray(1,2)
					end
				end		
			end	
		end
		
		function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
    	AI:ScreenText( "Hephaestus: How could this have happened!?", 1 )
      AI:Say("How could this have happened!?") 
    end