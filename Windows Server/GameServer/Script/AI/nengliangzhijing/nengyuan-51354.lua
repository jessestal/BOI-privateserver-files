        --------------------------------------------
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/13
	--		Author:?? 
	--		Class: Lua
	--		AIName:nengliangzhijing-51354.lua
	--		Backup:
	---------------------------------------------        
    --????normal
    function Event_OnTimer(nAI, nIndex, nCount)
        local AI = GetMonsterAI(nAI)
    end    

    function Event_Thinking(nAI)
        local AI = GetMonsterAI(nAI)
    end
    
    function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	    AI:AddSeekPos(249,154,173)
	    AI:AddSeekPos(249,154,200)
	end
    function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
        local AI = GetMonsterAI(nAI)
        if ((PosX==154) and (PosY==173)) then
            AI:Say("We must claim the Energy well in Lord Minos' name!")
        end    
        if ((PosX==154) and (PosY==200)) then
            AI:Say("No one will stop us! The Energy Well is ours!  ")
            AI:SelfMurder() 
        end    
    end       
    function Event_OnDead(nAI)
	   local AI = GetMonsterAI(nAI)
    	
    	isArrive = AI:IsArriveLastSeekPos()
    	if isArrive == true then
    		--??????????
    		AI:IncreaseEctypeTDFailure()
    	else
    		--???????????
    		AI:IncreaseEctypeTDSuccess()
    	end
    end
	
                                                                               