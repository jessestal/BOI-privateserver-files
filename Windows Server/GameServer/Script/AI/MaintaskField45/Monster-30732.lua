	--****************************************
	--
	--		Copyright��PERFECT WORLD
	--		Modified��2012/04/09
	--		Author���콨��
	--		Class: Lua
	--		AIName��Monster-30732.lua
	--		Backup�������Ա���Ч�� 
	--****************************************


function Event_OnTimer(nAI,nIndex, nCount)
        local AI = GetMonsterAI(nAI)
        
        if nIndex == 0 then
        --�ͷż��� 
            AI:AddSkill(2040,1)
            AI:UseSkill(2040,1)
        end  
        
        if nIndex == 1 then
        --������Ч 
           AI:PlayEffect("common\\gaobaozhadan\\fire\\tx_common_gaobaozhadan_fire_1.ini")
        end  
end


function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetArray(4)
	if a == 0 then
		AI:SetTimer(0,3000,1)
		AI:SetTimer(1,1000,1)
     		AI:SetArray(4,1)
    	end    
	
end

function Event_OnDead(nAI)
	local AI = GetMonsterAI(nAI)
end