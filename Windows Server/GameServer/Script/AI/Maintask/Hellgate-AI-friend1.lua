-- -----Ů��Ļ��---------��ʧĿ����EXIT---

function Event_Thinking(nAI)
    	local AI = GetMonsterAI(nAI)
				t = AI:HaveAttackTarget()
    			if t == false then
    					AI:Exit()
     			end    	
     	end