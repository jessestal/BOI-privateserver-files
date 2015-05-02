	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/14
	--		Author:张文宇
	--		Class:	.Lua
	--		AIName:55312-ShadowOfPan.lua
	--		Remark:潘恩的幻影
	----------------------------------------------------
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		--释放晕眩技能
		AI:AddSkill(2191, 1)
		AI:UseSkill(2191, 1)
	end
	
	if nIndex == 1 then
		--自杀
		AI:Exit()
	end
		
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetArray(0)
	
	if a == 0 then
		AI:PlayAction("skill\\Common\\common_buff\\keep\\tx_common_buff_keep_orange.ini", 1, 1)
		AI:AddSkill(2191, 1)
		AI:UseSkill(2191, 1)
		AI:SetTimer(0,1000,65535)
		AI:SetArray(0,1)
		AI:SetTimer(1,60000,1)
	end
	
end
	
function Event_ReadSeekPos(nAI)			
	local AI = GetMonsterAI(nAI)		
	
	--假定地图坐标为50-100
	b = AI:GetArray(3)
	if b == 0 then
		R1 = AI:GetRand(1)
		R2 = AI:GetRand(1)
		if R1 == 1 then
			x = AI:GetRand(143)
			if R2 == 1 then
				y = 0
			else
				y = 143 
			end
		else
			y = AI:GetRand(143)
			if R2 == 1 then
				x = 0
			else
				x = 143
			end
		end
		AI:SetArray(3, 1)
	end
	mapid = AI:GetMapID()
	AI:AddSeekPos(mapid,x ,y )
	
end