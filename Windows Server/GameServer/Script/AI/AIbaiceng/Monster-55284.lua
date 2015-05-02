	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/23
	--		Author:???
	--		Class:.Lua
	--		AIName:Monster-55284.lua
	--		Remark:
	----------------------------------------------------
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		--???
		AI:Say("Freeze!")
		AI:PlayAction( "specialidle" , 1 ,0 )
		AI:PlayAction("common\\xiaoxue\\tx_xiaxue.ini" , 0, 1)  
		AI:UseSkill(2214, 1)
	end
	
	if nIndex == 1 then
		--???
		AI:Say("Frostburn Fire!")
		AI:PlayAction( "attack2" , 1 ,0 )
		AI:PlayAction("skill\\pet\\xueji\\fire\\tx_pet_xueji_fire.ini" , 0, 1)
		AI:PlayAction("skill\\Monster\\aobao\\fire\\tx_aobao_fire.ini" , 0, 1)
		AI:UseSkill(2215, 1)
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetArray(0)
	HP = AI:GetHP()
	HPMAX = AI:GetHPMax()
	
	if a == 0 and HP < HPMAX then
		AI:Say("Freeze!")
		AI:PlayAction( "specialidle" , 1 ,0 )
		AI:PlayAction("common\\xiaoxue\\tx_xiaxue.ini" , 0, 1) 
		AI:AddSkill(2214, 1) 
		AI:UseSkill(2214, 1)
		AI:AddSkill(2215, 1)
		AI:SetTimer(0,20000,1)
		AI:SetTimer(1,12000,1)
		AI:SetArray(0,1)
	end
	
end
	
function Event_OnDead(nAI)	
	local AI = GetMonsterAI(nAI)
		AI:Say("I cannot protect this place any more.forgive me...")
		AI:DelTimer(0)
		AI:DelTimer(1)
		AI:SetArray(0,0)
		
end