----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2011/08
--		Author:???
--		TaskName:?-???-?
--		TaskID:
-----------------------------------------------------
--30400	???
--30401	??
--30402	???
--30403	??
--30404	??
--30405	??
--30406	??

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--????
			a = AI:GetArray(1)
			if a == 1 then
				AI:GetRandTarget()
				AI:SetArray(1,2)
				AI:SetArray(9,1)
--				AI:PlayAction("\\common\\shilian2\\51244-handR.ini",0,1)
			end
		end

		if nIndex == 2 then
			a = AI:GetArray(2)
			if a == 5 then
				AI:ScreenText("Athena: If Odin's heart is destroyed, the whole world will collapse, and you'll have nothing in the end!",2)
			end
			if a == 10 then
				AI:ScreenText("Adrian: What is wrong with this world!? Even the Goddess of War is willing to sacrifice herself for a corpse!",2)
			end
			if a == 15 then
				AI:ScreenText("Athena: Stop this foolishness! On my name as the Goddess of War, I will not hesitate to destroy you!",2)
			end
			if a == 20 then
				AI:ScreenText("Adrian: Do none of you understand yet? Not even Odin is a worthy opponent for me!",2)
			end
			if a == 25 then
				AI:ScreenText("Adrian: With this power, I could rule this world, and your death will set an example for all to see!",2)
			end
			if a == 30 then
				AI:ScreenText("Adrian: I had hoped some of you would see the truth, but all I hear are objections!",2)
			end
			if a == 35 then
				AI:ScreenText("Adrian: It doesn't matter now. I can rebuild this world myself, no matter what anyone else says!",2)
			end
			if a == 40 then
--				AI:SelfMurder()
				posx = AI:GetPosX()
				posy = AI:GetPosY()
				AI:SummonMonsterByPos(30410,posx,posy)
				AI:Exit()
			end
			a=a+1
			AI:SetArray(2,a)
		end--????end
		
	end
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

 		a = AI:GetArray(1)
		-----------------------------------------------------------normal start
			if a == 0 then --?????,????,????
				AI:SetTimer(1,500,1)
				AI:SetArray(1,1)
		    AI:SetArray(9,0)
				AI:ScreenText("Athena: Enough of this! Hades, you're completely insane!",2)
			end
			a = AI:GetArray(2)
			if a == 0 then --????,????
				AI:SetTimer(2,1000,9999)
				AI:SetArray(2,1)
			end
			----------------------------------------------------------normal start


	end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		--AI:ScreenText("",2)
	end
	
	