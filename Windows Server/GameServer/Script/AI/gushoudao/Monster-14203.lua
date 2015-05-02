	---------------------------------------------------
	--		Copyright：PERFECT WORLD
	--		Modified：2011/10/08
	--		Author：朱建臣
	--		Class:	Monster-14203.lua
	--		AIName：
	--		Remark：
	----------------------------------------------------
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
			if nIndex == 0 then
				--释放技能
				AI:AddSkill(2254,1)
				AI:UseSkill(2254,1)
			end
			
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		t = AI:HaveAttackTarget()
 		HP = AI:GetHP()
    HPMAX = AI:GetHPMax()
    a = AI:GetArray(1)
	
		 if a == 0 then
		 		AI:AddSkill(2254,1)
		 		AI:UseSkill(2254,1)
				AI:SetTimer(0,30000,65535)
				AI:SetArray(1,2)
		 end
	end