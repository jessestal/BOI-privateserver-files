-- -------BUFF��-----����ʥ��
-- 9809	��֮�ػ�	1
-- 9810	��֮�ػ�	1
-- 9811	��֮�ػ�	1
-- 9812	��ʥף��	1
-- 9813	�����ָ�	1

function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
				if nIndex == 0 then	
    					AI:AddSkill(9812,2)
 						AI:UseSkill(9812,2)		
				end
		end
function Event_Thinking(nAI)
    	local AI = GetMonsterAI(nAI)
    			x = AI:GetArray(1)   			
    			t = AI:GetEnmityCount()
    					if t < 1 then
    							if x == 0 then
     									AI:SetTimer(0,1000,65535)
     									AI:SetArray(1,1)
     							end    							
     					else
    							if x == 0 then
     									AI:SetTimer(0,1000,65535)
     									AI:SetArray(1,1)
     							end						
     					end    	
     	end	