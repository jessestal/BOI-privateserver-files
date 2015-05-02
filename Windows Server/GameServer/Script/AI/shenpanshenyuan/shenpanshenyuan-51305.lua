        --------------------------------------------
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/13
	--		Author:?? 
	--		Class: Lua
	--		AIName:shenpanshenyuan-51305.lua
	--		Backup:
	---------------------------------------------        
    --??????? 
    function Event_OnTimer(nAI, nIndex, nCount)
        local AI = GetMonsterAI(nAI)
    end    

    function Event_Thinking(nAI)
        local AI = GetMonsterAI(nAI)
    end
    
    function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	    
	    AI:AddSeekPos(228,112,216)
    end
    function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
        local AI = GetMonsterAI(nAI)
        if ((PosX==112) and (PosY==216)) then
            AI:ScreenText("The resentment has been directed to Eurydice. It will cause a devastating explosion.",1) 
            AI:AddSkill(9816,1)
            AI:UseSkill(9816,1)
            AI:PlayEffect("skill\\Knight\\chaofeng\\fire\\tx_knight_chaofeng_fire.ini")
            AI:SelfMurder()
        end    
    end       
    function Event_OnDead(nAI)
	    local AI = GetMonsterAI(nAI)
            AI:Say("Explode, my soul! ")
    end   
	
                                                                               