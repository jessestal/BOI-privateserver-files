

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
        if nIndex == 1 then
            AI:GetRandTarget()
           	AI:AddSkill(2110,1)
						AI:UseSkill(2110,1)
        end
                

end
          
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		a = AI:GetArray(1)
		if a == 0 then --初始触发器，开场动作，出身动画
			AI:SetTimer(1,3000,10)
			AI:SetArray(1,1)
		end

end


	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)

	end