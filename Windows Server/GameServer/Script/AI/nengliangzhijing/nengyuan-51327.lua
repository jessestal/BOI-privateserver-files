    	--------------------------------------------
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/21
	--		Author:?? 
	--		Class: Lua
	--		AIName:nengliangzhijing-51327.lua
	--		Backup:
	---------------------------------------------


	function Event_OnTimer(nAI,nIndex, nCount)
    	local AI = GetMonsterAI(nAI)
    	lv = AI:GetLevel()
--------------?????1????-------------------------------------------------    	
----------------------------------------------------------------------------------    	
    	if nIndex == 0 then
    	   a = AI:GetArray(1)
----------------------------------------------------------------------------------    	   
    	   --?1?
			if a == 0 then
				AI:ScreenText("The 1st wave has breached the left Portal!",2)
				AI:SetTimer(1,2000,1)
			--?2?
			elseif a == 1 then
				AI:ScreenText("The 2nd wave has breached the left Portal!",2)
				AI:SetTimer(1,2000,1)
			--?3?
			elseif a == 2 then
				AI:ScreenText("The 3rd wave has breached the left Portal!",2)
				AI:SetTimer(1,2000,1) 
			--?4?
			elseif a == 3 then
				AI:ScreenText("The 4th wave has breached the left Portal!",2)
				AI:SetTimer(1,2000,1) 
			--?5?
			elseif a == 4 then
				AI:ScreenText("The 5th wave has breached the left Portal!",2)
				AI:SetTimer(1,2000,1)
-------------------------------------------------------------------------------			
			--?6?
			elseif a == 5 then
				AI:ScreenText("The 6th wave has breached the right Portal!",2)
				AI:SetTimer(1,2000,1)
			--?7?
			elseif a == 6 then
				AI:ScreenText("The 7th wave has breached the right Portal!",2)
				AI:SetTimer(1,2000,1)
			--?8?
			elseif a == 7 then
				AI:ScreenText("The 8th wave has breached the right Portal!",2)
				AI:SetTimer(1,2000,1) 
			--?9?
			elseif a == 8 then
				AI:ScreenText("The 9th wave has breached the right Portal!",2)
				AI:SetTimer(1,2000,1) 
			--?10?
			elseif a == 9 then
				AI:ScreenText("The 10th wave has breached the right Portal!",2)
				AI:SetTimer(1,2000,1) 
-----------------------------------------------------------------------------
			--?11?
			elseif a == 10 then
				AI:ScreenText("The 11th wave has breached the middle Portal!",2)
				AI:SetTimer(1,2000,1)
			--?12?
			elseif a == 11 then
				AI:ScreenText("The 12th wave has breached the middle Portal!",2)
				AI:SetTimer(1,2000,1)
			--?13?
			elseif a == 12 then
				AI:ScreenText("The 13th wave has breached the middle Portal!",2)
				AI:SetTimer(1,2000,1) 
			--?14?
			elseif a == 13 then
				AI:ScreenText("The 14th wave has breached the middle Portal!",2)
				AI:SetTimer(1,2000,1) 
			--?15?
			elseif a == 14 then
				AI:ScreenText("The 15th wave has breached the middle Portal!",2)
				AI:SetTimer(1,2000,1) 
--------------------------------------------------------------------------------			
			--?16?
			elseif a == 15 then
				AI:ScreenText("The 16th wave has breached all three Portals!",2)
				AI:SetTimer(1,2000,1)
			--?17?
			elseif a == 16 then
				AI:ScreenText("The 17th wave has breached all three Portals!",2)
				AI:SetTimer(1,2000,1)
			--?18?
			elseif a == 17 then
				AI:ScreenText("The 18th wave has breached all three Portals!",2)
				AI:SetTimer(1,2000,1) 
			--?19?
			elseif a == 18 then
				AI:ScreenText("The 19th wave has breached all three Portals!",2)
				AI:SetTimer(1,2000,1) 
			--?20?
			elseif a == 19 then
				AI:ScreenText("A Chief Guard has breached the middle Portal!",2)
				AI:SetTimer(1,2000,1) 
----------------------------------------------------------------------------------	-		
			--?21?
			elseif a == 20 then
				AI:ScreenText("The 21st wave has breached the left Portal!",2)
				AI:SetTimer(1,2000,1)
			--?22?
			elseif a == 21 then
				AI:ScreenText("The 22nd wave has breached the right Portal!",2)
				AI:SetTimer(1,2000,1)
			--?23?
			elseif a == 22 then
				AI:ScreenText("The 23rd wave has breached the middle Portal!",2)
				AI:SetTimer(1,2000,1) 
			--?24?
			elseif a == 23 then
				AI:ScreenText("The 24th wave has breached the left Portal!",2)
				AI:SetTimer(1,2000,1) 
			--?25?
			elseif a == 24 then
				AI:ScreenText("The 25th wave has breached the right Portal!",2)
				AI:SetTimer(1,2000,1) 
----------------------------------------------------------------------------------	-		
			--?26?
			elseif a == 25 then
				AI:ScreenText("The 26th wave has breached the middle Portal!",2)
				AI:SetTimer(1,2000,1)
			--?27?
			elseif a == 26 then
				AI:ScreenText("The 27th wave has breached all three Portals!",2)
				AI:SetTimer(1,2000,1)
			--?28?
			elseif a == 27 then
				AI:ScreenText("The 28th wave has breached all three Portals!",2)
				AI:SetTimer(1,2000,1) 
			--?29?
			elseif a == 28 then
				AI:ScreenText("The 29th wave has breached all three Portals!",2)
				AI:SetTimer(1,2000,1) 
			--?30?
			elseif a == 29 then
				AI:ScreenText("A General has breached the middle Portal!",2)
				AI:SetTimer(1,2000,1) 
----------------------------------------------------------------------------------	-		
			--?31?
			elseif a == 30 then
				AI:ScreenText("The 31st wave has breached the left Portal!",2)
				AI:SetTimer(1,2000,1)
			--?32?
			elseif a == 31 then
				AI:ScreenText("The 32nd wave has breached the right Portal!",2)
				AI:SetTimer(1,2000,1)
			--?33?
			elseif a == 32 then
				AI:ScreenText("The 33rd wave has breached the middle Portal!",2)
				AI:SetTimer(1,2000,1) 
			--?34?
			elseif a == 33 then
				AI:ScreenText("The 34th wave has breached the left Portal!",2)
				AI:SetTimer(1,2000,1) 
			--?35?
			elseif a == 34 then
				AI:ScreenText("The 35th wave has breached the right Portal!",2)
				AI:SetTimer(1,2000,1) 		 
----------------------------------------------------------------------------------	-		
			--?36?
			elseif a == 35 then
				AI:ScreenText("The 36th wave has breached the middle Portal!",2)
				AI:SetTimer(1,2000,1)
			--?37?
			elseif a == 36 then
				AI:ScreenText("The 37th wave has breached all three Portals!",2)
				AI:SetTimer(1,2000,1)
			--?38?
			elseif a == 37 then
				AI:ScreenText("The 38th wave has breached all three Portals!",2)
				AI:SetTimer(1,2000,1)
			--?39?
			elseif a == 38 then
				AI:ScreenText("The 39th wave has breached all three Portals!",2)
				AI:SetTimer(1,2000,1)
			--?40?
			elseif a == 39 then
				AI:ScreenText("Minos himself has breached the middle Portal!",2)
				AI:SetTimer(1,2000,1)
			--?41?
			elseif a == 40 then
				AI:ScreenText("The Energy Well is safe! Congratulations!",2)
			end   
    	end
--------------???5??????-------------------------------------------------    	
----------------------------------------------------------------------------------    	
    	
    	if nIndex == 1 then
    	   	a = AI:GetArray(1)
-----------------------------------------------------------------------   	   
    	  	--?1?
			if a == 0 then
				AI:SetTimer(2,3000,10)
			--?2?
			elseif a == 1 then
				AI:SetTimer(2,3000,10) 
			--?3?
			elseif a == 2 then
				AI:SetTimer(2,3000,10)
			--?4?
			elseif a == 3 then
				AI:SetTimer(2,3000,10) 
			--?5?
			elseif a == 4 then
				AI:SetTimer(2,3000,5)
-----------------------------------------------------------------------------			
			--?6?
			elseif a == 5 then
				AI:SetTimer(2,3000,10)
			--?7?
			elseif a == 6 then
				AI:SetTimer(2,3000,10) 
			--?8?
			elseif a == 7 then
				AI:SetTimer(2,3000,10) 
			--?9?
			elseif a == 8 then
				AI:SetTimer(2,3000,10) 
			--?10?
			elseif a == 9 then
				AI:SetTimer(2,3000,5) 
------------------------------------------------------------------------------			
			 --?11?
			elseif a == 10 then
				AI:SetTimer(2,3000,10)
			--?12?
			elseif a == 11 then
				AI:SetTimer(2,3000,10) 
			--?13?
			elseif a == 12 then
				AI:SetTimer(2,3000,10) 
			--?14?
			elseif a == 13 then
				AI:SetTimer(2,3000,10) 
			--?15?
			elseif a == 14 then
				AI:SetTimer(2,3000,5) 
-------------------------------------------------------------------------------
			--?16?
			elseif a == 15 then
				AI:SetTimer(2,3000,5)
			--?17?
			elseif a == 16 then
				AI:SetTimer(2,3000,5) 
			--?18?
			elseif a == 17 then
				AI:SetTimer(2,3000,5) 
			--?19?
			elseif a == 18 then
				AI:SetTimer(2,3000,5) 
			--?20?
			elseif a == 19 then
				AI:SetTimer(2,3000,1) 
-------------------------------------------------------------------------------
			--?21?
			elseif a == 20 then
				AI:SetTimer(2,3000,10)
			--?22?
			elseif a == 21 then
				AI:SetTimer(2,3000,10) 
			--?23?
			elseif a == 22 then
				AI:SetTimer(2,3000,10) 
			--?24?
			elseif a == 23 then
				AI:SetTimer(2,3000,10) 
			--?25?
			elseif a == 24 then
				AI:SetTimer(2,3000,10) 
-------------------------------------------------------------------------------
			--?26?
			elseif a == 25 then
				AI:SetTimer(2,3000,10)
			--?27?
			elseif a == 26 then
				AI:SetTimer(2,3000,5) 
			--?28?
			elseif a == 27 then
				AI:SetTimer(2,3000,5) 
			--?29?
			elseif a == 28 then
				AI:SetTimer(2,3000,5) 
			--?30?
			elseif a == 29 then
				AI:SetTimer(2,3000,1) 
-------------------------------------------------------------------------------
			--?31?
			elseif a == 30 then
				AI:SetTimer(2,3000,10)
			--?32?
			elseif a == 31 then
				AI:SetTimer(2,3000,10) 
			--?33?
			elseif a == 32 then
				AI:SetTimer(2,3000,10)
			--?34?
			elseif a == 33 then
				AI:SetTimer(2,3000,10) 
			--?35?
			elseif a == 34 then
				AI:SetTimer(2,3000,10)
-------------------------------------------------------------------------------
			--?36?
			elseif a == 35 then
				AI:SetTimer(2,3000,10)
			--?37?
			elseif a == 36 then
				AI:SetTimer(2,3000,10) 
			--?38?
			elseif a == 37 then
				AI:SetTimer(2,3000,10) 
			--?39?
			elseif a == 38 then
				AI:SetTimer(2,3000,10) 
			--?40?
			elseif a == 39 then
				AI:SetTimer(2,3000,1) 
			end		
    	end
---------------------------------------------------------------------------
--------------??????-------------------------------------------------    	
---------------------------------------------------------------------------    	
    	if nIndex == 2 then
----------------------------------------------------------------------------
			 a = AI:GetArray(1)
    	  	 b = AI:GetArray(2)
 -----------------------------------------------------------------------   	   
    	  	--?1?3??10?51321 
			if a == 0 then
				if b >= 0 then
					if b <= 8 then
						b = b + 1
						AI:SummonLevelMonsterByPos(51321,24,lv,131,147)
						AI:SetArray(2,b)
					else
						AI:SummonLevelMonsterByPos(51321,24,lv,131,147)
						AI:SetTimer(0,20000,1) 
						AI:SetArray(1,1)
						AI:SetArray(2,0)
					end
				end
			--?2?3??10?51321 
			elseif a == 1 then
				if b >= 0 then
					if b <= 8 then
						b = b + 1
						AI:SummonLevelMonsterByPos(51321,24,lv,131,147)
						AI:SetArray(2,b)
					else
						AI:SummonLevelMonsterByPos(51321,24,lv,131,147)
						AI:SetTimer(0,20000,1)
						AI:SetArray(1,2)
						AI:SetArray(2,0)
					end
				end
			--?3?3??10?51321 
			elseif a == 2 then
				if b >= 0 then
					if b <= 8 then
						b = b + 1
						AI:SummonLevelMonsterByPos(51321,24,lv,131,147)
						AI:SetArray(2,b)
					else
						AI:SummonLevelMonsterByPos(51321,24,lv,131,147)
						AI:SetTimer(0,20000,1)
						AI:SetArray(1,3)
						AI:SetArray(2,0)
					end
				end
			--?4?3??10?51321 
			elseif a == 3 then
				if b >= 0 then
					if b <= 8 then
						b = b + 1
						AI:SummonLevelMonsterByPos(51321,24,lv,131,147)
						AI:SetArray(2,b)
					else
						AI:SummonLevelMonsterByPos(51321,24,lv,131,147)
						AI:SetArray(1,4)
						AI:SetTimer(0,20000,1) 
						AI:SetArray(2,0)
					end
				end
			--?5?3??5?51360 
			elseif a == 4 then
				if b >= 0 then
					if b <= 3 then
						b = b + 1
						AI:SummonLevelMonsterByPos(51360,26,lv,131,147)
						AI:SetArray(2,b)
					else
						AI:SummonLevelMonsterByPos(51360,26,lv,131,147)
						AI:SetTimer(0,35000,1) 
						AI:SetArray(1,5)
						AI:SetArray(2,0)
					end
				end
----------------------------------------------------------------------------------			
			--?6?3??10?51323
			elseif a == 5 then
				if b >= 0 then
					if b <= 8 then
						b = b + 1
						AI:SummonLevelMonsterByPos(51323,24,lv,177,147)
						AI:SetArray(2,b)
					else
						AI:SummonLevelMonsterByPos(51323,24,lv,177,147)
						AI:SetTimer(0,20000,1) 
						AI:SetArray(1,6)
						AI:SetArray(2,0)
					end
				end
			--?7?3??10?51323
			elseif a == 6 then
				if b >= 0 then
					if b <= 8 then
						b = b + 1
						AI:SummonLevelMonsterByPos(51323,24,lv,177,147)
						AI:SetArray(2,b)
					else
						AI:SummonLevelMonsterByPos(51323,24,lv,177,147)
						AI:SetTimer(0,20000,1) 
						AI:SetArray(1,7)
						AI:SetArray(2,0)
					end
				end
			--?8?3??10?51323
			elseif a == 7 then
				if b >= 0 then
					if b <= 8 then
						b = b + 1
						AI:SummonLevelMonsterByPos(51323,24,lv,177,147)
						AI:SetArray(2,b)
					else
						AI:SummonLevelMonsterByPos(51323,24,lv,177,147)
						AI:SetTimer(0,20000,1) 
						AI:SetArray(1,8)
						AI:SetArray(2,0)
					end
				end
			--?9?3??10?51323
			elseif a == 8 then
				if b >= 0 then
					if b <= 8 then
						b = b + 1
						AI:SummonLevelMonsterByPos(51323,24,lv,177,147)
						AI:SetArray(2,b)
					
					else
						AI:SummonLevelMonsterByPos(51323,24,lv,177,147)
						AI:SetTimer(0,20000,1) 
						AI:SetArray(1,9)
						AI:SetArray(2,0)
					end
				end
			--?10?3??5?51362 
			elseif a == 9 then
				if b >= 0 then
					if b <= 3 then
						b = b + 1
						AI:SummonLevelMonsterByPos(51362,26,lv,177,147)
						AI:SetArray(2,b)
					else
						AI:SummonLevelMonsterByPos(51362,26,lv,177,147)
						AI:SetTimer(0,35000,1) 
						AI:SetArray(1,10)
						AI:SetArray(2,0)
					end
				end
--------------------------------------------------------------------------------			
			--?11?3??10?51322 
			elseif a == 10 then
				if b >= 0 then
					if b <= 8 then
						b = b + 1
						AI:SummonLevelMonsterByPos(51322,24,lv,154,147)
						AI:SetArray(2,b)
					else
						AI:SummonLevelMonsterByPos(51322,24,lv,154,147)
						AI:SetTimer(0,20000,1) 
						AI:SetArray(1,11)
						AI:SetArray(2,0)
					end
				end
			--?12?3??10?51322
			elseif a == 11 then
				if b >= 0 then
					if b <= 8 then
						b = b + 1
						AI:SummonLevelMonsterByPos(51322,24,lv,154,147)
						AI:SetArray(2,b)
					else
						AI:SummonLevelMonsterByPos(51322,24,lv,154,147)
						AI:SetTimer(0,20000,1) 
						AI:SetArray(1,12)
						AI:SetArray(2,0)
					end
				end
			--?13?3??10?51322 
			elseif a == 12 then
				if b >= 0 then
					if b <= 8 then
						b = b + 1
						AI:SummonLevelMonsterByPos(51322,24,lv,154,147)
						AI:SetArray(2,b)
					else
						AI:SummonLevelMonsterByPos(51322,24,lv,154,147)
						AI:SetTimer(0,20000,1) 
						AI:SetArray(1,13)
						AI:SetArray(2,0)
					end
				end
			--?14?3??10?51322
			elseif a == 13 then
				if b >= 0 then
					if b <= 8 then
						b = b + 1
						AI:SummonLevelMonsterByPos(51322,24,lv,154,147)
						AI:SetArray(2,b)
					else
						AI:SummonLevelMonsterByPos(51322,24,lv,154,147)
						AI:SetTimer(0,20000,1) 
						AI:SetArray(1,14)
						AI:SetArray(2,0)
					end
				end
			--?15?3??5?51361
			elseif a == 14 then
				if b >= 0 then
					if b <= 3 then
						b = b + 1
						AI:SummonLevelMonsterByPos(51361,26,lv,154,147)
						AI:SetArray(2,b)
					else
						AI:SummonLevelMonsterByPos(51361,26,lv,154,147)
						AI:SetTimer(0,35000,1) 
						AI:SetArray(1,15)
						AI:SetArray(2,0)
					end
				end
--------------------------------------------------------------------------------
			--?16?3??5?51321 51322 51323 
			elseif a == 15 then
				if b >= 0 then
					if b <= 3 then
						b = b + 1
						AI:SummonLevelMonsterByPos(51321,25,lv,131,147)
						AI:SummonLevelMonsterByPos(51322,25,lv,154,147)
						AI:SummonLevelMonsterByPos(51323,25,lv,177,147)
						AI:SetArray(2,b)
					else
						AI:SummonLevelMonsterByPos(51321,25,lv,131,147)
						AI:SummonLevelMonsterByPos(51322,25,lv,154,147)
						AI:SummonLevelMonsterByPos(51323,25,lv,177,147)
						AI:SetTimer(0,55000,1) 
						AI:SetArray(1,16)
						AI:SetArray(2,0)
					end
				end
			--?17?3??5?51321 51322 51323 
			elseif a == 16 then
				if b >= 0 then
					if b <= 3 then
						b = b + 1
						AI:SummonLevelMonsterByPos(51321,25,lv,131,147)
						AI:SummonLevelMonsterByPos(51322,25,lv,154,147)
						AI:SummonLevelMonsterByPos(51323,25,lv,177,147)
						AI:SetArray(2,b)
					else
						AI:SummonLevelMonsterByPos(51321,25,lv,131,147)
						AI:SummonLevelMonsterByPos(51322,25,lv,154,147)
						AI:SummonLevelMonsterByPos(51323,25,lv,177,147)
						AI:SetTimer(0,55000,1) 
						AI:SetArray(1,17)
						AI:SetArray(2,0) 
					end
				end
			--?18?3??5?51321 51322 51323 
			elseif a == 17 then
				if b >= 0 then
					if b <= 3 then
						b = b + 1
						AI:SummonLevelMonsterByPos(51321,25,lv,131,147)
						AI:SummonLevelMonsterByPos(51322,25,lv,154,147)
						AI:SummonLevelMonsterByPos(51323,25,lv,177,147)
						AI:SetArray(2,b)
					else
						AI:SummonLevelMonsterByPos(51321,25,lv,131,147)
						AI:SummonLevelMonsterByPos(51322,25,lv,154,147)
						AI:SummonLevelMonsterByPos(51323,25,lv,177,147)
						AI:SetTimer(0,55000,1) 
						AI:SetArray(1,18)
						AI:SetArray(2,0)
					end
				end
			--?19?3??5?51321 51322 51323 
			elseif a == 18 then
				if b >= 0 then
					if b <= 3 then
						b = b + 1
						AI:SummonLevelMonsterByPos(51321,26,lv,131,147)
						AI:SummonLevelMonsterByPos(51322,26,lv,154,147)
						AI:SummonLevelMonsterByPos(51323,26,lv,177,147)
						AI:SetArray(2,b)
					else
						AI:SummonLevelMonsterByPos(51321,26,lv,131,147)
						AI:SummonLevelMonsterByPos(51322,26,lv,154,147)
						AI:SummonLevelMonsterByPos(51323,26,lv,177,147)
						AI:SetTimer(0,55000,1) 
						AI:SetArray(1,19)
						AI:SetArray(2,0)
					end
				end
			--?20?3??1?51325BOSS
			elseif a == 19 then
				if b == 0 then
					AI:SummonLevelMonsterByPos(51325,27,lv,154,147)
					AI:SetTimer(0,57000,1) 
					AI:SetArray(1,20)
					AI:SetArray(2,0)
				end
--------------------------------------------------------------------------------
			--?21??3?10?51321
			elseif a == 20 then
				if b >= 0 then
					if b <= 8 then
						b = b + 1
						AI:SummonLevelMonsterByPos(51321,25,lv,131,147)
						AI:SetArray(2,b)
					else
						AI:SummonLevelMonsterByPos(51321,25,lv,131,147)
						AI:SetTimer(0,20000,1) 
						AI:SetArray(1,21)
						AI:SetArray(2,0) 
					end
				end
			--?22?3?10?51323 
			elseif a == 21 then
				if b >= 0 then
					if b <= 8 then
						b = b + 1
						AI:SummonLevelMonsterByPos(51323,25,lv,177,147)
						AI:SetArray(2,b)
					else
						AI:SummonLevelMonsterByPos(51323,25,lv,177,147)
						AI:SetTimer(0,20000,1) 
						AI:SetArray(1,22)
						AI:SetArray(2,0) 
					end
				end
			--?23?3?10?51322
			elseif a == 22 then
				if b >= 0 then
					if b <= 8 then
						b = b + 1
						AI:SummonLevelMonsterByPos(51322,25,lv,154,147)
						AI:SetArray(2,b)
					else
						AI:SummonLevelMonsterByPos(51322,25,lv,154,147)
						AI:SetTimer(0,20000,1) 
						AI:SetArray(1,23)
						AI:SetArray(2,0)
					end
				end
			--?24?3?10?51321
			elseif a == 23 then
				if b >= 0 then
					if b <= 8 then
						b = b + 1
						AI:SummonLevelMonsterByPos(51321,25,lv,131,147)
						AI:SetArray(2,b)
					else
						AI:SummonLevelMonsterByPos(51321,25,lv,131,147)
						AI:SetTimer(0,20000,1) 
						AI:SetArray(1,24)
						AI:SetArray(2,0)
					end
				end
			--?25?3?10?51323
			elseif a == 24 then
				if b >= 0 then
					if b <= 8 then
						b = b + 1
						AI:SummonLevelMonsterByPos(51323,25,lv,177,147)
						AI:SetArray(2,b)
					else
						AI:SummonLevelMonsterByPos(51323,25,lv,177,147)
						AI:SetTimer(0,20000,1) 
						AI:SetArray(1,25)
						AI:SetArray(2,0)
					end
				end
--------------------------------------------------------------------------------
			--?26?3?10?51322
			elseif a == 25 then
				if b >= 0 then
					if b <= 8 then
						b = b + 1
						AI:SummonLevelMonsterByPos(51322,25,lv,154,147)
						AI:SetArray(2,b)
					else
						AI:SummonLevelMonsterByPos(51322,25,lv,154,147)
						AI:SetTimer(0,20000,1) 
						AI:SetArray(1,26)
						AI:SetArray(2,0)
					end
				end
			--?27?3?5?51321 51322 51323
			elseif a == 26 then
				if b >= 0 then
					if b <= 3 then
						b = b + 1
						AI:SummonLevelMonsterByPos(51321,25,lv,131,147)
						AI:SummonLevelMonsterByPos(51322,25,lv,154,147)
						AI:SummonLevelMonsterByPos(51323,25,lv,177,147)	
						AI:SetArray(2,b)
					else
						AI:SummonLevelMonsterByPos(51321,25,lv,131,147)
						AI:SummonLevelMonsterByPos(51322,25,lv,154,147)
						AI:SummonLevelMonsterByPos(51323,25,lv,177,147)	
						AI:SetTimer(0,55000,1) 
						AI:SetArray(1,27)
						AI:SetArray(2,0)
					end
				end
			--?28?3?5?51321 51322 51323
			elseif a == 27 then
				if b >= 0 then
					if b <= 3 then
						b = b + 1
						AI:SummonLevelMonsterByPos(51321,26,lv,131,147)
						AI:SummonLevelMonsterByPos(51322,26,lv,154,147)
						AI:SummonLevelMonsterByPos(51323,26,lv,177,147)	
						AI:SetArray(2,b)
					else
						AI:SummonLevelMonsterByPos(51321,26,lv,131,147)
						AI:SummonLevelMonsterByPos(51322,26,lv,154,147)
						AI:SummonLevelMonsterByPos(51323,26,lv,177,147)	
						AI:SetTimer(0,55000,1) 
						AI:SetArray(1,28)
						AI:SetArray(2,0) 
					end
				end
			--?29?3?5?51321 51322 51323
			elseif a == 28 then
				if b >= 0 then
					if b <= 3 then
						b = b + 1
						AI:SummonLevelMonsterByPos(51321,26,lv,131,147)
						AI:SummonLevelMonsterByPos(51322,26,lv,154,147)
						AI:SummonLevelMonsterByPos(51323,26,lv,177,147)	
						AI:SetArray(2,b)
					else
						AI:SummonLevelMonsterByPos(51321,26,lv,131,147)
						AI:SummonLevelMonsterByPos(51322,26,lv,154,147)
						AI:SummonLevelMonsterByPos(51323,26,lv,177,147)	
						AI:SetTimer(0,55000,1) 
						AI:SetArray(1,29)
						AI:SetArray(2,0)
					end 
				end
			--?30?3??1?51326
			elseif a == 29 then
				if b == 0 then
					AI:SummonLevelMonsterByPos(51326,27,lv,154,147)
					AI:SetTimer(0,57000,1) 
					AI:SetArray(1,30)
					AI:SetArray(2,0)
				end
--------------------------------------------------------------------------------
			--?31?3??10?51360
			elseif a == 30 then
				if b >= 0 then
					if b <= 8 then
						b = b + 1
						AI:SummonLevelMonsterByPos(51360,37,lv,131,147)
						AI:SetArray(2,b)
					else
						AI:SummonLevelMonsterByPos(51360,37,lv,131,147)
						AI:SetTimer(0,20000,1) 
						AI:SetArray(1,31)
						AI:SetArray(2,0)
					end
				end
			--?32?3??10?51362
			elseif a == 31 then
				if b >= 0 then
					if b <= 8 then
						b = b + 1
						AI:SummonLevelMonsterByPos(51362,37,lv,177,147)
						AI:SetArray(2,b)
					else
						AI:SummonLevelMonsterByPos(51362,37,lv,177,147)
						AI:SetTimer(0,15000,1) 
						AI:SetArray(1,32)
						AI:SetArray(2,0)
					end
				end
			--?33?3??10?51361
			elseif a == 32 then
				if b >= 0 then
					if b <= 8 then
						b = b + 1
						AI:SummonLevelMonsterByPos(51361,37,lv,154,147)
						AI:SetArray(2,b)
					else
						AI:SummonLevelMonsterByPos(51361,37,lv,154,147)
						AI:SetTimer(0,15000,1) 
						AI:SetArray(1,33)
						AI:SetArray(2,0)
					end
				end
			--?34?10?51360
			elseif a == 33 then
				if b >= 0 then
					if b <= 8 then
						b = b + 1
						AI:SummonLevelMonsterByPos(51360,38,lv,131,147)
						AI:SetArray(2,b)
					else
						AI:SummonLevelMonsterByPos(51360,38,lv,131,147)
						AI:SetTimer(0,15000,1) 
						AI:SetArray(1,34)
						AI:SetArray(2,0)
					end
				end
			--?35?10?51362
			elseif a == 34 then
				if b >= 0 then
					if b <= 8 then
						b = b + 1
						AI:SummonLevelMonsterByPos(51362,38,lv,177,147)
						AI:SetArray(2,b)
					else
						AI:SummonLevelMonsterByPos(51362,38,lv,177,147)
						AI:SetTimer(0,10000,1) 
						AI:SetArray(1,35)
						AI:SetArray(2,0) 
					end
				end
--------------------------------------------------------------------------------
			--?36?10?51361
			elseif a == 35 then
				if b >= 0 then
					if b <= 8 then
						b = b + 1
						AI:SummonLevelMonsterByPos(51361,38,lv,154,147)
						AI:SetArray(2,b)
					else
						AI:SummonLevelMonsterByPos(51361,38,lv,154,147)
						AI:SetTimer(0,10000,1) 
						AI:SetArray(1,36)
						AI:SetArray(2,0) 
					end 
				end
			--?37?10?51360 51361 51362
			elseif a == 36 then
				if b >= 0 then
					if b <= 8 then
						b = b + 1
						AI:SummonLevelMonsterByPos(51360,37,lv,131,147)
						AI:SummonLevelMonsterByPos(51361,37,lv,154,147)	
						AI:SummonLevelMonsterByPos(51362,37,lv,177,147)
						AI:SetArray(2,b)
					else
						AI:SummonLevelMonsterByPos(51360,37,lv,131,147)
						AI:SummonLevelMonsterByPos(51361,37,lv,154,147)	
						AI:SummonLevelMonsterByPos(51362,37,lv,177,147)
						AI:SetTimer(0,10000,1) 
						AI:SetArray(1,37)
						AI:SetArray(2,0)
					end  
				end
			--?38?10?51360 51361 51362
			elseif a == 37 then
				if b >= 0 then
					if b <= 8 then
						b = b + 1
						AI:SummonLevelMonsterByPos(51360,38,lv,131,147)
						AI:SummonLevelMonsterByPos(51361,38,lv,154,147)	
						AI:SummonLevelMonsterByPos(51362,38,lv,177,147)
						AI:SetArray(2,b)
					else
						AI:SummonLevelMonsterByPos(51360,38,lv,131,147)
						AI:SummonLevelMonsterByPos(51361,38,lv,154,147)	
						AI:SummonLevelMonsterByPos(51362,38,lv,177,147)
						AI:SetTimer(0,10000,1) 
						AI:SetArray(1,38)
						AI:SetArray(2,0) 
					end 
				end
			--?39?10?51360 51361 51362
			elseif a == 38 then
				if b >= 0 then
					if b <= 8 then
						b = b + 1
						AI:SummonLevelMonsterByPos(51360,39,lv,131,147)
						AI:SummonLevelMonsterByPos(51361,39,lv,154,147)	
						AI:SummonLevelMonsterByPos(51362,39,lv,177,147)						
                    	AI:SetArray(2,b)
					else
						AI:SummonLevelMonsterByPos(51360,39,lv,131,147)
						AI:SummonLevelMonsterByPos(51361,39,lv,154,147)	
						AI:SummonLevelMonsterByPos(51362,39,lv,177,147)
						AI:SetTimer(0,50000,1) 
						AI:SetArray(1,39)
						AI:SetArray(2,0) 
					end 
				end
			--?40?1?
			elseif a == 39 then
				if b == 0 then
					AI:SummonLevelMonsterByPos(51356,28,lv,154,147)
					AI:SetTimer(0,60000,1) 
					AI:SetArray(1,40)
					AI:SetArray(2,0) 
				end
			end
		end
    end
       
    function Event_Thinking(nAI)
        local AI = GetMonsterAI(nAI)
        
        a = AI:GetArray(3)
        lv = AI:GetLevel()
        if a == 0 then
            AI:SetTimer(0,10000,1)
            AI:SetArray(3,1)
        end
    end
    function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
    end
    
    function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
        local AI = GetMonsterAI(nAI)
    end
    
    function Event_OnDead(nAI)
	    local AI = GetMonsterAI(nAI)
    end                                