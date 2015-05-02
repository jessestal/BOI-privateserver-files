	---------------------------------------------------
	--		Copyright£∫PERFECT WORLD
	--		Modified£∫2012/03/27
	--		Author£∫÷ÏΩ®≥º
	--		Class:	Monster-30524.lua
	--		AIName£∫
	--		Remark£∫
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0 then
			AI:AddSkill(2318,1)
			AI:UseSkill(2318,1)
		end
	end
	
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		t = AI:HaveAttackTarget()
 		HP = AI:GetHP()
    HPMAX = AI:GetHPMax()
    a = AI:GetArray(1)
    
    if a == 0 then
			AI:SetTimer(0,3000,65535)
			AI:SetArray(1,2)
		end
	end