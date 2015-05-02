	------------------------------------------
	--
	--		Copyright£ºPERFECT WORLD
	--		Modified£º2011/02/21
	--		Author£ºÌÆÒú
	--		AIName£ºEctype-suoer-59236.lua
	--		AIID£ºÀ×ÉñË÷¶ûÉÁµç
	--
	------------------------------------------

	function Event_OnTimer(nAI,nIndex, nCount)
       		local AI = GetMonsterAI(nAI)
       		if nIndex == 0 then
        		AI:AddSkill(3879,1)
        		AI:UseSkill(3879,1)
        	end
        	if nIndex == 1 then
        		if atk == 0 then
        			AI:SelfMurder()
        		end	
        	end	      
	end
	
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		a = AI:GetArray(1)
		if a == 0 then
      			AI:SetTimer(0 , 1000 , 65535)
      			AI:SetTimer(1 , 5000 , 65535)
      			AI:SetArray(1,1) 
       		end 
	end
	
	function Event_ReadSeekPos(nAI)
	    	local AI = GetMonsterAI(nAI)
	   	local ectypeID = AI:GetMapID()
	   	local rightPosX = AI:GetPosX()
		local rightPosY = AI:GetPosY()
	    	AI:AddSeekPos( ectypeID , rightPosX - 15  , rightPosY)
	end
	
	function Event_ArriveSeekPos(nAI , MapID , PosX , PosY)
		
	end