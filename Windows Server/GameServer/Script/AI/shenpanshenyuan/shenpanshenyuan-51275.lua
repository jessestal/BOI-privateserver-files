        --------------------------------------------
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/13
	--		Author:?? 
	--		Class: Lua
	--		AIName:shenpanshenyuan-51275.lua
	--		Backup:
	--------------------------------------------- 
    function Event_OnTimer(nAI,nIndex, nCount)
        local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --??
            AI:Say("There! Magic Swirl!")
            AI:AddSkill(8861,19)
            AI:UseSkill(8861,19) 
        end
    end
        
    function Event_Thinking(nAI)
        local AI = GetMonsterAI(nAI)
        v = AI:HaveAttackTarget()
        if v == false then
                AI:DelTimer(0)
                AI:SetArray(1,0)
        else
                a = AI:GetArray(1)
            if a == 0 then
                    --AI:Say("There! Magic Swirl!")
                    AI:SetTimer(0,10000,65535)
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