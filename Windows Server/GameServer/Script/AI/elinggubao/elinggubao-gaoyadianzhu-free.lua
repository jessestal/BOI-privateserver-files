--****************************************
	--
	--		Copyright：PERFECT WORLD
	--		Modified：2010/04/09
	--		Author：黄晨
	--		Class: Lua
	--		AIName：elinggubao-gaoyadianzhu-free.lua
	--		Backup：恶灵古堡自由攻击闪电
	--****************************************


function Event_OnTimer(nAI,nIndex, nCount)
        local AI = GetMonsterAI(nAI)
        
        if nIndex == 0 then
        --追击18秒后自杀
            AI:Exit()
        end 
end




function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetArray(4)
	if a == 0 then
		AI:SetTimer(0,18000,1)--自我消失计时器
		AI:AddSkill(2047,1)
     		AI:SetArray(4,1)
    	end
	
	b = AI:GetTargetDistance()--取得当前追击目标的距离
	if b <= 2 then
		 --释放技能并消失
            	AI:UseSkill(2047,1)
            	AI:Exit()
        end
end

