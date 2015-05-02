	------------------------------------------
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2011/07/13
	--		Author:??
	--		AIName:Monster_59252_toumingguai.lua
	--		AIID:??????
	--
	------------------------------------------

	function Event_OnTimer(nAI,nIndex, nCount)
       		local AI = GetMonsterAI(nAI)
       		local mapid = AI:GetMapID()
       		local left = AI:GetEctypeVarShort(mapid , 4)
       		local right = AI:GetEctypeVarShort(mapid , 5)
       		if nIndex == 0 then
        		if left == 1 then
        			if right == 1 then
        				AI:SelfMurder()
        			end
        		end		
        	end
	end
	
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		a = AI:GetArray(0)
        
        	if a == 0 then
        		AI:SetTimer(0,1000,65535)
        		AI:SetArray(0,1)
        	end	
	end
	
	function Event_OnDead(nAI)
	    local AI = GetMonsterAI(nAI)
	    AI:ScreenText("The two sides of the temple have been occupied by the attackers, Thor's power has been greatly weakened!",2)
    	end
	