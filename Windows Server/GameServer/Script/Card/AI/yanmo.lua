	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/8/12
	--		Author:???
	--		Class:	.Lua
	--		AIName:yanmo.lua
	--		Remark:??
	----------------------------------------------------
	
function Event_OnTimer(nAI, nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		AI:Say("BURN! BURNNN!! AAAA-HA-HA-HA-HA!!!")
		AI:AddSkill(2408, 1)
		AI:UseSkill(2408, 1)
		AI:SetTimer(1,200,10)
		AI:SetTimer(2,2000,1)
	end
	
	if nIndex == 1 then
		b = AI:GetArray(1)
		b = b * 1.3
		AI:SetDir( b )
	end
	
	if nIndex == 2 then
		AI:Exit()
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetArray(0)
	
	if a == 0 then
		AI:SetDir( 90 )
		AI:PlayAction("specialidle", 1, 0)
		AI:PlayAction("common\\story\\lightpillar2\\fire\\tx_lightpillar2_fire.ini",1,1)
		AI:SetTimer(0,1000,1)
		AI:SetArray(0,1)
		AI:SetArray(1,90)
	end
	
end