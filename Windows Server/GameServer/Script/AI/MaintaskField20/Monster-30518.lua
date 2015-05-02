	---------------------------------------------------
	--		Copyright£∫PERFECT WORLD
	--		Modified£∫2012/03/21
	--		Author£∫÷ÏΩ®≥º
	--		Class:	Monster-30518.lua
	--		AIName£∫
	--		Remark£∫
	----------------------------------------------------
	
		function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
			if nIndex == 0 then
				AI:AddSkill(2316,1)
				AI:UseSkill(2316,1)
			end
			
			if nIndex == 1 then
				AI:SelfMurder()
			end
		end
		
		function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
 			HP = AI:GetHP()
    	HPMAX = AI:GetHPMax()
    	a = AI:GetArray(1)
    	
    	if a == 0 then
    		AI:SetTimer(0,4000,65535)
    		AI:SetTimer(1,14000,1)
    		AI:SetArray(1,1)
    	end
    end
    		