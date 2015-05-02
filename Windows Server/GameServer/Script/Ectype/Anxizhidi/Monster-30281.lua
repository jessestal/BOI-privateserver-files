----------------------------------------------------
--		Copyright：PERFECT WORLD
--		Modified：2011/08
--		Author：胡斌涛
--		TaskName：【-混沌-】
--		TaskID：
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
--怪物30281出生后就一直带着KEEP特效：
--Effect\skill\summon\Baihuqiyue\keep\tx_summon_baihuqiyue_keep.ini

		if nIndex == 1 then
			a = AI:GetArray(1)
			if a == 1 then
				AI:PlayAction("\\skill\\summon\\Baihuqiyue\\keep\\tx_summon_baihuqiyue_keep.ini",0,1)
				AI:SetArray(1,1)
				AI:SetArray(9,1)
				AI:GetRandTarget()
			end
		end
		if nIndex == 2 then
			a = AI:GetArray(2)
			if a == 1 then
				posx = AI:GetPosX()
				posy = AI:GetPosY()
				AI:SummonMonsterByPos(30313,posx,posy)
			end
		end
		--中心206,158
		if nIndex == 3 then
			a = AI:GetArray(3)
		end--通常执行end

	end
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

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
						AI:ChangeFaction(1)
					end
				end
			end
		else
		-----------------------------------------------------------normal start
			a = AI:GetArray(1)
			if a == 0 then
				AI:SetTimer(1,500,1)
				AI:SetArray(1,1)
				AI:SetArray(9,0)
			end
			a = AI:GetArray(2)
			if a == 0 then
				AI:SetTimer(2,500,9999)
				AI:SetArray(2,1)
			end
		----------------------------------------------------------normal start
		end

	end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		cnnc=AI:GetEctypeVarShort(mapid,4)
		dnnd=math.mod(cnnc,6)
		if cnnc<36 then
			if dnnd == 0 then
				cnnc=cnnc+1
				AI:SetEctypeVarShort(mapid,4,cnnc)
				a=0
				while a<50 do	
					oa=6.28*a/50
					ox=206
					oy=158
					rr=8
					sx=ox+rr*math.sin(oa)
					sy=oy+rr*math.cos(oa)
					AI:SummonMonsterByPos(30313,sx,sy)
					tp=math.mod(a,10)
					if tp == 0 then
						AI:SummonMonsterByPos(30281,sx,sy)
					end
					a=a+1
				end
			end
		end
		
		cnnc=cnnc+1
		AI:SetEctypeVarShort(mapid,4,cnnc)
		
	end

