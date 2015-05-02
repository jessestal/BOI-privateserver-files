	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/07
	--		Author:???
	--		Class:	.Lua
	--		AIName:Main-90-Yingshen-55056.lua
	--		Backup:90???????
	----------------------------------------------------
	
	
	function Event_OnTimer( nAI, nIndex, nCount)
		
		local AI = GetMonsterAI(nAI)
		if nIndex == 0 then
		-- 	
			a = AI:GetArray(1)
			if a == 0 then
				AI:Say("Finally, we've found you, Set. You can hide in this Temple no longer.")
				AI:SetArray(1,1)
			elseif a == 1 then
				AI:Say("Stupid Set! ")
				AI:SetArray(1,2)
			elseif a == 2 then
				AI:Say("What? Sphinx was in the opposite direction! ")
				AI:SetArray(1,3)
			elseif a == 3 then
			    AI:Say("Just have a look. We will fight.")
				AI:SetArray(1,4)
			elseif a == 4 then
			   	AI:Say("Be careful! ")
			    AI:SetArray(1,5)
			    AI:SetAIState(0)
			-----?????2
			elseif a == 5 then
			   	AI:Say("How can these tricks fool me?")
			    AI:SetArray(1,6)
			elseif a == 6 then
			   	AI:Say("Funny! ")
			    AI:SetArray(1,7)
			    AI:SetAIState(0)
			-----????2
			elseif a == 7 then
			   	AI:Say("He's not here! Set, if you don't show yourself, I will tear this place apart.")
			    AI:SetArray(1,8)
			elseif a == 8 then
			   	AI:Say("...There should be an array here. ")
			    AI:SetArray(1,9)
			    AI:SetAIState(0)
			------????2
			elseif a == 9 then
			   	AI:Say("You thought you could defeat me, huh? Look how easily I nullified your power!")
			    AI:SetArray(1,10)
			elseif a == 10 then
			   	AI:Say("Stay close to me for your own safety. Remember, Set is merciless and a coward. I don't want him to strike out at you.")
			    AI:SetArray(1,11)
			    AI:SetAIState(0)
			------??13
			elseif a == 11 then
			   	AI:Say("It's supposed to be here! ")
			    AI:SetArray(1,12)
			elseif a == 12 then
			   	AI:Say("Light is shining! Done! ! ! ")
			   	AI:PlayEffect("common\\yangguang\\tx_yangguang.ini ")
			    AI:SetArray(1,13)
			elseif a == 13 then
			   	AI:Say("We can go now! ")
			   	AI:PlayEffect("skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini ")
			    AI:SetArray(1,14)
			    AI:SetAIState(0)
			-----??22
			elseif a == 14 then
			   	AI:Say("Array of Wind! Done! ! ! ")
			   	AI:PlayEffect("common\\yangguang\\tx_yangguang.ini ")
			    AI:SetArray(1,15)
			elseif a == 15 then
			   	AI:Say("Let's go there! ")
			   	AI:PlayEffect("skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini ")
			    AI:SetArray(1,16)
			    AI:SetAIState(0)
			-----??32
			elseif a == 16 then
			   	AI:Say("Done! ! ! ")
			   	AI:PlayEffect("common\\yangguang\\tx_yangguang.ini ")
			    AI:SetArray(1,17)
			elseif a == 17 then
			   	AI:Say("We can go now! ")
			   	AI:PlayEffect("skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini ")
			    AI:SetArray(1,18)
			    AI:SetAIState(0)
			    AI:ScreenText("The Temple has been shaken! ",2)
			-----????3
			elseif a == 18 then
			   	AI:Say("The last step! ")
			   	AI:PlayEffect("common\\yangguang\\tx_yangguang.ini ")
			    AI:SetArray(1,19)
			elseif a == 19 then
			   	AI:Say("Horus' Power, Done! ! ! ")
			   	AI:SetTimer(1,2000, 9 )
			   	AI:PlayEffect("skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini ")
			    AI:SetArray(1,20)
			    AI:ScreenText("Countless light beams disperse!",2 )
			elseif a == 20 then
			   	AI:Say("Set is in a whole lot of trouble!")
			   	AI:SetAIState(0)
			    AI:SetArray(1,21)
			elseif a == 21 then
			   	AI:Say("Old friend, you are really a coward! ")
			    AI:SetArray(1,22)
			elseif a == 22 then
			   	AI:Say("Sleep? Ever since you came here, the people of the desert have been unable to sleep peacefully! They all curse you, even in their dreams! Set!")
			   	AI:ScreenText("Horus is very angry! ",2)
			    AI:SetArray(1,23)
			elseif a == 23 then
			   	AI:Say("You are supposed to die, they are not! ")
			    AI:SetArray(1,24)
			elseif a == 24 then
			   	AI:Say("Yes, you must be killed today. ")
			    AI:SetArray(1,25)
			elseif a == 25 then
			   	AI:Say("Light drives all darkness away! ")
			    AI:SetArray(1,26)
			elseif a == 26 then
			   	AI:Say("Your Temple is under my light! ")
			    AI:SetArray(1,27)
			elseif a == 27 then
			   	AI:Say("My children, come out! I bestow upon you the power of light! ")
			   	AI:ScreenText("Horus starts to summon Horus' Son! ",2)
			   	AI:PlayEffect("skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini ")
			 	AI:SummonMonsterByPos( 55055 , 251 , 233 )
				AI:SummonMonsterByPos( 55055 , 245 , 233 )
				AI:SummonMonsterByPos( 55055 , 240 , 233 )
			   	AI:SetTimer( 2, 10000 , 4 )
			   	AI:SetTimer( 3, 60000, 1 )
			    AI:SetArray(1,28)
			end
		end
		if nIndex == 1 then
		--
			b = AI:GetArray(2)
			if b == 0 then
				AI:SummonMonsterByPos( 55109 , 243 , 243 )
				AI:SummonMonsterByPos( 55109 , 249 , 243 )
				AI:SetArray(2,1)
			elseif b == 1 then
				AI:SummonMonsterByPos( 55109 , 246 , 240 )
				AI:SetArray(2,2)
			elseif b == 2 then
				AI:SummonMonsterByPos( 55109 , 246 , 246 )
				AI:SetArray(2,3)
			elseif b == 3 then
				AI:SummonMonsterByPos( 55109 , 246 , 237 )
				AI:SetArray(2,4)
			elseif b == 4 then
				AI:SummonMonsterByPos( 55109 , 246 , 234 )
				AI:SetArray(2,5)
			elseif b == 5 then
				AI:SummonMonsterByPos( 55109 , 246 , 231 )
				AI:SummonMonsterByPos( 55109 , 238 , 231 )
				AI:SummonMonsterByPos( 55109 , 254 , 231 )
				AI:SetArray(2,6)
			elseif b == 6 then
				AI:SummonMonsterByPos( 55109 , 246 , 228 )
				AI:SetArray(2,7)
			elseif b == 7 then
				AI:SummonMonsterByPos( 55109 , 246 , 225 )
				AI:SetArray(2,8)
			elseif b == 8 then
				AI:SummonMonsterByPos( 55109 , 246 , 222 )
				AI:SetArray(2,9)
			end
		end
		if nIndex == 2 then
		--
			a = AI:GetArray(3)
			if  a == 0 then
				AI:SummonMonsterByPos( 55055 , 251 , 238 )
				AI:SummonMonsterByPos( 55055 , 240 , 238 )
				AI:SetArray(3,1)
			elseif a == 1 then	
				AI:SummonMonsterByPos( 55111 , 229 , 233 )
				AI:SummonMonsterByPos( 55111 , 232 , 233 )
				AI:SummonMonsterByPos( 55111 , 235 , 233 )
				AI:SummonMonsterByPos( 55111 , 240 , 233 )
				AI:SummonMonsterByPos( 55111 , 250 , 233 )
				AI:SummonMonsterByPos( 55111 , 254 , 233 )
				AI:SummonMonsterByPos( 55111 , 258 , 233 )
				AI:SummonMonsterByPos( 55111 , 261 , 233 )
				AI:SetArray(3,2)
			elseif a == 2 then	
				AI:SummonMonsterByPos( 55112 , 229 , 233 )
				AI:SummonMonsterByPos( 55112 , 232 , 233 )
				AI:SummonMonsterByPos( 55112 , 235 , 233 )
				AI:SummonMonsterByPos( 55112 , 238 , 233 )
				AI:SummonMonsterByPos( 55112 , 240 , 233 )
				AI:SummonMonsterByPos( 55113 , 250 , 233 )
				AI:SummonMonsterByPos( 55113 , 253 , 233 )
				AI:SummonMonsterByPos( 55113 , 256 , 233 )
				AI:SummonMonsterByPos( 55113 , 258 , 233 )
				AI:SummonMonsterByPos( 55113 , 261 , 233 )
				AI:SetArray(3,3)
			end
		end
		----????
		if nIndex == 3 then
		--
			AI:SetAIState(0)
			AI:Say("Very good! ")
			AI:SetArray(14,1)
		end
		
		
-------------------------------------
		if nIndex == 4 then
        --???? 
	        AI:Say("Endless fire, burn! ") 
	        AI:AddSkill(8722,1)
	        AI:UseSkill(8722,1)
	    end
	    if nIndex == 5 then
	        --??
	        AI:Say("Burning Land, destroy my darkness! ")
	        AI:AddSkill(8722,2)
	        AI:UseSkill(8722,2)
	    end
	    if nIndex == 6 then
	        --???? 
	        AI:Say("The ultimate secret of Light! Taste it! ") 
	        AI:AddSkill(8767,2) 
	        AI:UseSkill(8767,2)
	    end
	    if nIndex == 7 then
	        --???? 
	        AI:Say("Die under the rage of Balder! ")
	        AI:AddSkill(8722,4)
	        AI:UseSkill(8722,4)
	    end
	    if nIndex == 8 then
	        --?? 
	        AI:Say("Set, you cannot comprehend my power! ")
	        AI:AddSkill(8722,5)
	        AI:UseSkill(8722,5)
	        AI:SummonMonster(55055, 3 )
	        
	    end 
	end

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		
		a = AI:GetArray(14)
		if a == 1 then
			t = AI:HaveAttackTarget()
		    if t == false then
		        AI:DelTimer(4)
		        AI:DelTimer(5)
		        AI:DelTimer(6)
		        AI:DelTimer(7)
		        AI:DelTimer(8)
		        AI:SetArray(5,0)
		    else
		        HP = AI:GetHP()
		        HPMAX = AI:GetHPMax()
		        a = AI:GetArray(5)
		        if a == 0 then
		            if HP < HPMAX then
		                AI:Say("I'm enraged! ")
		                AI:SetTimer(4,15000,65535)
		                AI:SetTimer(5,13000,65535)
		                AI:SetTimer(6,60000,65535)
		                AI:SetTimer(7,22000,65535)
		                AI:SetTimer(8,15000,65535)
		                AI:SetArray(5,1)
		            end
		        end
		    end
		end
    end
		
	function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	    	 
	    AI:AddSeekPos( 243 , 245 , 246 )
	    AI:AddSeekPos( 243 , 245 , 241 )
	    AI:AddSeekPos( 243 , 245 , 229 )  
	    AI:AddSeekPos( 243 , 245 , 219 )  --????,???
	    
	    AI:AddSeekPos( 243 , 244 , 226 )  --???????
	    AI:AddSeekPos( 243 , 231 , 226 )  --??1
	    AI:AddSeekPos( 243 , 231 , 232 )  --??2
	    AI:AddSeekPos( 243 , 261 , 233 )  --??3
	    
	    AI:AddSeekPos( 243 , 247 , 230 )  --
	    AI:AddSeekPos( 243 , 247 , 243 )  --????
	    
	    AI:AddSeekPos( 243 , 246 , 233 )
	    AI:AddSeekPos( 243 , 246 , 226 )
	    
	end
	
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
	    
	    if (( PosX == 245 ) and ( PosY == 246 )) then
	        AI:SetAIState(7)
	        AI:SetDir(270)
	        AI:SetTimer(0 ,5000,5)
	    elseif (( PosX == 245 ) and ( PosY == 241 )) then
	    	AI:SetAIState(7)
	    	AI:SetTimer(0 ,5000,2)
	    	AI:ScreenText("Strange fog is diffusing. ", 2 )
		elseif (( PosX == 245 ) and ( PosY == 219 )) then   --????,???
			AI:SetTimer(0 ,5000,2)
			AI:SetAIState(7)
	   	elseif (( PosX == 244 ) and ( PosY == 226 )) then	--??????,???
	       	AI:SetTimer(0 ,5000,2)
			AI:SetAIState(7)
	    elseif (( PosX == 231 ) and ( PosY == 226 )) then	--??1,???
	       	AI:SetTimer(0 ,5000,3)
			AI:SetAIState(7)
	   	elseif (( PosX == 231 ) and ( PosY == 232 )) then	--??2,???
	      	AI:SetTimer(0 ,5000,2)
			AI:SetAIState(7)
	    elseif (( PosX == 261 ) and ( PosY == 233 )) then 	--??3,???
	   		AI:SetTimer(0 ,5000,2)
			AI:SetAIState(7)
	    elseif (( PosX == 247 ) and ( PosY == 243 )) then   --??4,???,??????
	    	AI:SetTimer(0 ,5000,3)
			AI:SetAIState(7)
	    elseif (( PosX == 246 ) and ( PosY == 233 )) then  	--????
	    	AI:SummonMonsterByPos( 55057 ,245,218)
	    	AI:SetTimer(0,8000,7)
	    	AI:SetAIState(7)
	    elseif (( PosX == 246 ) and ( PosY == 226 )) then  	--????
			AI:SetAIState(0)
	    end
	    	
	end
	