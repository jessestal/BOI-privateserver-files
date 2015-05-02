	----------------------------------------------------
	--		Copyright��PERFECT WORLD
	--		Modified��2009/11/07
	--		Author��˾�Ĳ�
	--		Class:	.Lua
	--		AIName��Main-90-Monster-55115.lua
	--		Backup��90��������˹��� ��˹����
	----------------------------------------------------
	
	
	function Event_OnTimer( nAI, nIndex, nCount)
		
		local AI = GetMonsterAI(nAI)
		if nIndex == 0 then
		-- 
			AI:SetAIState(0)
		end
		
	end

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		
		a = AI:GetArray(1)
		if a == 0 then 
			AI:SetTimer(0,8000,1)
			AI:SetArray(1,1)
		end
    end
		
	function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	    
	    AI:AddSeekPos( 243 ,241 , 226 )
	    
	   
	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		if (( PosX == 241 ) and ( PosY == 226 )) then
	        AI:SetAIState(0)
	    end
	end
	