----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012-11
--		Author:??? & ???
--		TaskName:?-??-?
--		TaskID:
--    ??20??,?????????,???????????????
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		local Posx = AI:GetPosX()
		local Posy = AI:GetPosY()		
		local Posx = AI:GetPosX()
		local Posy = AI:GetPosY()			

--		???1 ????????,??????
		if nIndex == 1 then--???1--start
			a=AI:GetArray(1)
			if a == 1 then
				posx = math.floor(AI:GetPosX())
				posy = math.floor(AI:GetPosY())
				setvar = posx*1000+posy
				AI:SetServerValue(286,setvar)
--				print(tostring(posx).."-"..tostring(posy).."-"..tostring(setvar))
			end
		end--???1--------------------end
		
		if nIndex == 2 then--???2--start
			a=AI:GetArray(2)
			if a == 1 then
				randombuff=math.random(0,99)
				if randombuff < 20 then
					AI:Say("Come everybody, enjoy my magic acrobatic performance!")
				elseif randombuff < 40 then
					AI:Say("You'll never get my chest! Come and try, loser!")
				elseif randombuff < 60 then
					AI:Say("Merry Christmas and happy New Year!")			
				elseif randombuff < 80 then
					AI:Say("I've worked so hard for the past year to get this chest. I will not give it to you easily!")								
				end
			end
		end--???2--------------------end

		if nIndex == 3 then--???3 ????????600? 900?--start
			a=AI:GetArray(3)
			time=AI:GetArray(8)
			if a == 1 then
				time = time + 1
				AI:SetArray(8,time)
--				AI:Say("GUID:04838000004"..tostring(time))
			end
		end--???3--------------------end	
		
		if nIndex == 4 then--???4--start
			a=AI:GetArray(4)
-- 4????? 8???? ???????,??????????			
			if a == 1 then
 				AI:SetTimer(5,500,1)
 				AI:Say("Snowmen never feel lonely.")
			end
		end--???4--------------------end		
		
		if nIndex == 5 then--???4--start
			a=AI:GetArray(5)
			second = AI:GetArray(8)
			if a <= 61 then
				a = a + 1
				AI:SetArray(5,a)
				talk = math.random(1,4)
				if talk == 1 then
					AI:ScreenText("Small Snow Bear: I want to play together with you!",2)
				elseif talk == 2 then
					AI:ScreenText("Merry Christmas to all, and to all a good night!",2)
				elseif talk == 3 then
					AI:ScreenText("Brother has a lot of treasure in his bag!",2)
				else
					AI:ScreenText("Merry Chrismas and Happy New Year~~",2)
				end
	    	for turn1 = 1, 4, 1 do
	    		Dir = math.random(1,8)
	    		PosX,PosY = math.random(Posx-6,Posx+6),math.random(Posy-6,Posy+6)
	    		AI:SummonMonsterByPos(32363,PosX,PosY,Dir)
	    	end
	    	for turn2 = 1, 8, 1 do
	    		Dir = math.random(1,8)
	    		PosX,PosY = math.random(Posx-6,Posx+6),math.random(Posy-6,Posy+6)
	    		AI:SummonMonsterByPos(32364,PosX,PosY,Dir)
	    	end	    	
			end
			if a > 61 then
				if a <= 68 then
					if second > 600 then
						a = a + 1
						AI:SetArray(5,a)
						AI:ScreenText("Brother, why are these people so excited?",2)
			    	for turn1 = 1, 4, 1 do
			    		Dir = math.random(1,8)
			    		PosX,PosY = math.random(Posx-6,Posx+6),math.random(Posy-6,Posy+6)
			    		AI:SummonMonsterByPos(32363,PosX,PosY,Dir)
			    	end
			    	for turn2 = 1, 8, 1 do
			    		Dir = math.random(1,8)
			    		PosX,PosY = math.random(Posx-6,Posx+6),math.random(Posy-6,Posy+6)
			    		AI:SummonMonsterByPos(32364,PosX,PosY,Dir)
			    	end	 
			    end
			  end
			end 
			
			--?????????,?????15??,??10s ??10%??,???10%??,??10???1%,?????1%
			if a > 68 then
				if second >= 680 then
					hpmax = AI:GetHPMax()
					hp = AI:GetHP()
					if hp > hpmax*0.1 then
						AI:LoseHPInstant(800000)
					elseif hp > hpmax*0.01 then
						AI:LoseHPInstant(80000)
					end
					AI:Say("It's getting hotter and hotter. I'm going to start to melt.")
				end
			end
			  						
		end--???5--------------------end					
		
		if nIndex == 7 then--???7--???????????????--start
			AI:ScreenText("Look at my magic: swoosh! All gone!",2)
      n = AI:GetEnmityCount()
      if n >= 10 then
      	for time = 1,n-9,1 do
	      	random1 = math.random( 1 , n-1 )   
	      	random1 = random1 - 1  		
	      	id = AI:GetPlayerIDByIndex( random1 )
	      	place = math.random(1,3)
	      	if place == 1 then
	      		posx1 = math.floor(122/2.56)
	      		posy1 = math.floor(165/2.56)
	       		AI:FlyPlayertoMap( id , mapid , posx1 , posy1 )
	       	elseif place == 2 then
	      		posx2 = math.floor(176/2.56)
	      		posy2 = math.floor(165/2.56)	       	
	       		AI:FlyPlayertoMap( id , mapid , posx2 , posy2 )
	       	else
	      		posx3 = math.floor(135/2.56)
	      		posy3 = math.floor(238/2.56)	       	
	       		AI:FlyPlayertoMap( id , mapid , posx3 , posy3 )
	       	end
	      end
      end   	
		end--???7--------------------end		

		if nIndex == 8 then--???8--600s 900s??,???--start
			
      second = AI:GetArray(8)
      if second < 600 then
      	AI:ScreenText("Heh Heh, I'm leaving and you won't find me!",2)
--?????,??????,??????      
      	AI:SetArray(4,2)
      	AI:SetArray(6,20)
--????? ??2????,?149???     
				AI:ChangeFaction(11) 	
--				AI:SetAIState(6)
				AI:ChangeMonsterSize(0.5)
      	if Posx < 149 then
      		AI:UpdateSeekPath(1)
      	else
      		AI:UpdateSeekPath(2)
      	end
			end
		end--???8--------------------end							
		
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		hpn = AI:GetHP()
		hpmax = AI:GetHPMax()
		hplose = hpmax - hpn
		hppct = hpn/hpmax*100

			-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then
				AI:SetTimer(1,1000,9999)
				AI:SetArray(1,1)
				AI:ScreenText("This winter is especially cold. Let everybody warm up!",2)
			end
			a = AI:GetArray(2)
			if a == 0 then
				AI:SetTimer(2,5000,9999)
				AI:SetArray(2,1)
			end
			a = AI:GetArray(3)
			if a == 0 then
				AI:SetTimer(3,1000,9999)
				AI:SetArray(3,1)
			end		
			a = AI:GetArray(4)
			if a == 0 then
				AI:SetTimer(4,9500,9999)
				AI:SetArray(4,1)
			end					
				
			a = AI:GetArray(6)
			if a == 0 then --????
				if hppct < 95 then
					AI:SetTimer(7,1000,1)
					AI:SetArray(6,1)
				end
			end
			if a == 1 then --????
				if hppct < 90 then
					AI:SetTimer(7,1000,1)
					AI:SetArray(6,2)
				end
			end			
			if a == 2 then --????
				if hppct < 85 then
					AI:SetTimer(7,1000,1)
					AI:SetArray(6,3)
				end
			end
			if a == 3 then --????
				if hppct < 80 then
					AI:SetTimer(7,1000,1)
					AI:SetArray(6,4)
				end
			end
			if a == 4 then --????
				if hppct < 75 then
					AI:SetTimer(7,1000,1)
					AI:SetArray(6,5)
				end
			end
			if a == 5 then --????
				if hppct < 70 then
					AI:SetTimer(7,1000,1)
					AI:SetArray(6,6)
				end
			end
			if a == 6 then --????
				if hppct < 65 then
					AI:SetTimer(7,1000,1)
					AI:SetArray(6,7)					
				end
			end	
			if a == 7 then --????
				if hppct < 60 then
					AI:SetTimer(7,1000,1)
					AI:SetArray(6,8)
				end
			end
			if a == 8 then --????
				if hppct < 55 then	
					AI:SetTimer(7,1000,1)
					AI:SetArray(6,9)
				end
			end
			if a == 9 then --????
				if hppct < 50 then
					AI:SetTimer(7,1000,1)
					AI:SetTimer(8,1000,1)
					AI:SetArray(6,10)
				end
			end			
			if a == 10 then --????
				if hppct < 45 then
					AI:SetTimer(7,1000,1)
					AI:SetArray(6,11)
				end
			end
			if a == 11 then --????
				if hppct < 40 then
					AI:SetTimer(7,1000,1)
					AI:SetArray(6,12)
				end
			end
			if a == 12 then --????
				if hppct < 35 then
					AI:SetTimer(7,1000,1)
					AI:SetArray(6,13)
				end
			end	
			if a == 13 then --????
				if hppct < 30 then	
					AI:SetTimer(7,1000,1)
					AI:SetArray(6,1)
				end
			end
			if a == 14 then --????
				if hppct < 25 then
					AI:SetTimer(7,1000,1)
					AI:SetArray(6,15)
				end
			end			
			if a == 15 then --????
				if hppct < 20 then
					AI:SetTimer(7,1000,1)
					AI:SetArray(6,16)
				end
			end
			if a == 16 then --????
				if hppct < 15 then
					AI:SetTimer(7,1000,1)
					AI:SetArray(6,17)
				end
			end
			if a == 17 then --????
				if hppct < 10 then
					AI:SetTimer(7,1000,1)
					AI:SetArray(6,18)
				end
			end										

			----------------------------------------------------------normal end

--		test=AI:GetEctypeVarShort(mapid,99)
--		if test == 1 then--??AI??
--			AI:Say("hppct="..tostring(hppct))
--			AI:SetEctypeVarShort(mapid,99,0)
--		end

	end--functionEvent_ThinkingEND
	
--------------------------------------------------------------------------------	

	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		local PosX = AI:GetPosX()
		local PosY = AI:GetPosY()		
		
		if (( PosX == 172) and ( PosY == 208 )) then
			hpn = AI:GetHP()
			hpmax = AI:GetHPMax()
			hplose = hpmax - hpn		
			--???????
			AI:ChangeFaction(1)
--			AI:SetAIState(1) 	
			AI:SetArray(4,0)
			AI:RestoreHPInstant(hplose)
			AI:SetArray(6,0)
			AI:ChangeMonsterSize(3)
			AI:ScreenText("Heh Heh, no one could find me here!",2)
		end
		
		if (( PosX == 124) and ( PosY == 208 )) then
			hpn = AI:GetHP()
			hpmax = AI:GetHPMax()
			hplose = hpmax - hpn		
			--???????
			AI:ChangeFaction(1)
--			AI:SetAIState(1) 	
			AI:SetArray(4,0)
			AI:RestoreHPInstant(hplose)
			AI:SetArray(6,0)
			AI:ChangeMonsterSize(3)
			AI:ScreenText("Heh Heh, no one could find me here!",2)
		end		

	end

	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then
			x1,y1=149,184
			xx1,yy1=172,208
			AI:AddSeekPos(mapid,x1,y1)
			AI:AddSeekPos(mapid,xx1,yy1)
		end

		if nIndex == 2 then
			xx2,yy2=124,208
			x1,y1=149,184
			AI:AddSeekPos(mapid,x1,y1)
			AI:AddSeekPos(mapid,xx2,yy2)
		end

	end
	
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		AI:Say("Merry Chrismas!")
		AI:DelTimer(1)
		AI:DelTimer(2)
		AI:DelTimer(3)
		AI:DelTimer(4)
		AI:DelTimer(5)
		AI:DelTimer(6)		
		AI:DelTimer(7)
		AI:DelTimer(8)						

	end
	
	