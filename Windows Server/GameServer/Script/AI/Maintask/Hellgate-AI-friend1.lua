-- -----女神的伙伴---------丢失目标则EXIT---

function Event_Thinking(nAI)
    	local AI = GetMonsterAI(nAI)
				t = AI:HaveAttackTarget()
    			if t == false then
    					AI:Exit()
     			end    	
     	end