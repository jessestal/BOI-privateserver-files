        --------------------------------------------
	--
	--		Copyright£ºPERFECT WORLD
	--		Modified£º2009/11/13
	--		Author£ºÌÆÒú 
	--		Class: Lua
	--		AIName£ºshenpanshenyuan-51306.lua
	--		Backup£º
	---------------------------------------------        
    --ÓÈÀòµÏË¹µÄÐÄÁé 
    function Event_OnTimer(nAI, nIndex, nCount)
        local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --»ÚºÞÖ®Á´ 
            AI:AddSkill(8729,3)
            AI:UseSkill(8729,3)
        end
        if nIndex == 1 then
        --¿ªÆô»ÚºÞÖ®Á´
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
    
    
    
    
    
	
                                                                               