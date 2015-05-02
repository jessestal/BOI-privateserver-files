	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/10/08
	--		Author:???
	--		Class:	Monster-55291.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
		function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
			if nIndex == 0 then
				--?????
				AI:AddSkill(2181,1)
				AI:UseSkill(2181,1)
				AI:Say("Feel the heat!")
				z = AI:GetPlayerIDByIndex(0)
				local x1 = AI:GetPlayerX(z)
				local y1 = AI:GetPlayerY(z)
				AI:SummonMonsterByPos( 55292, x1, y1 )
			end
			
			if nIndex == 1 then
				--??
				AI:Say("You think you can defeat me? I dare you to try!")				
				AI:AddSkill(2179,1)
				AI:UseSkill(2179,1)
				local posx = AI:GetPosX()
				local posy = AI:GetPosY()
				local x = AI:GetRand(10)
				AI:SummonMonsterByPos( 55295, posx, posy )
			end
			
			if nIndex == 2 then
				--??????
				a = AI:GetRand(99)
				zhiye = AI:GetAttackTargetPro()
				if zhiye == 5 then
					AI:AddSkill(2277,3)
					AI:UseSkill(2277,3)
				end
				
				if zhiye == 6 then
					if a < 70 then
						AI:AddSkill(2277,3)
						AI:UseSkill(2277,3)
					end
				end
			end
			
			if nIndex == 3 then
				AI:AddSkill(2278,1)
				AI:UseSkill(2278,1)
			end
			
			if nIndex == 4 then
				AI:AddSkill(2278,2)
				AI:UseSkill(2278,2)
			end
			
			if nIndex == 5 then
				AI:AddSkill(2278,3)
				AI:UseSkill(2278,3)
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
 			t = AI:HaveAttackTarget()
 			HP = AI:GetHP()
    	HPMAX = AI:GetHPMax()
    	a = AI:GetArray(1)
			if t == false then
						if a > 0 then
							if HP == HPMAX then
		    				AI:DelTimer(0)
		    				AI:DelTimer(1)
		    				AI:DelTimer(2)
		    				AI:DelTimer(3)
		    				AI:DelTimer(4)
		    				AI:DelTimer(5)
		    				AI:SetArray(1,0)
		    			end
		    		end
			else
		
				if a == 0 then
					if HP < HPMAX then
						AI:Say("Who dares interrupt me!")
						AI:SetTimer(0,10000,65535)		
						AI:SetTimer(2,15000,65535)		
						AI:SetTimer(3,180000,1)
						AI:SetTimer(4,360000,1)
						AI:SetTimer(5,540000,1)
						AI:SetTimer(7,10000,65535)
						AI:SetArray(1,1)
					end
				end
				
				if a == 1 then
					if HP < HPMAX * 0.75 then
						AI:Say("My curse shall drain your soul!")
						AI:AddSkill(2179,1)
						AI:UseSkill(2179,1)
						AI:AddSkill(2180,1)
						AI:UseSkill(2180,1)
						AI:SummonMonster(55293, 2)
						AI:SetTimer(1,15000,65535)
						AI:SetArray(1,2)
					end
				end
				
				if a == 2 then
					if HP < HPMAX * 0.5 then
						AI:Say("How can a human even think to defeat me!")
						AI:AddSkill(2180,1)
						AI:UseSkill(2180,1)
						AI:SummonMonster(55293, 2)
						AI:SetArray(1,3)
					end
				end
				
				if a == 3 then
					if HP < HPMAX * 0.25 then
						AI:Say("You will never pass!")
						AI:AddSkill(2182,1)
						AI:UseSkill(2182,1)
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
		
		function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
      AI:DelTimer(0)
      AI:DelTimer(1)      
      AI:ScreenText( "I return.to the underworld.", 1 )
      AI:Say("I return.to the underworld.")
		end      