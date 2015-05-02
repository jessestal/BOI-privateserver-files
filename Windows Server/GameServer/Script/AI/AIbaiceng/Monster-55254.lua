	---------------------------------------------------
	--		Copyright：PERFECT WORLD
	--		Modified：2011/12/07
	--		Author：朱建臣|张文宇
	--		Class:	Monster-55254.lua
	--		AIName：
	--		Remark：
	----------------------------------------------------
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0 then
			--释放治疗减益
			b = math.random( 0, 99 )
			if b < 50 then
				AI:AddSkill(2277,1)
				AI:UseSkill(2277,1)			
			end
		end
	end
	
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
 			t = AI:HaveAttackTarget()
 			HP = AI:GetHP()
    	HPMAX = AI:GetHPMax()
    	a = AI:GetArray(1)
    	zhiye = AI:GetAttackTargetPro()
			if t == false then
						if a > 0 then
							if HP == HPMAX then
		    				AI:DelTimer(0)
		    				AI:SetArray(1,0)
		    			end
		    		end
			else
		
				if a == 0 then
					if HP < HPMAX then					
						if zhiye == 5 then
							AI:SetTimer(0,15000,65535)
							AI:SetArray(1,1)
						end
						
						if zhiye == 6 then
							AI:SetTimer(0,15000,65535)
							AI:SetArray(1,1)
						end						
					end
				end
			end
	end