	----------------------------------------------------
	--		Copyright��PERFECT WORLD
	--		Modified��2009/11/07
	--		Author��˾�Ĳ�
	--		Class:	.Lua
	--		AIName��Main-90-Monster-55111.lua
	--		Backup��90��������˹��� ӥ������
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
	    
	    AI:AddSeekPos( 243 , 245 , 226 )
	    
	   
	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		if (( PosX == 245 ) and ( PosY == 226 )) then
	        AI:SetAIState(0)
	    end
	end
	