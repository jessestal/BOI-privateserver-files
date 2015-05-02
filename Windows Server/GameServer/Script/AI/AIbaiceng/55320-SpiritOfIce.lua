	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/10
	--		Author:������
	--		Class:	.Lua
	--		AIName:55320-SpiritOfIce.lua
	--		Remark:��ѩ֮�飨��ѩ���ʵ��ٻ��֣�
	----------------------------------------------------
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		--�ͷż��ټ���
		AI:AddSkill(2209, 1)
		AI:UseSkill(2209, 1)
		AI:PlayAction("skill\Common\Bingshuangxianjing\keep2\tx_Ranger_Bingshuangxianjing_keep2.ini", 1, 1)
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	mapid = AI:GetMapID()
	a = AI:GetArray(0)
	
	if a == 0 then
		AI:PlayAction("skill\Common\Bingshuangxianjing\keep2\tx_Ranger_Bingshuangxianjing_keep2.ini", 1, 1)
		AI:AddSkill(2209, 1)
		AI:UseSkill(2209, 1)
		AI:SetTimer(0,1000,65535)
		AI:SetArray(0,1)
	end
	
	dead1 = AI:GetEctypeVarShort(mapid,3)
	dead2 = AI:GetEctypeVarShort(mapid,4)
	if dead1 == 1 and dead2 == 1 then
		AI:Exit()
	end
	
end