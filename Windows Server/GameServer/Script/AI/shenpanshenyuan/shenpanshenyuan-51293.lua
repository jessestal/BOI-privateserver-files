        --------------------------------------------
	--
	--		Copyright£ºPERFECT WORLD
	--		Modified£º2009/11/13
	--		Author£ºÑîº£ÓÂ
	--		Class: Lua
	--		AIName£ºshenpanshenyuan-51293.lua
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
	    
    	    AI:AddSeekPos( 228 , 133 , 163 )
    	    AI:AddSeekPos( 228 , 133 , 177 )
	    
	end
	
	
       function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
	    local AI = GetMonsterAI(nAI)
	    
	    if (( PosX == 133 ) and ( PosY == 177 )) then
	    	AI:SummonMonsterByPos( 51293 , 133 , 177 )
	    	AI:Exit()
	    end
	    
	end
	
	function Event_OnDead(nAI)
	    local AI = GetMonsterAI(nAI)
	    
	    
	    
	end
    
    
    
    
    
	
                                                                               