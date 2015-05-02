	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/23
	--		Author:???
	--		Class:.Lua
	--		AIName:Monster-55286.lua
	--		Remark:
	----------------------------------------------------
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		AI:Say("Burst into flames, my servants!")
		map_id = AI:GetMapID()
		--70-?
		if map_id > 21100 then
			if map_id < 22101 then 
				AI:SummonSingleLevelMonster( 55361, 97, 125 )
				AI:SummonSingleLevelMonster( 55361, 97, 125 )
				AI:SummonSingleLevelMonster( 55361, 97, 125 )
				AI:SummonSingleLevelMonster( 55361, 97, 125 )
			end
		end
		--80-?
		if map_id > 22100 then 
			if map_id < 23101 then 
				AI:SummonSingleLevelMonster( 55361, 98, 125 )
				AI:SummonSingleLevelMonster( 55361, 98, 125 )
				AI:SummonSingleLevelMonster( 55361, 98, 125 )
				AI:SummonSingleLevelMonster( 55361, 98, 125 )
			end
		end
	end
		
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetArray(0)
	HP = AI:GetHP()
	HPMAX = AI:GetHPMax()
	
	if a == 0 and HP < HPMAX then
		AI:Say("My frenzy has been unleashed!")
		AI:PlayAction( "specialidle" , 1 ,0 )
		AI:AddSkill(2278, 4) 
		AI:UseSkill(2278, 4)
		AI:SetTimer(0,5000,1)
		AI:SetArray(0,1)
	end
	
end
	
function Event_OnDead(nAI)	
	local AI = GetMonsterAI(nAI)
		AI:Say("The Heavenly Circle will activate!")
		posx = AI:GetPosX()
		posy = AI:GetPosY()
		AI:SummonMonsterByPos( 55362 , posx , posy )
		AI:DelTimer(0)
		AI:SetArray(0,0)
		
end