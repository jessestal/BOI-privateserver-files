	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/23
	--		Author:������
	--		Class:.Lua
	--		AIName:55507-xiyin.lua
	--		Remark:�ڰ���ʹʬ��
	----------------------------------------------------
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetArray(0)
	mapid = AI:GetMapID()
	b = AI:GetEctypeVarShort(mapid, 98 )
	
	if b == 2 and a == 0 then
		AI:SelfMurder()
		AI:SetArray(0 ,1)
	end
	
end