	---------------------------------------------------
	--		Copyright£∫PERFECT WORLD
	--		Modified£∫2011/10/08
	--		Author£∫÷ÏΩ®≥º
	--		Class:	Monster-12026.lua
	--		AIName£∫
	--		Remark£∫
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
			if nIndex == 0 then
				AI:AddSkill(2271,1)
				AI:UseSkill(2271,1)
			end
			
			if nIndex == 1 then
				AI:SelfMurder()
			end
	end
	
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
 			t = AI:HaveAttackTarget()
 			HP = AI:GetHP()
    	HPMAX = AI:GetHPMax()
    	a = AI:GetArray(1)
    	if a == 0 then
    		AI:SetTimer(0,5000,1)
    		AI:SetTimer(1,8000,1)
    		AI:SetArray(1,1)
    	end
   end
    