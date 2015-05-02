-- ---------ÄáÄªAI----Â¬öÎ-----------

function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		end
function Event_Thinking(nAI)
    	local AI = GetMonsterAI(nAI)
    	end
function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
				AI:SummonMonsterByPos(55039,104,162)
				AI:SummonMonsterByPos(55004,104,162)				
		end

