	-----------------------------------------
	--
	--		Copyright：PERFECT WORLD
	--		Modified：2012/08/07
	--		Author：朱建臣
	--		AIName：Monster_53139.lua
	--		AIID：陷阱
	--
	-----------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
	    local AI = GetMonsterAI(nAI)
	end
	
	function Event_Thinking(nAI)
	    local AI = GetMonsterAI(nAI)
	    local ectypeID = AI:GetMapID()
	    local targetID = AI:GetTargetID() --取得目标
	    if targetID ~= 4294967295 then
			local targetDistance = AI:GetTargetDistance() --取得当前追击目标的距离
			if targetDistance <= 2 then
				--屏幕震动特效
				AI:PlayEffect("skill\Monster\boss\buff_fennu\fire\tx_boss_guangzhifennu_fire.ini")	
				--地雷爆炸
				--AI:PlayEffect("common\\shanguangzhadan\\fire\\tx_shanguangzhadan_fire.ini")
				
				--获取连击数确定技能
				local skill_id = 2358
				
				
		 		--AI:AddSkill(2316,skill_level)
            	--AI:UseSkill(2316,skill_level)
            	AI:AddSkill(skill_id,1)
            	AI:UseSkill(skill_id,1)
            	AI:SelfMurder()
        	end
        end				
	end 