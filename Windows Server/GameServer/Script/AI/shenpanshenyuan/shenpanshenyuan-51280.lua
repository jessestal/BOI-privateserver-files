        --------------------------------------------
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/13
	--		Author:?? 
	--		Class: Lua
	--		AIName:shenpanshenyuan-51280.lua
	--		Backup:
	--------------------------------------------- 
    function Event_OnTimer(nAI,nIndex, nCount)
        local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --?? 
            AI:Say("Stop running, you dishonorable intruders.")
            AI:AddSkill(8861,18)
            AI:UseSkill(8861,18) 
        end
    end
        
    function Event_Thinking(nAI)
        local AI = GetMonsterAI(nAI)
         v = AI:HaveAttackTarget()
         if v == false then
                    AI:DelTimer(0)
                    AI:SetArray(1,0)
         else
            HP = AI:GetHP()
            HPMAX = AI:GetHPMax()
            a = AI:GetArray(1)
            if a == 0 then
                if HP < HPMAX then
                    AI:SetTimer(0,3000,65535)
                    AI:SetArray(1,1)
                end    
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