        --------------------------------------------
	--
	--		Copyright��PERFECT WORLD
	--		Modified��2009/11/23
	--		Author��κ��԰ 
	--		Class: Lua
	--		AIName��shenpanshenyuan-51309.lua
	--		Backup��
	---------------------------------------------        
    --����֮�� 
          
    function Event_Thinking(nAI)
        local AI = GetMonsterAI(nAI)
    end
	
	function Event_OnDead(nAI)
	    local AI = GetMonsterAI(nAI)
	    AI:AddSkill(8871,1)
        AI:UseSkill(8871,1)
	end
    
    
    
    
    
	
                                                                               