	------------------------------------------
	--
	--		Copyright：PERFECT WORLD
	--		Modified：2010/09/13
	--		Author：张璨
	--		AIName：Monster_30067.lua
	--		AIID：闪电
	--
	------------------------------------------

	function Event_OnTimer(nAI,nIndex, nCount)
        local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --追击6秒后自杀
            AI:Exit()
        end 
	end
	
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		
		local canDo = AI:GetArray(1)
		if canDo == 0 then
			AI:SetTimer(0 , 6000 , 1)--自我消失计时器
			--闪电攻击
			AI:AddSkill(2077,1)
	    	AI:SetArray(1,1)
	    end
		
		local EnmityNum = AI:GetEnmityCount()
		if EnmityNum > 0 then
			local targetDis = AI:GetTargetDistance()--取得当前追击目标的距离
			if targetDis <= 1 then
				--释放技能并消失
				AI:UseSkill(2077,1)
				AI:Exit()
	    	end
	    end
	end