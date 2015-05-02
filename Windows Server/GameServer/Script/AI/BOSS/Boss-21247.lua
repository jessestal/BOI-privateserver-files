
	function Event_OnTimer(nAI,nIndex, nCount)
        local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --冲锋
        		AI:GetRandTarget()
						AI:AddSkill(8644,1)
        		AI:UseSkill(8644,1)
				end
        
	end
	
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		
		local canDo = AI:GetArray(1)
		if canDo == 0 then
				AI:SetTimer(0 , 10000 , 65535)--自我消失计时器
				AI:AddSkill(8644,1)
        AI:UseSkill(8644,1)
	    	AI:SetArray(1,1)
	    end
	end
