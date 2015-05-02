	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/18
	--		Author:???
	--		Class:	.Lua
	--		AIName:55311-ForgottenPan.lua
	--		Remark:??????
	----------------------------------------------------
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		--??????
		AI:Say("The sky shall fall!")
		AI:AddSkill(2189, 1)
		AI:UseSkill(2189, 1)
	end
	
	if nIndex == 1 then
		--??????
		AI:Say("The earth shall shatter!")
		AI:AddSkill(2190, 1)
		AI:UseSkill(2190, 1)
	end
	
	if nIndex == 3 then
		--??????2?CD
		AI:Say("The shadows shall dance!")
		AI:SetTimer(4,200,25)
		AI:AddSkill(2277,2)
		AI:UseSkill(2277,2)
	end
	
	if nIndex == 4 then
		--????????2??
		XR = AI:GetRand(48)
		YR = AI:GetRand(48)
		AI:SummonMonsterByPos(55312, XR+47, YR+47)
	end
	
	if nIndex == 5 then
		--???????CD
		AI:SetTimer(6,2000,4)
	end
	
	if nIndex == 6 then
		--????????????
		D = AI:GetArray(1)
		if D == 3 then
			AI:ScreenText("Heed my call oh ancient power.", 2)
			AI:Say("Heed my call oh ancient power.")
			AI:AddSkill(2192, 1)
			AI:UseSkill(2192, 1)
			AI:AddSkill(2212, 1)
			AI:UseSkill(2212, 1)
			AI:SetArray(1, 0)
		else
			AI:SetArray(1,D+1)
			AI:ScreenText( "Destruction will occur in " .. tostring(3-D) .. " sec." , 2)
		end
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	t = AI:HaveAttackTarget()
	HP = AI:GetHP()
	HPMAX = AI:GetHPMax()
	a = AI:GetArray(0)

	if t == false then
		if a > 0 then
			if HP == HPMAX then
				AI:DelTimer(0)
				AI:DelTimer(1)
				AI:DelTimer(4)
				AI:DelTimer(5)
				AI:DelTimer(6)
				AI:SetArray(0,0)
				AI:SetArray(1,0)
			end
		end
	end
	
	if a == 0 then
		if HP < HPMAX then
			AI:Say("Puny mortal, you stand before the Demon of Old.")
			AI:AddSkill(2189, 1)
			AI:UseSkill(2189, 1)
			AI:SetTimer(0,15000,65535)
			AI:SetTimer(1,12000,65535)
			AI:SetTimer(3,25000,65535)
			AI:SetTimer(5,60000,65535)
			AI:SetArray(0,1)
		end
	end
	
end
	
function Event_OnDead(nAI)	
	local AI = GetMonsterAI(nAI)
	
	AI:Say("I shall return once again.")
	AI:DelTimer(0)
	AI:DelTimer(1)
	AI:DelTimer(3)
	AI:DelTimer(4)
	AI:DelTimer(5)
	AI:DelTimer(6)
	AI:SetArray(0,0)
	AI:SetArray(1,0)
	
end