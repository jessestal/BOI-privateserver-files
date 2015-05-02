-- ---Õ¨µ¯-------- 

function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
    			if nIndex == 0 then	
						AI:SelfMurder()
				end														
		end
function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
				x = AI:GetArray(1)
						if a == 0 then
								atc = AI:GetRand(2)
								AI:AddSkill(9523,20)
 								AI:UseSkill(9523,20)	
								AI:PlayEffect( "skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini" )								
								if atc == 0 then
										AI:SetTimer(0,3000,1)
										AI:SetArray(1,1)
								end
								if atc == 1 then
										AI:SetTimer(0,5000,1)
										AI:SetArray(1,1)
								end								
								if atc == 3 then
										AI:SetTimer(0,10000,1)
										AI:SetArray(1,1)
								end
						end
		end
function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
				AI:SetArray(1,0)							
		end