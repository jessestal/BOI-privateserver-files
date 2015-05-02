	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/23
	--		Author:???
	--		Class:.Lua
	--		AIName:Monster-55281.lua
	--		Remark:
	----------------------------------------------------
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		--???
		AI:Say("Winter shall come!")
		AI:PlayAction( "specialidle" , 1 ,0 )
		AI:PlayAction("common\\daxue\\tx_daxue.ini" , 0, 1)  
		AI:UseSkill(2222, 1)
	end
	
	if nIndex == 1 then
		--???
		AI:Say("Frozen Rain!")
		AI:PlayAction( "attack2" , 1 ,0 )
		AI:PlayAction("Skill\Taoist\bingbaoshu\fire\tx_taoist_bingbaoshu_fire.ini" , 0, 1)  
		AI:UseSkill(2223, 1)
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetArray(0)
	HP = AI:GetHP()
	HPMAX = AI:GetHPMax()
	
	if a == 0 and HP < HPMAX then
		AI:Say("Winter shall come!")
		AI:PlayAction( "specialidle" , 1 ,0 )
		AI:PlayAction("common\\daxue\\tx_daxue.ini" , 0, 1)  
		AI:AddSkill(2222, 1) 
		AI:UseSkill(2222, 1)
		AI:AddSkill(2223, 1)
		AI:SetTimer(0,20000,1)
		AI:SetTimer(1,12000,1)
		AI:SetArray(0,1)
	end
	
end
	
function Event_OnDead(nAI)	
	local AI = GetMonsterAI(nAI)
		AI:Say("Has Summer arrived early..")
		AI:DelTimer(0)
		AI:DelTimer(1)
		AI:SetArray(0,0)
		
end