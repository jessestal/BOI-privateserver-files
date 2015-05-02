	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/14
	--		Author:???
	--		Class:	.Lua
	--		AIName:first.lua
	--		Remark:?????
	----------------------------------------------------
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	HP = AI:GetHP()
	HPMAX = AI:GetHPMax()
	a = AI:GetArray(0)
	
	if HP < HPMAX then
		if a == 0 then
			AI:Say("Do you remember the Giant Scorpions in the desert way back when? I was the first monster you killed!")
			AI:AddSkill(2278,1)
			AI:UseSkill(2278,1)
			AI:PlayAction("Common\\guangquan3\\tx_guangquan3_1_Extened.ini", 1, 1)
			AI:SetArray(0 ,1)
		end
	end
		
	if HP < HPMAX*0.75 then
		if a == 1 then
			AI:Say("You were kind of a rookie back then, weren't ya? Seems like you were hackin' at me for hours before I finally up and died!")
			AI:AddSkill(2278,2)
			AI:UseSkill(2278,2)
			AI:SetArray(0 ,2)
		end
	end
		
	if HP < HPMAX*0.50 then
		if a == 2 then
			AI:Say("And now look at you! Great big hero, now!")
			AI:AddSkill(2278,3)
			AI:UseSkill(2278,3)
			AI:SetArray(0 ,3)
		end
	end
		
	if HP < HPMAX*0.25 then
		if a == 3 then
			AI:Say("And me, well, I guess I'll just hang out here... and get trampled by rookies for all eternity!")
			AI:AddSkill(2278,4)
			AI:UseSkill(2278,4)
			AI:SetArray(0 ,4)
		end
	end
	
end
	
function Event_OnDead(nAI)	
	local AI = GetMonsterAI(nAI)
	
	AI:Say("Oy, the life I live...")
	AI:SetArray(0, 0)
	
end