
	--****************************************
	--
	--		Copyright��PERFECT WORLD
	--		Modified��2012/10/16
	--		Author���ܳ��`
	--		Class: Lua
	--		AIName��Mon-youxing-Halloween-PICK.lua
	--		Backup����ʥ�����е��ҹ�
	--****************************************
function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		if nIndex == 1 then--����ִ��
			a = AI:GetArray(1)
			
		
			
		end--����ִ�н���

	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

 			
				AI:SetTimer(1,5000,90)
			
end
			----------------------------------------------------------normal end
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
	end
	
	
	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
	end

--		test=AI:GetEctypeVarShort(mapid,99)
--		if test = 1 then--����AI����
--			AI:Say("hppct="..tostring(hppct))
--			AI:SetEctypeVarShort(mapid,99,0)
--		end

	--functionEvent_ThinkingEND

	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
	    x = AI:GetPosX()
	   	y = AI:GetPosY()
	   	MonsterID = 32326
	    AI:SummonMonsterByPos(MonsterID,x,y)
	end
