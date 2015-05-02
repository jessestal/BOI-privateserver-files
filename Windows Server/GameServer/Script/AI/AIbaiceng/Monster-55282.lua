	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/23
	--		Author:???
	--		Class:.Lua
	--		AIName:Monster-55282.lua
	--		Remark:
	----------------------------------------------------
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		--???
		AI:Say("Acid Rain!")
		AI:PlayAction( "specialidle" , 1 ,0 )
		AI:PlayAction("common\\dayu\\tx_dayu.ini" , 0, 1)
		AI:UseSkill(2220, 1)
	end
	
	if nIndex == 1 then
		--???
		AI:Say("Toxic Gas!")
		AI:PlayAction( "attack2" , 1 ,0 )
		AI:PlayAction("skill\\pet\\Qinglong_Tenyun\\tx_Qinglong_Tenyun_Fire.ini" , 0, 1)
    AI:PlayAction("skill\\Monster\\boss\\anhun\\fire\\tx_anhun_fire.ini" , 0, 1)  
		AI:UseSkill(2221, 1)
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetArray(0)
	HP = AI:GetHP()
	HPMAX = AI:GetHPMax()
	
	if a == 0 and HP < HPMAX then
		AI:Say("Acid Rain!")
		AI:PlayAction( "specialidle" , 1 ,0 )
		AI:PlayAction("common\\dayu\\tx_dayu.ini" , 0, 1)
		AI:AddSkill(2220, 1) 
		AI:UseSkill(2220, 1)
		AI:AddSkill(2221, 1)
		AI:SetTimer(0,20000,1)
		AI:SetTimer(1,12000,1)
		AI:SetArray(0,1)
	end
	
end
	
function Event_OnDead(nAI)	
	local AI = GetMonsterAI(nAI)
		AI:Say("You cannot prevail against the will of gods...")
		AI:DelTimer(0)
		AI:DelTimer(1)
		AI:SetArray(0,0)
		
end