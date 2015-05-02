	---------------------------------------------------
	--		Copyright：PERFECT WORLD
	--		Modified：2011/10/10
	--		Author：朱建臣
	--		Class:	Monster-53150.lua
	--		AIName：
	--		Remark：
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
--		if nIndex == 0 then
--			AI:AddSkill(2355,1)
--			AI:UseSkill(2355,1)
--		end
		
--		if nIndex == 1 then
--			AI:SelfMurder()
--			AI:Exit()
--		end
	end
	
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
	  local ectypeID = AI:GetMapID()
	  local targetID = AI:GetTargetID() --取得目标
	  if targetID ~= 4294967295 then
			local targetDistance = AI:GetTargetDistance() --取得当前追击目标的距离
			if targetDistance <= 4 then
				AI:PlayEffect("common\\shanguangzhadan\\fire\\tx_shanguangzhadan_fire.ini")
				AI:PlayEffect("skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini")
				
				local skill_id = 2355
				AI:AddSkill(skill_id,1)
		    AI:UseSkill(skill_id,1)
		  end
		  
		  if targetDistance <= 2 then
		    AI:SelfMurder()
		    AI:Exit()
		  end
		  
		end
	end

