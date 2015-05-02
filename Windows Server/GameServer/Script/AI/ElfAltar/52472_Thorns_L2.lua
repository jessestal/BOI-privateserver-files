----------------------------------------------------
--		Copyright：PERFECT WORLD
--		Modified：2012/08
--		Author：向珈辰
--		TaskName：【-精灵祭坛：BOSS3 荆棘陷阱Lv0-】
--		TaskID：52472_Thorns_L2.lua
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		if nIndex == 1 then--通常执行
			a = AI:GetArray(1)
			if a == 1 then
				AI:SetArray(1,2)
				AI:PlayAction("born",0,0)
			end

			if a == 2 then
				AI:SetArray(1,3)
				AI:AddSkill(2387,1)
				AI:UseSkill(2387,1)
			end												
			
		end--通常执行结束

	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		hpn = AI:GetHP()
		hpmax = AI:GetHPMax()
		hppct = hpn/hpmax*100
		-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then 
					AI:PlayAction("dead",0,0)
					AI:SetTimer(1,3000,2)
					AI:SetArray(1,1)
			end	


			----------------------------------------------------------normal end
		

--		test=AI:GetEctypeVarShort(mapid,99)
--		if test = 1 then--副本AI测试
--			AI:Say("hppct="..tostring(hppct))
--			AI:SetEctypeVarShort(mapid,99,0)
--		end

	end--functionEvent_ThinkingEND

	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
	end
	
	
	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
	end





	
	
	
	
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
				
				AI:DelTimer(1)

	end

