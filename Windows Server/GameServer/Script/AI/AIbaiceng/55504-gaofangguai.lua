	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/23
	--		Author:张文宇
	--		Class:.Lua
	--		AIName:55504-gaofangguai.lua
	--		Remark:光明天使尸体
	----------------------------------------------------
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetArray(0)
	mapid = AI:GetMapID()
	b = AI:GetEctypeVarShort(mapid, 97 )
	
	if b == 2 and a == 0 then
		AI:SelfMurder()
		AI:SetArray(0 ,1)
	end
	
end