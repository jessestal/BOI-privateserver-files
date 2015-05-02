        --------------------------------------------
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/13
	--		Author:???
	--		Class: Lua
	--		AIName:shenpanshenyuan-51289.lua
	--		Backup:??6900
	--------------------------------------------- 
    function Event_OnTimer(nAI,nIndex, nCount)
        local AI = GetMonsterAI(nAI)
        
        if nIndex == 0 then
        	AI:SelfMurder()
        end
        
    end
    
    function Event_Thinking(nAI)
        local AI = GetMonsterAI(nAI)
        
        a = AI:GetArray(1)
        if a == 0 then
		--v = AI:HaveAttackTarget()
		--if v == true then
			--?????0.5????
        		--AI:SetTimer( 0 , 100 , 1 )
        			AI:AddSkill(8721,1)
           		AI:UseSkill(8721,1)
           		AI:ScreenText("Holy Bomb detonated!" , 1 )
           		AI:PlayEffect("skill\\Common\\Common_baozha_01\\tx_common_baozha_01.ini")
           		AI:SetTimer( 0 , 2000 , 1 )
           		AI:SetArray(1,1)
        	--end
        end
    end
    
	
    function Event_OnDead(nAI)
	    local AI = GetMonsterAI(nAI)
	  
    end             