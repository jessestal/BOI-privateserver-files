	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/03/13
	--		Author:???
	--		Class:	Monster-30503.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
	end
	
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		
		HP = AI:GetHP()
    	HPMAX = AI:GetHPMax()
    	a = AI:GetArray(1)
    	
    	if a == 0 then
    		AI:Say("You will be the next wandering spirit!")
    		AI:SetArray(1,1)
    	end
    	
	end
	
	function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)     
      
	end      