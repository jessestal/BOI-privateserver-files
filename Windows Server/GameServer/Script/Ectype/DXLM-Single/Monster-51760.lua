----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2011/08
--		Author:???
--		TaskName:51759	v3.30	????
----------------51760	v3.30	???
--		TaskID:
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--????
			a = AI:GetArray(1)
			if a == 1 then
--				AI:ChangeFaction(1)
				AI:GetRandTarget()
				AI:AddSkill(2174,1)
				AI:UseSkill(2174,1)
				hpstack=AI:GetEctypeVarInteger(mapid,113)--?????hp(???????)
--AI:Say("hpstack="..tostring(hpstack))
		 		hpline=AI:GetEctypeVarShort(mapid,87)--???--???0--???????--???????1
--AI:Say("hpline="..tostring(hpline))
				hpmax=AI:GetHPMax()
--AI:Say("hpmax="..tostring(hpmax))
				hpn=AI:GetHP()
--AI:Say("hpn="..tostring(hpn))
				losthp=hpmax-hpstack--???????HP
--AI:Say("losthp="..tostring(losthp))
				hplineEX=100*hpline--?????????-????*10%
--AI:Say("hplineEX="..tostring(hplineEX))
				losthpline=losthp/hpmax*1000--???????
--AI:Say("losthpline="..tostring(losthpline))
				if losthpline > hplineEX then
					losthp=hpmax/1000*hplineEX--??????
--AI:Say("losthp="..tostring(losthp))
				end
				AI:LoseHPInstant(losthp)
				AI:SetArray(1,2)
				AI:SetArray(9,1)
			end
		end

		if nIndex == 2 then--????
			a = AI:GetArray(2)
			if a == 1 then
				rand = AI:GetRand(100)
				if rand < 100 then
					AI:AddSkill(2166,1)
					AI:UseSkill(2166,1)
				end
			end
		end--????end
		
		if nIndex == 3 then--????
			a = AI:GetArray(3)
			if a == 1 then
				PosX=AI:GetPosX()
				PosY=AI:GetPosY()
				AI:SummonMonsterByPos(51759,PosX,PosY,0)
				AI:SummonMonsterByPos(51759,PosX,PosY,0)
				AI:SummonMonsterByPos(51759,PosX,PosY,0)
				AI:SummonMonsterByPos(51759,PosX,PosY,0)
				AI:SummonMonsterByPos(51759,PosX,PosY,0)
				
				AI:SummonMonsterByPos(51759,PosX,PosY,0)
				AI:SummonMonsterByPos(51759,PosX,PosY,0)
				AI:SummonMonsterByPos(51759,PosX,PosY,0)
				AI:SummonMonsterByPos(51759,PosX,PosY,0)
				AI:SummonMonsterByPos(51759,PosX,PosY,0)
				
				AI:SummonMonsterByPos(51758,PosX,PosY,0)
				
				AI:SetArray(3,2)
				AI:Exit()
			end
		end--????end
	end
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		hpn = AI:GetHP()
		hpmax = AI:GetHPMax()
		hppct = hpn/hpmax*1000
--AI:Say("hppct="..tostring(hppct))
 		t = AI:HaveAttackTarget()
 		a = AI:GetArray(1)

		hpline=AI:GetEctypeVarShort(mapid,87)
		if hpline == 0 then--????????,????line??hp?????
			AI:SetEctypeVarInteger(mapid,113,hpmax)
		end
		
		if t == false then
			if a > 0 then
				if hpn == hpmax then
					CanBeShutDown = AI:GetArray(9)
					if CanBeShutDown == 1 then
				    AI:DelTimer(0)
				    AI:DelTimer(1)
				    AI:DelTimer(2)
				    AI:DelTimer(3)
		    		AI:SetArray(1,0)
		    		AI:SetArray(2,0)
		    		AI:SetArray(3,0)
		    		AI:SetArray(4,0)
		    		AI:SetArray(9,0)
		    		AI:SetEctypeVarShort(mapid,87,0)
					end
				end
			end
		else
		-----------------------------------------------------------normal start
			if a == 0 then --?????
				AI:SetTimer(1,500,1)
				AI:SetArray(1,1)
--				AI:ChangeFaction(5)
		    AI:SetArray(9,0)
				AI:Say("Ants! Come in and die!")
				AI:ScreenText( "Ants! Come in and die!" , 2)
				AI:GetRandTarget()
			end
			
			a = AI:GetArray(2)
			if a == 0 then --????
				AI:SetTimer(2,12000,9999)
				AI:SetArray(2,1)
			end
			
			a = AI:GetArray(1)
			if a == 2 then --????
				hpline2=hpline+1
				hpline=900-hpline*100
				if hppct < hpline then
					AI:SetEctypeVarInteger(mapid,113,hpn)
--AI:Say("hpn="..tostring(hpn))
					AI:SetEctypeVarShort(mapid,87,hpline2)
--AI:Say("hpline2="..tostring(hpline2))
					AI:SetTimer(3,500,1)
					AI:SetArray(3,1)
					AI:SetArray(1,3)
					AI:ScreenText( "Hahaha" , 2)
					rr=AI:GetRand(23)
					px=229+rr
					rr=AI:GetRand(18)
					py=95+rr
					AI:SetEctypeVarShort(mapid,88,px)
					AI:SetEctypeVarShort(mapid,89,py)
					AI:SetEctypeVarShort(mapid,86,0)
					PosX=AI:GetPosX()
					PosY=AI:GetPosY()
					AI:SummonMonsterByPos(51759,PosX,PosY,0)
					AI:SummonMonsterByPos(51759,PosX,PosY,0)
					AI:SummonMonsterByPos(51759,PosX,PosY,0)
					AI:SummonMonsterByPos(51759,PosX,PosY,0)
					AI:SummonMonsterByPos(51759,PosX,PosY,0)
					
					AI:SummonMonsterByPos(51759,PosX,PosY,0)
					AI:SummonMonsterByPos(51759,PosX,PosY,0)
					AI:SummonMonsterByPos(51759,PosX,PosY,0)
					AI:SummonMonsterByPos(51759,PosX,PosY,0)
					AI:SummonMonsterByPos(51759,PosX,PosY,0)
				end
			end
			
			
-------------------------------------------------------------------normal start
		end


	end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
--		local AI = GetMonsterAI(nAI)
--		local mapid = AI:GetMapID()
--		--AI:ScreenText( "" , 2)
		AI:DelTimer(0)
		AI:DelTimer(1)
		AI:DelTimer(2)
		
	end
	
	
	
	
	
