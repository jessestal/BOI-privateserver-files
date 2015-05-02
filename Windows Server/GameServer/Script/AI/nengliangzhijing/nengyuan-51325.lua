        --------------------------------------------
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/13
	--		Author:?? 
	--		Class: Lua
	--		AIName:nengliangzhijing-51325.lua
	--		Backup:
	---------------------------------------------        
    --???????? 
    function Event_OnTimer(nAI, nIndex, nCount)
        local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
	        AI:AddSkill(9819,2)
	        AI:UseSkill(9819,2)
        end
        if nIndex == 1 then
	        AI:AddSkill(9819,4)
	        AI:UseSkill(9819,4)
        end
        if nIndex == 2 then 
	        AI:AddSkill(9819,6)
	        AI:UseSkill(9819,6)
        end
        if nIndex == 3 then
	        AI:AddSkill(9819,8)
	        AI:UseSkill(9819,8)                                      
        end  
    end     

    function Event_Thinking(nAI)
        local AI = GetMonsterAI(nAI)
        lv = AI:GetLevel()
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
        a = AI:GetArray(1)        
        if a == 0 then
            if HP < HPMAX * 0.9 then 
                if lv < 60 then
                    AI:Say("Feel the wrath of the Energy Well's radiation!")
                    AI:AddSkill(9819,2)
	                AI:UseSkill(9819,2)
	        	    AI:SetTimer(0,5000,65535)
	        	    AI:SetArray(1,1)
	        	end
                if lv >= 60 then
                    if lv < 75 then
                        AI:Say("Feel the wrath of the Energy Well's radiation!")
	                    AI:AddSkill(9819,4)
	                    AI:UseSkill(9819,4)                        
	        	        AI:SetTimer(1,5000,65535)
	        	        AI:SetArray(1,1)
                    end  
                end
                if lv >= 75 then
                    if lv < 90 then
                        AI:Say("Feel the wrath of the Energy Well's radiation!")
	                    AI:AddSkill(9819,6)
	                    AI:UseSkill(9819,6)                        
	        	        AI:SetTimer(2,5000,65535)
	        	        AI:SetArray(1,1)
	        	    end    
	        	end
                if lv >= 90 then
                    if lv < 116 then
                        AI:Say("Feel the wrath of the Energy Well's radiation!")
	                    AI:AddSkill(9819,8)
	                    AI:UseSkill(9819,8)                                   
	        	        AI:SetTimer(3,5000,65535)
	        	        AI:SetArray(1,1)
                    end  
                end
            end
        end
    end              
                                       
    function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	    AI:AddSeekPos(249,154,173)
	    AI:AddSeekPos(249,154,200)
	end
    function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
        local AI = GetMonsterAI(nAI)
        if ((PosX==154) and (PosY==173)) then
            AI:Say("You can't defeat me!")
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
    		AI:IncreaseEctypeTDFailure()
    		AI:IncreaseEctypeTDFailure()
    		AI:IncreaseEctypeTDFailure()
    		AI:IncreaseEctypeTDFailure()
    		AI:IncreaseEctypeTDFailure()
    		AI:IncreaseEctypeTDFailure()
    		AI:IncreaseEctypeTDFailure()
    		AI:IncreaseEctypeTDFailure()
    		AI:IncreaseEctypeTDFailure()
    	else
    		--???????????
    		AI:IncreaseEctypeTDSuccess()
    		AI:IncreaseEctypeTDSuccess()
    		AI:IncreaseEctypeTDSuccess()
    		AI:IncreaseEctypeTDSuccess()
    		AI:IncreaseEctypeTDSuccess()
    		AI:IncreaseEctypeTDSuccess()
    		AI:IncreaseEctypeTDSuccess()
    		AI:IncreaseEctypeTDSuccess()
    		AI:IncreaseEctypeTDSuccess()
    		AI:IncreaseEctypeTDSuccess()
    	end
    end
	
                                                                               