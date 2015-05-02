	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/23
	--		Author:???
	--		Class:.Lua
	--		AIName:Monster-55283.lua
	--		Remark:
	----------------------------------------------------
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		--???
		AI:Say("Rockslide!")
		AI:PlayAction( "specialidle" , 1 ,0 )
		AI:PlayAction("common\\luoshi\\tx_luoshi.ini" , 0, 1)  
		AI:UseSkill(2216, 1)
	end
	
	if nIndex == 1 then
		--???
		AI:Say("Earthquake!")
		AI:PlayAction( "attack2" , 1 ,0 ) 
		AI:PlayAction("skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini" , 0, 1)
		AI:UseSkill(2217, 1)
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetArray(0)
	HP = AI:GetHP()
	HPMAX = AI:GetHPMax()
	
	if a == 0 and HP < HPMAX then
		AI:Say("Rockslide!")
		AI:PlayAction( "specialidle" , 1 ,0 )
		AI:PlayAction("common\\luoshi\\tx_luoshi.ini" , 0, 1)  
		AI:AddSkill(2216, 1) 
		AI:UseSkill(2216, 1)
		AI:AddSkill(2217, 1)
		AI:SetTimer(0,20000,1)
		AI:SetTimer(1,12000,1)
		AI:SetArray(0,1)
	end
	
end
	
function Event_OnDead(nAI)	
	local AI = GetMonsterAI(nAI)
		AI:Say("The sky...darkens..")
		AI:DelTimer(0)
		AI:DelTimer(1)
		AI:SetArray(0,0)
		
end