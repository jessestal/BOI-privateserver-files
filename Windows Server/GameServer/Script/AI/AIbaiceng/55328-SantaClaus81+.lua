	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/22
	--		Author:???
	--		Class:	.Lua
	--		AIName:55301-SantaClaus.lua
	--		Remark:????
	----------------------------------------------------
	
function Event_OnTimer(nAI, nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		--????????
		AI:Say("Ahh! Don't hit my face!")
		AI:AddSkill(2188, 1)
		AI:UseSkill(2188, 1)
	end
	
	if nIndex == 1 then
		--??
		AI:Exit()
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetArray(0)
	
	if a == 0 then
		HP = AI:GetHP()
		HPMAX = AI:GetHPMax()
		if HP < HPMAX then
			AI:Say("I'm the lucky Golden Pig with treasures galore! Catch me if you can!")
			AI:AddSkill(2188, 1)
			AI:UseSkill(2188, 1)
			AI:SetTimer(0,12000,65535)
			AI:SetArray(0,1)
		end
	end
	
end
	
function Event_ReadSeekPos(nAI)			
	local AI = GetMonsterAI(nAI)		
	
	--???????50-100,?????50,50
	mapid = AI:GetMapID()
	AI:AddSeekPos( mapid , 200 , 151 )
	AI:AddSeekPos( mapid , 183 , 147 )
	AI:AddSeekPos( mapid , 181 , 160 )
	AI:AddSeekPos( mapid , 198 , 164 )
	AI:AddSeekPos( mapid , 203 , 156 )
	AI:AddSeekPos( mapid , 259 , 155 )
	
end

function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)	
	local AI = GetMonsterAI(nAI)
	
	if ((PosX==259) and  (PosY==155)) then
		AI:AddSkill(2188, 1)
		AI:UseSkill(2188, 1)
		AI:PlayAction("skill\\pet\\diubaozhu\\hit\\tx_diubaozhu_hit.ini",1,1)
		AI:Say("Time to fly away!")
		AI:SetTimer(1,500,1)
	end
	
end

	
function Event_OnDead(nAI)	
	local AI = GetMonsterAI(nAI)
	
	AI:Say("You sure are lucky.")
	AI:SetArray(0,0)
	AI:DelTimer(0)
	
end