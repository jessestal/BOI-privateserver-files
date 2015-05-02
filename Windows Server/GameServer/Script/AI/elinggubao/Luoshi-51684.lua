--落石怪
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --减速 
        AI:AddSkill(2044,1)
        AI:UseSkill(2044,1)
    end
    if nIndex == 1 then
        --震动特效 
        AI:PlayEffect("skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini")  
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                    
        a = AI:GetArray(1)
        if a == 0 then
            AI:PlayEffect("skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini")  
            AI:AddSkill(2044,1)
            AI:UseSkill(2044,1)
            AI:SetTimer(0,3000,65535)
            AI:SetTimer(1,8000,65535)
            AI:SetArray(1,1)
        end
end

function Event_OnDead(nAI)
	local AI = GetMonsterAI(nAI)
end            