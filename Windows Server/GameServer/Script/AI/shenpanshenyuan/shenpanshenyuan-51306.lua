        --------------------------------------------
	--
	--		Copyright��PERFECT WORLD
	--		Modified��2009/11/13
	--		Author������ 
	--		Class: Lua
	--		AIName��shenpanshenyuan-51306.lua
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
        if nIndex == 1 then
        --�����ں�֮��
            AI:SetTimer(0,1000,65535)
        end
    end                        
    function Event_Thinking(nAI)
        local AI = GetMonsterAI(nAI)
        a = AI:GetArray(1)
        if a == 0 then
            AI:SetTimer(1,2000,1)
            AI:SetArray(1,1)
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
    
    
    
    
    
	
                                                                               