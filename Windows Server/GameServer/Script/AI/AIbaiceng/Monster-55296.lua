	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/10/08
	--		Author:???(?????)
	--		Class:	Monster-55296.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
		function Event_OnTimer(nAI,nIndex, nCount)
			local AI = GetMonsterAI(nAI)
			
			if nIndex == 0 then
				--??????
				a = AI:GetRand(99)
				zhiye = AI:GetAttackTargetPro()
				if zhiye == 5 then
					AI:AddSkill(2277,2)
					AI:UseSkill(2277,2)
				end
				
				if zhiye == 6 then
					if a < 70 then
						AI:AddSkill(2277,2)
						AI:UseSkill(2277,2)
					end
				end
			end
	
			if nIndex == 7 then
				--????
				Ttyp = AI:GetTargetCharType()
				if Ttyp == 2 then
					HPMAX = AI:GetHPMax()
					SavedPid = AI:GetArray(11)
					AI:AddCharToEnmityList(SavedPid, HPMAX/3)
					petcheat = AI:GetArray(12)
					petcheat = petcheat + 1
					AI:SetArray(12 ,petcheat)
					if petcheat >= 5 then
						AI:RestoreHPInstant(HPMAX)
						AI:Say("Hahaha! Run, you coward! I'm invincible!")
						AI:ScreenText("Hahaha! Run, you coward! I'm invincible!", 2)
					end
				end
				if Ttyp == 1 then
					petcheat = AI:GetArray(12)
					petcheat = petcheat - 1
					AI:SetArray(12 ,petcheat)
					if petcheat < 0 then
						AI:SetArray(12 ,0)
					end
				end
			end			
		
		end
		
		function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
 			HP = AI:GetHP()
    	HPMAX = AI:GetHPMax()
    	a = AI:GetArray(1)
    	t = AI:HaveAttackTarget()
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
						AI:ScreenText("Revel in my power!",1 )
						AI:AddSkill(2183,1)
						AI:UseSkill(2183,1)
						AI:SetTimer(0,15000,65535)
						AI:SetTimer(7,10000,65535)
						AI:SummonMonster(55297, 1)
						AI:SetArray(1,1)
					end
				end
			
				if a == 1 then
					if HP < HPMAX * 0.75 then
						AI:ScreenText("Odin, please give me strength!", 1 )
						AI:AddSkill(2183,2)
						AI:UseSkill(2183,2)
						AI:SummonMonster(55297, 1)
						AI:SetArray(1,2)
					end
				end
			
				if a == 2 then
					if HP < HPMAX * 0.5 then
						AI:ScreenText("You will never pass!",1 )
						AI:AddSkill(2185,1)
						AI:UseSkill(2185,1)
						AI:SummonMonster(55299, 1)
						AI:SetArray(1,3)
					end
				end
				
				if a == 3 then
					if HP < HPMAX * 0.25 then
						AI:ScreenText("You wish to die?",1)
						AI:AddSkill(2183,3)
						AI:UseSkill(2183,3)
						AI:SummonMonster(55297, 1)
						AI:SetArray(1,4)
					end
				end
			end
	
			SavedPid = AI:GetArray(11)
			if  SavedPid == 0 then
				AI:GetRandTarget()
				isPornot = AI:GetTargetCharType()
				if isPornot == 1 then
					Targetpid = AI:GetTargetID()
					AI:SetArray(11,Targetpid)
				end
			end
	
		end
			