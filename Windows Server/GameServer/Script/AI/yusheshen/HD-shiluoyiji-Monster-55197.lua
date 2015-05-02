	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/07
	--		Author:???
	--		Class:	.Lua
	--		AIName:HD-shiluoyiji-Monster-55197.lua
	--		Remark:???
	----------------------------------------------------

	
	function Event_OnTimer( nAI, nIndex, nCount)
		
		local AI = GetMonsterAI(nAI)
		if nIndex == 0 then
        --?? 
	        AI:Say("Try being wrapped up, Power of the Earth! ")
	        AI:AddSkill(8793,1)
	        AI:UseSkill(8793,1)
	    end
	    if nIndex == 1 then
	        --???? 
	        AI:Say("The gods said you were like sheep, so become them!")
	        AI:AddSkill(8794,1)
	        AI:UseSkill(8794,1)
	    end
	    if nIndex == 2 then
	        --???? 
	        AI:Say("Totems, burn! Look at the totems and be afraid!")
	        AI:SummonMonster(30164,1)
	    end
	end

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		
		t = AI:HaveAttackTarget()
		if t == false then
			AI:DelTimer(0)
			AI:DelTimer(1)
			AI:DelTimer(2) 
			AI:SetArray(1,0)
		else
			a = AI:GetArray(1)
			if a == 0 then
				AI:SetTimer(0,18000,65535)
				AI:SetTimer(1,25000,65535)
				AI:SetTimer(1,35000,65535)
				AI:SetArray(1,1)
			end
		end         
  end
		
	function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		end
	
	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
	end
	