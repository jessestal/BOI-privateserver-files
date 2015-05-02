        --------------------------------------------
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/13
	--		Author:?? 
	--		Class: Lua
	--		AIName:nengliangzhijing-51350.lua
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
	    AI:AddSeekPos(249,131,167)
	    AI:AddSeekPos(249,142,167)
	    AI:AddSeekPos(249,142,180)
	    AI:AddSeekPos(249,131,180)
	    AI:AddSeekPos(249,131,200)
	end
    function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
        local AI = GetMonsterAI(nAI)
        if ((PosX==131) and (PosY==167)) then
            AI:Say("For Lord Minos! Charge!")
        end    
        if ((PosX==142) and (PosY==167)) then 
            AI:Say("Keep marching! For Lord Minos!")
        end        
        if ((PosX==142) and (PosY==180)) then 
            AI:Say("We are needed in the Energy Well.")
        end    
        if ((PosX==131) and (PosY==180)) then
            AI:Say("We must claim the Energy well in Lord Minos' name!")
        end                        
        if ((PosX==131) and (PosY==200)) then
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
	
                                                                               