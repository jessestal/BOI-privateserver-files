	------------------------------------------
	--
	--		Copyright：PERFECT WORLD
	--		Modified：2010/08/04
	--		Author：张璨
	--		AIName：Monster_33088.lua
	--		AIID：BOSS召唤-流星雨
	--
	------------------------------------------

	function Event_OnTimer(nAI,nIndex, nCount)
        local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --追击6秒后自杀
            AI:Exit()
        end 
        
        if nIndex == 1 then
        	AI:PlayEffect("common\\vehicle\\gongchengdan\\tx_gongchengdan_hit.ini")
        	AI:AddSkill(2063,1)
        	AI:UseSkill(2063,1)
        end
	end
	
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		
		local canDo = AI:GetArray(1)
		if canDo == 0 then
			AI:SetTimer(0 , 5000 , 1)--自我消失计时器
			AI:SetTimer(1 , 3000 , 1)--释放技能
	    	AI:SetArray(1,1)
	    end
	end
