        --------------------------------------------
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/13
	--		Author:?? 
	--		Class: Lua
	--		AIName:shenpanshenyuan-51271.lua
	--		Backup:
	--------------------------------------------- 
    function Event_OnTimer(nAI,nIndex, nCount)
        local AI = GetMonsterAI(nAI)
    end
    function Event_Thinking(nAI)
        local AI = GetMonsterAI(nAI)
         HP = AI:GetHP()
         HPMAX = AI:GetHPMax()
					a = AI:GetArray(1)
          if a == 0 then
        		if HP < HPMAX * 0.1 then
            	AI:ScreenText("Dragon Guard Lead is enraged! He is charging up for a final attack! ",1)
	        		AI:AddSkill(8861,17)
	        		AI:UseSkill(8861,17)
	        		AI:SetArray(1,1)
	        	end  
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