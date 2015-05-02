	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/21
	--		Author:???
	--		Class:	Monster-30293.Lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex,nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
			if nIndex == 0 then
				--2?
				AI:ScreenText("Hephaestus: ...hey, wait, what's going on?",1)
			end
			if nIndex == 1 then
				--4?
				AI:Say("I am Hephaestus' Anger! Hahahaha!")
				AI:AddSkill(2235,1)
      				AI:UseSkill(2235,1)
			end
			if nIndex == 2 then
				--6?
				AI:ScreenText("Hephaestus: What arcane trickery is this!? Begone, you foul creature!",1)
			end
			if nIndex == 3 then
				--10?
				AI:Say("Hephaestus' anger is my power, so ahead and make him mad! I'll kill you just the same! Hahaha!")
				AI:AddSkill(2235,1)
      				AI:UseSkill(2235,1)
			end
			if nIndex == 4 then
				--16?
				AI:Say("I'll roast you like the pitiful little rodent you are!")
      				AI:UseSkill(2235,1)
			end
			if nIndex == 5 then
				--24?
				AI:Say("You're still alive!? How is this possible!?")
      				AI:UseSkill(2235,1)
			end
		end
		
		function Event_Thinking(nAI)
			local AI = GetMonsterAI(nAI)
			
			a = AI:GetArray(1)
			if a == 0 then
				AI:ScreenText("Hephaestus: What is this?!", 1)
				AI:SetTimer(0,2000,1)
				AI:SetTimer(1,4000,1)
				AI:SetTimer(2,6000,1)
				AI:SetTimer(3,10000,1)
				AI:SetTimer(4,16000,1)
				AI:SetTimer(5,24000,1)
				AI:SetArray(1,1)
			end
		end
			
  