----------------------------------------------------
--		Copyright：PERFECT WORLD
--		Modified：2011/08
--		Author：胡斌涛
--		TaskName：【-白虎-】
--		TaskID：
-----------------------------------------------------
--30400	雅典娜
--30401	索尔
--30402	波赛顿
--30403	朱雀
--30404	青龙
--30405	白虎
--30406	玄武
	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--单次执行
			a = AI:GetArray(1)
			if a == 1 then
				AI:GetRandTarget()
				AI:SetArray(1,2)
				AI:SetArray(9,1)
--				AI:PlayAction("\\common\\shilian2\\51244-handR.ini",0,1)
			end
		end

		if nIndex == 2 then
			a = AI:GetArray(2)
			if a == 10 then
				AI:SelfMurder()
			end
			a=a+1
			AI:SetArray(2,a)
		end--大招执行end
		
	end
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

 		a = AI:GetArray(1)
		-----------------------------------------------------------normal start
			if a == 0 then --初始触发器，开场动作，出身动画
				AI:SetTimer(1,500,1)
				AI:SetArray(1,1)
		    AI:SetArray(9,0)
--				AI:ScreenText("",2)
			end
			a = AI:GetArray(2)
			if a == 0 then --通常执行，循环播放
				AI:SetTimer(2,1000,9999)
				AI:SetArray(2,1)
			end
			----------------------------------------------------------normal start


	end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		--AI:ScreenText("",2)
	end
	
	