        --------------------------------------------
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/13
	--		Author:?? 
	--		Class: Lua
	--		AIName:shenpanshenyuan-51303.lua
	--		Backup:
	---------------------------------------------        
    --????????? 
    function Event_OnTimer(nAI, nIndex, nCount)
        local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --???????? 
            AI:ScreenText("Latamantis's Spiritual Shards appeared! ",1)   
        end
    end    

    function Event_Thinking(nAI)
        local AI = GetMonsterAI(nAI)
            AI:SetTimer(0,1000,1) 
    end
    
    function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
	    local AI = GetMonsterAI(nAI)
	end        
                       
    function Event_OnDead(nAI)
	    local AI = GetMonsterAI(nAI)
	        AI:ScreenText("The destruction of Latamantis's Spiritual Shards debuffed Shadow Trap.",1) 
            AI:AddSkill(8861,7)
            AI:UseSkill(8861,7)
    end        
	
                                                                               