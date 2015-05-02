----------------------------------------------------
--		Copyright：PERFECT WORLD
--		Modified：2011/08
--		Author：胡斌涛
--		TaskName：【-通用monsterAI-】
--		TaskID：
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--单次执行
			a = AI:GetArray(1)
			if a == 1 then
				--AI:ChangeFaction(1)
				AI:GetRandTarget()
				AI:SetArray(1,2)
				AI:SetArray(9,1)
--				AI:AddSkill(ID,lv)
--				AI:UseSkill(ID,lv)
			end
		end

		if nIndex == 2 then--通常执行
			a = AI:GetArray(2)
			if a == 1 then
				rand = AI:GetRand(100)
				if rand < 100 then
--					AI:AddSkill(ID,lv)
--					AI:UseSkill(ID,lv)
--					AI:ScreenText( " " , 2)
--					AI:Say("")
				else
				end
			end
		end--通常执行end
		
		if nIndex == 3 then--大招执行
			a = AI:GetArray(3)
			if a == 1 then
--				AI:AddSkill(ID,lv)
--				AI:UseSkill(ID,lv)
--				AI:ScreenText( " " , 2)
--				AI:Say("")
			end
		end--大招执行end
	end
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		hpn = AI:GetHP()
		hpmax = AI:GetHPMax()
		hppct = hpn/hpmax*1000
 		t = AI:HaveAttackTarget()
 		a = AI:GetArray(1)
--AI:Say("hppct="..tostring(hppct))
		if t == false then
			if a > 0 then
				if hpn == hpmax then
					CanBeShutDown = AI:GetArray(9)
					if CanBeShutDown == 1 then
				    AI:DelTimer(0)
				    AI:DelTimer(1)
				    AI:DelTimer(2)
		    		AI:SetArray(1,0)
		    		AI:SetArray(2,0)
		    		AI:SetArray(9,0)
					end
				end
			end
		else
		-----------------------------------------------------------normal start
			if a == 0 then --初始触发器
				AI:SetTimer(1,1500,1)
				AI:SetArray(1,1)
				--AI:ChangeFaction(5)
		    AI:SetArray(9,0)
--				AI:Say("")
--				AI:ScreenText( "" , 2)

			end
--			a = AI:GetArray(2)
--			if a == 0 then --通常执行
--				AI:SetTimer(2,5000,9999)
--				AI:SetArray(2,1)
--			end
--			a = AI:GetArray(3)
--			if a == 0 then --大招执行
--				if hppct < 100 then
--					AI:SetTimer(3,1000,1)
--					AI:SetArray(3,1)
--				end
--			end
--			----------------------------------------------------------normal start
		end


	end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		


		--AI:ScreenText( "" , 2)

	end
	
	
	
	
	
