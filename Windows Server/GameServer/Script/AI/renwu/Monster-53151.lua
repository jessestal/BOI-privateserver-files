	---------------------------------------------------
	--		Copyright£ºPERFECT WORLD
	--		Modified£º2011/10/10
	--		Author£ºÖì½¨³¼
	--		Class:	Monster-53151.lua
	--		AIName£º
	--		Remark£º
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0 then
			AI:AddSkill(2355,1)
			AI:UseSkill(2355,1)
		end
		
--		if nIndex == 1 then
--			AI:SelfMurder()
--			AI:Exit()
--		end
	end
	
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		t = AI:HaveAttackTarget()
 		HP = AI:GetHP()
    HPMAX = AI:GetHPMax()
    a = AI:GetArray(1)
--		if t == false then
--					if a > 0 then
--						if HP == HPMAX then
--		    				AI:DelTimer(0)
--		    				AI:SetArray(1,0)
--		    		end
--	    		end
--    else	
			if a == 0 then
--				if HP < HPMAX then
					--AI:AddSkill(2178,1)
					--AI:UseSkill(2178,1)
					AI:SetTimer(0,1000,65535)
					AI:SetArray(1,2)
--				end
			end
--		end
	end
	
	function Event_ReadSeekPos(nAI)
    local AI = GetMonsterAI(nAI)
        
    mapid = AI:GetMapID()
    AI:AddSeekPos( mapid , 209 , 100 )
    
  end
  
  function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
  	local AI = GetMonsterAI(nAI)
  	
  	if ((PosX == 209 ) and  (PosY == 100 )) then
			AI:SelfMurder()
			AI:Exit()
		end
		
	end
