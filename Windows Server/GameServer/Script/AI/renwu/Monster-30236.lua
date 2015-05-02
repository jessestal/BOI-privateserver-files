	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/6/28
	--		Author:???
	--		Class:	.Lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex,nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		if nIndex == 1 then
		 	a = GetArray(1)
		 	if a == 1 then
		 		AI:SetArray(1,2)
		 		AI:SelfMurder()
		 	end
		 end
		 
		if nIndex == 2 then
		 	b = AI:GetRand(4)
		 	if b == 0 then
		 		AI:Say("My mom told me to protect myself once I was in danger")
		 	end
		 	if b == 1 then
		 		AI:Say("This place is terrible!")
		 	end
		 	if b == 2 then
		 		AI:Say("Protect me! I am so scared!")
		 	end
		 	if b == 3 then
		 		AI:Say("Where is Ardth...")
		 	end
		 	if b == 4 then
		 		AI:Say("When can we find Ardth? He still owes me money for a week's meal.")
		 	end
		 end
	end
	
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		a = AI:GetArray(1)
		b = AI:GetRand(4)
			if a == 0 then
				AI:ScreenText("Let's go! Thank you for protecting me in finding Ardth!",1)
				AI:SetTimer(1,3600000,1)						
				AI:SetTimer(2,20000,65535)
				AI:SetArray(1,2)
			end
	end	