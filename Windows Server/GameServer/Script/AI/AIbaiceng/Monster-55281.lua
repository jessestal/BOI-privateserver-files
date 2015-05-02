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
		AI:Say("Sinful light!")
		AI:PlayAction( "specialidle" , 1 ,0 )
		AI:PlayAction("common\\yangguang\\tx_yangguang.ini" , 0, 1)  
		AI:UseSkill(2218, 1)
	end
	
	if nIndex == 1 then
		--???
		AI:Say("Bathe in sin!")
		AI:PlayAction( "attack2" , 1 ,0 )
		AI:PlayAction("skill\\pet\\chunv\\hit\\tx_chunv_hit.ini" , 0, 1)  
		AI:UseSkill(2219, 1)
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetArray(0)
	HP = AI:GetHP()
	HPMAX = AI:GetHPMax()
	
	if a == 0 and HP < HPMAX then
		AI:Say("Sinful light!")
		AI:PlayAction( "specialidle" , 1 ,0 )
		AI:PlayAction("common\\yangguang\\tx_yangguang.ini" , 0, 1)
		AI:AddSkill(2218, 1) 
		AI:UseSkill(2218, 1)
		AI:AddSkill(2219, 1)
		AI:SetTimer(0,20000,1)
		AI:SetTimer(1,12000,1)
		AI:SetArray(0,1)
	end
	
end
	
function Event_OnDead(nAI)	
	local AI = GetMonsterAI(nAI)
		AI:Say("My wings..have fallen.")
		AI:DelTimer(0)
		AI:DelTimer(1)
		AI:SetArray(0,0)
		
end