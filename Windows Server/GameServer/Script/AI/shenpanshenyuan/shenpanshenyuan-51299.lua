        --------------------------------------------
	--
	--		Copyright��PERFECT WORLD
	--		Modified��2009/11/13
	--		Author�����
	--		Class: Lua
	--		AIName��shenpanshenyuan-51299.lua
	--		Backup��
	---------------------------------------------        
    --�����˹������ 
    function Event_OnTimer(nAI, nIndex, nCount)
        local AI = GetMonsterAI(nAI)
        
        if nIndex == 0 then
        --�ں�֮�� 
            AI:AddSkill(8729,3)
            AI:UseSkill(8729,3)
        end

    end                        
    
    
    function Event_Thinking(nAI)
        local AI = GetMonsterAI(nAI)
        a = AI:GetArray(1)
        if a == 0 then
            AI:SetTimer(0,1000,65535)
            AI:SetArray(1,1)
        end    
    end
    
    
    function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	    
    	    AI:AddSeekPos( 228 , 136 , 175 )
    	    AI:AddSeekPos( 228 , 110 , 175 )
	    
	end
	
	
       function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
	    local AI = GetMonsterAI(nAI)
	    
	    if (( PosX == 110 ) and ( PosY == 175 )) then
	    	AI:SummonMonsterByPos( 51299 , 110 , 175 )
	    	AI:Exit()
	    end
	    
	end
	
	function Event_OnDead(nAI)
	    local AI = GetMonsterAI(nAI)
	    
	    
	    
	end
    
    
    
    
    
	
                                                                               