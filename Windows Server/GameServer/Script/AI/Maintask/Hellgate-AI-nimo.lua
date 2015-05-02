-- ---------??AI----??-----------

-- 		??1	=	boss AI??			??list
-- 		??2	=	boss ?????		??x
-- 		??3	=	boss?????		??y
-- 		??4	=	boss?????		??z
-- 		??5	=	??????
--		??6	=	????????	??w
--		??7	=	???????		??war	


-- 		timer	0				=		boss????????
-- 		timer	1				=		boss????????
-- 		timer	2-6			=		boss??BUFF??
-- 		timer	7-9			=		boss??????
-- 		timer    10-12 		=		????timer 7-9 ?????
-- 		timer	13				=		????timer 10-12 ?????
-- 		timer	14-16		=		?????
-- 		timer	17				=		boss?????5?????1
-- 		timer	18				=		boss?????5?????2
-- 		timer	19				=		??????
--		timer	20				=		????


-- ---------------------------------------------timer-----------------------------------------------

function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
-- 		timer  1			BOSS??????
    			if nIndex == 0 then	
    				x = AI:GetArray(2)
    				x = x + 1
    				AI:SetArray(2,x)		
				end
-- 		timer 2			BOSS??????
    			if nIndex == 1 then
    				y = AI:GetArray(3)	
    				y = y + 1	 
    				AI:SetArray(3,y)	
				end	
-- 		timer 2-6       ??6-10 =  boss ???,?,?,?,?BUFF	??????				
    			if nIndex == 2 then			
   					AI:SummonMonsterByPos(55008,102,151)    			
   				end		  						
    			if nIndex == 3 then			
   					AI:SummonMonsterByPos(55009,102,173)    			
   				end   					   							
    			if nIndex == 4 then			
   					AI:SummonMonsterByPos(55010,92,167)    			
   				end	   				
     			if nIndex == 5 then			
   					AI:SummonMonsterByPos(55011,111,157)    			
   				end   				 				
    			if nIndex == 6 then			
   					AI:SummonMonsterByPos(55012,111,167)    			
   				end   		
-- 		timer 7-9		 ?????????
    			if nIndex == 7 then				
	 					AI:AddSkill(2413,1)
	 					AI:UseSkill(2413,1)  		
 						AI:AddSkill(8706,5)
 						AI:UseSkill(8706,5)  			
   				end 						
     			if nIndex == 8 then		
	 					AI:AddSkill(2413,1)
	 					AI:UseSkill(2413,1)  			
 						AI:AddSkill(8706,6)
 						AI:UseSkill(8706,6)    			
   				end   				   				
    			if nIndex == 9 then		
	 					AI:AddSkill(2413,1)
	 					AI:UseSkill(2413,1)  			
 						AI:AddSkill(8706,7)
 						AI:UseSkill(8706,7)  			
   				end  
-- 		timer 10-12	 ????	3	?timer7-9? 	?????   ???1?,??3?
    			if nIndex == 10 then
						AI:SetTimer(7,1200,10)	  
				end
    			if nIndex == 11 then
						AI:SetTimer(8,1200,10)	  
				end							
    			if nIndex == 12 then
						AI:SetTimer(9,1200,10)	  
				end							
														  				 	
-- 		timer 13		????	timer10-12 ??????3??	??7?,??3?
    			if nIndex == 13 then		
						atcR = AI:GetRand(2)		
							if atcR == 0 then
									AI:ScreenText("Nemo: Burn in the flames of hell, weakling!",2)	
									AI:SummonMonsterByPos(55024,104,162)	  																
									AI:SetTimer(10,10000,1)			
							end
							if atcR == 1 then
									AI:ScreenText("Nemo: May holy light tear the impurities from your soul!",2)	
									AI:SummonMonsterByPos(55025,104,162)							
									AI:SetTimer(11,10000,1)		
							end
							if atcR == 2 then
									AI:ScreenText("Nemo: Feel the icy breath of death!",2)			
									AI:SummonMonsterByPos(55026,104,162)					
									AI:SetTimer(12,10000,1)																								
							end
				end	

-- 		timer14-16			???,?,??????????,????4??
				if nIndex == 14 then	
					   	AI:ScreenText("Nemo: Flames! Lend me your power!",2) 
						AI:SummonMonsterByPos(55027,110,162)
						AI:SummonMonsterByPos(55027,97,154)
						AI:SummonMonsterByPos(55027,97,169)						
						AI:SetArray(4,2)	
				end
				if nIndex == 15 then	
					   	AI:ScreenText("Nemo: Frost! Lend me your power!",2) 					
						AI:SummonMonsterByPos(55028,110,162)
						AI:SummonMonsterByPos(55028,97,154)
						AI:SummonMonsterByPos(55028,97,169)
						AI:SetArray(4,4)	
				end				
				if nIndex == 16 then	
					   	AI:ScreenText("Nemo: Light! Lend me your power!",2) 					
						AI:SummonMonsterByPos(55029,110,162)
						AI:SummonMonsterByPos(55029,97,154)
						AI:SummonMonsterByPos(55029,97,169)
						AI:SetArray(4,6)	
				end				
				
			
-- 		timer17		???5????1
    			if nIndex == 17 then	
    					AI:SetArray(5,1)		
				end
-- 		timer18		???5????2
    			if nIndex == 18 then	
    					AI:SetArray(5,2)		
				end
-- 		timer19		????????
    			if nIndex == 19 then	  					
 						AI:AddSkill(8707,1)
 						AI:UseSkill(8707,1)  			
				end
--		timer20		????
   			if nIndex == 20 then	  		
 					AI:AddSkill(2413,1)
 					AI:UseSkill(2413,1)  			
    		end
		end


-- ----------------------------------------------main----------------------------------------------																					
   				
	function Event_Thinking(nAI)
    	local AI = GetMonsterAI(nAI)
    	
				HP = AI:GetHP()
				MAXHP = AI:GetHPMax() 
				
				ptype = AI:GetTargetCharType()
				if ptype == 1 then
					pid = AI:GetTargetID()
					ptiao =  AI:GetPlayerValue(pid, 237)
					if ptiao == 1 then
						pmaxhp = AI:GetTargetHPMax()
						php = AI:GetTargetHP()
						pdam = pmaxhp - php
						if pdam > 0 then
							AI:DoSkillByEnmity(pid, 2414,1)
							AI:ScreenText("Nemo: Wa-ha-ha-ha! Weakling! Revealed your weakness, eh? Now you die!",2)
						end
					end
					if ptiao == 0 then
						pid = AI:GetTargetID()
						AI:SetPlayerValue(pid, 236,1)
					end
				end
    	
    	
-- 		???????
				t = AI:GetEnmityCount()
    			if t < 1 then
 						AI:AddSkill(8704,2)
 						AI:UseSkill(8704,2)
        				AI:DelTimer(0)
        				AI:DelTimer(1)	
        				AI:DelTimer(2)	
        				AI:DelTimer(3)	
        				AI:DelTimer(4)	
        				AI:DelTimer(5)	
        				AI:DelTimer(6)	
        				AI:DelTimer(7)	
        				AI:DelTimer(8)	
        				AI:DelTimer(9)	
        				AI:DelTimer(10)	
        				AI:DelTimer(11)	
        				AI:DelTimer(12)	
        				AI:DelTimer(13)	
        				AI:DelTimer(14)	
        				AI:DelTimer(15)	
        				AI:DelTimer(16)	
        				AI:DelTimer(17)	
        				AI:DelTimer(18)	
        				AI:DelTimer(19)	

        				AI:SetArray(1,0)
        				AI:SetArray(2,0)	
        				AI:SetArray(3,0)
        				AI:SetArray(4,0)
        				AI:SetArray(5,0)	
        				AI:SetArray(7,0)	
        				AI:RestoreHPInstant(20000000)
    			else
   
						list = AI:GetArray(1)
-- 		????????
						n1	 = AI:GetPlayerIDByIndex(0)
						n2 = AI:GetPlayerIDByIndex(1)		
						d1 = AI:GetPlayerDistance(n1)
						d2 = AI:GetPlayerDistance(n2)
						
						if d1 > 25 then
    								w = AI:GetArray(6)
    								if w == 0 then
    									AI:ScreenText("Nemo: Yes! Run, you coward!",2)
    									AI:SetArray(6,1)
    								end
 									AI:AddSkill(8704,2)
 									AI:UseSkill(8704,2)
 									AI:DelTimer(0)
     				   				AI:DelTimer(1)	
        							AI:DelTimer(2)	
        							AI:DelTimer(3)	
        							AI:DelTimer(4)	
      				  				AI:DelTimer(5)	
        							AI:DelTimer(6)	
        							AI:DelTimer(7)	
        							AI:DelTimer(8)	
        							AI:DelTimer(9)	
        							AI:DelTimer(10)	
        							AI:DelTimer(11)	
        							AI:DelTimer(12)	
        							AI:DelTimer(13)	
        							AI:DelTimer(14)	
        							AI:DelTimer(15)	
        							AI:DelTimer(16)	
        							AI:DelTimer(17)	
        							AI:DelTimer(18)	
        							AI:DelTimer(19)	

        							AI:SetArray(1,0)
        							AI:SetArray(2,0)	
        							AI:SetArray(3,0)
        							AI:SetArray(4,0)
        							AI:SetArray(5,0)	
        							AI:SetArray(7,0)
        							AI:RestoreHPInstant(20000000)
						end
						
--						if d2 > 25 then
--    								w = AI:GetArray(6)
--    								if w == 0 then
--    										AI:ScreenText("Nemo: Yes! Run, you coward!",2)
--    										AI:SetArray(6,1)
--    								end
-- 									AI:AddSkill(8704,2)
-- 									AI:UseSkill(8704,2)
-- 									AI:DelTimer(0)
--     				   				AI:DelTimer(1)	
--        							AI:DelTimer(2)	
--        							AI:DelTimer(3)	
--        							AI:DelTimer(4)	
--      				  			AI:DelTimer(5)	
--        							AI:DelTimer(6)	
--        							AI:DelTimer(7)	
--        							AI:DelTimer(8)	
--        							AI:DelTimer(9)	
--        							AI:DelTimer(10)	
--        							AI:DelTimer(11)	
--        							AI:DelTimer(12)	
--        							AI:DelTimer(13)	
--        							AI:DelTimer(14)	
--        							AI:DelTimer(15)	
--        							AI:DelTimer(16)	
--        							AI:DelTimer(17)	
--        							AI:DelTimer(18)	
--        							AI:DelTimer(19)	

--       							AI:SetArray(1,0)
--        							AI:SetArray(2,0)	
--        							AI:SetArray(3,0)
--        							AI:SetArray(4,0)
--        							AI:SetArray(5,0) 	
--        							AI:RestoreHPInstant(20000000)									
 										 										
--						end   					
   						
						
												
-- --------------------------------------------cast--------------------------------------------------


-- 		BOSS???
--       x?timer0??????2
    				if list == 0 then
    						talk = AI:GetArray(5)
    						x = AI:GetArray(2)
    						if talk == 0 then

     								AI:SetArray(5,1)
     						end
     						if x == 0 then     	
     								if talk == 1 then							
     										AI:ScreenText("Nemo: What's this?",2)
     										AI:SetArray(5,2)
     										AI:SetArray(6,0)
     								end
     						end     						
     						if x == 0 then
     								if talk == 2 then
     										if HP < MAXHP then
 													AI:ScreenText("Nemo: Human? Why are you here?",2)  
 													AI:SetTimer(0,5000,10)
 												   	AI:SetArray(5,3)
 											end
 									end
 							end
 							if x == 1 then
 									if talk == 3 then
 											AI:ScreenText("Nemo: No matter... go on, little one. Back home, you go!",2)     	
 											AI:SetArray(5,4)	
 									end
 							end							
 -- 		????,??????
     						if x == 4 then
     								if talk == 4 then
 											AI:ScreenText("Skuld: Worry not! Help is on the way!",2)   																																					
											AI:SummonMonsterByPos(55020,112,156)
											AI:SummonMonsterByPos(55020,102,151)
											AI:SummonMonsterByPos(55020,93,156)
											AI:SummonMonsterByPos(55020,92,167)
											AI:SummonMonsterByPos(55020,102,174)
											AI:SummonMonsterByPos(55020,112,167)
											AI:SetArray(5,6)
									end					
							end	
							if x == 6 then
									if talk == 6 then
 											AI:ScreenText("Nemo: What?! They are helping you?",2)
 											AI:SetArray(5,7)
 									end
 							end
 							if x == 7 then
 									if talk == 7 then
 											AI:ScreenText("Nemo: Ha! Your pathetic attempts cannot hurt me!",2)																		  
											AI:SetArray(1,1)	
											AI:SetArray(5,8)
									end											
 							end	 
 					end		
-- 			BOSS??????				  						
					if list == 1 then
     						if HP < MAXHP * 0.95 then
 									AI:ScreenText("Nemo: Fools! Who would help this mortal?! You will pay!",2)	
 									AI:AddSkill(8704,2)
 									AI:UseSkill(8704,2)
 									AI:SetArray(5,0)
 									AI:SetArray(1,2)
 							end
 					end
-- 			??BUFF????
-- 			y?timer1??????3
					if list == 2 then	
							talk = AI:GetArray(5)
							if talk == 0 then
								    y = AI:GetArray(3)
     								AI:SetTimer(1,5000,25)		
     								AI:SetArray(5,1)		
     						end						
     								if y == 1 then
     										if talk == 1 then
   													AI:ScreenText("Nemo: Is that all you got?!",2)
   													AI:SetTimer(20,60000,65535)	
   													AI:SetArray(5,2)
   											end
   									end
   									if y == 2 then
   											if talk == 2 then
   													AI:ScreenText("Nemo: Still, you try?! Burn!!",2)
  													AI:SummonMonsterByPos(55024,104,162)
  													AI:SetArray(5,3)
  											end 											
  									end
  									if y == 3 then
  											if talk == 3 then
   													AI:ScreenText("Skuld: To the North! Incoming fire barrier!",2)  	
 													AI:SetTimer(2,3000,65535)  
 													AI:SetTimer(10,10000,1)	
 													AI:SetArray(5,4)
 											end									
   									end
   									if y == 8 then
   											if talk == 4 then
   													AI:ScreenText("Nemo: I'm getting annoyed, now. Holy light!!",2)
  													AI:SummonMonsterByPos(55025,104,162)
  													AI:SetArray(5,5)
  											end
  									end
  									if y == 9 then
  											if talk == 5 then
   													AI:ScreenText("Skuld: Quickly! Barrier to the South!",2)  	
 													AI:SetTimer(3,3000,65535)  
 													AI:SetTimer(11,10000,1)	
 													AI:SetArray(5,6)
 											end
 									end
    								if y == 14 then
    										if talk == 6 then
   													AI:ScreenText("Nemo: Okay, now I'm angry! Freeze!!",2)
  													AI:SummonMonsterByPos(55026,104,162)
  													AI:SetArray(5,7)
  											end
  									end
  									if y == 15 then
  											if talk == 7 then
   													AI:ScreenText("Skuld: Southwest! Hurry!",2)  	
 													AI:SetTimer(4,3000,65535)  
 													AI:SetTimer(12,10000,1)	
 													AI:SetArray(5,8)
 											end
 									end 
 									if y == 18 then 	
 											if talk == 8 then						
   													AI:ScreenText("Skuld: Well done, hero! Now, head Northeast. It will help you break his defenses.",2)  	
 													AI:SetTimer(5,3000,65535) 
 													AI:SetArray(5,9)
 											end
 									end
 									if y == 18 then
 											if talk == 9 then
-- 													AI:ScreenText("GUID:02930000024",2)    					
-- 													AI:AddSkill(8707,1)
-- 													AI:UseSkill(8707,1) 
--													AI:SetTimer(19,20000,65535)	 								 		 
 										 	 	 	AI:SetTimer(13,30000,65535)		
													AI:SetArray(1,3)
													AI:SetArray(5,10)
											end														
									end
 					end	
-- 		BOSS???????????	,??????,??????????????????
 					if list == 3 then
 								talk = AI:GetArray(5)
 								 z = AI:GetArray(4)
-- 		??????,??????,??<1?????,?????????,??timer13-15??
 								if z == 0 then								 		
 								 		if talk == 10 then								 					
												if HP < MAXHP * 0.8 then
														AI:ScreenText("Nemo: All right... that does it...",2)
														AI:SetArray(2,0)
-- 		???
 										 				AI:SetTimer(14,1000,1)
 										 				AI:SetArray(5,3)
 									 		 	end
 									 	end
 								end
 								 if z == 2 then 
 								 		x = AI:GetArray(2)
 								 		if talk == 3 then								 		 	 								 				
 								 				AI:SetTimer(0,1000,60)
 								 				AI:SetArray(5,4)	
 								 		end
 								 		if x == 5 then
 								 				war = AI:GetArray(7)
 								 				if war == 0 then
 								 						AI:ScreenText("Skuld: Destroy those orbs! Do not let Nemo absorb their power!",2)		
 								 						AI:SetArray(7,1)			 
 								 				end
 								 		end			
 								 		if x == 20 then
 								 				AI:SetArray(2,0)
 								 				AI:SetArray(4,3) 								 					
 								 		end
 								 end	
-- 		???
 								 if z == 3 then
 								 		if talk == 4 then
 									 			AI:DelTimer(0)
 									 			AI:SetArray(2,0) 								 	 		
										 		AI:SetTimer(15,8000,1)	
										 		AI:SetArray(5,5)
										 end
 								 end
 								 if z == 4 then
 								 		x = AI:GetArray(2)
 								 		if talk == 5 then
 								 				AI:SetTimer(0,1000,60)		
 								 				AI:SetArray(5,6)	
 								 		end			 			
 								 		if x == 20 then
 								 				AI:SetArray(2,0)
 								 				AI:SetArray(4,5)
 								 		end
 								 end 
-- 		???
 								if z == 5 then
 								 		if talk == 6 then
 									 			AI:DelTimer(0)
 								 				AI:SetArray(2,0)
									 			AI:SetTimer(16,8000,1) 	
									 			AI:SetArray(5,7)									 			
 										 end
 								end								 											 									 													 	 	
 								if z == 6 then
 								 			x = AI:GetArray(2)
 								 			if talk == 7 then
		 											AI:SetTimer(0,1000,60)
		 						 					AI:SetArray(5,8)
		 						 			end					 			
 								 			if x == 20 then
 								 					AI:DelTimer(0)
 								 					AI:SetArray(2,0)
 								 					AI:SetArray(4,7) 								 					
 								 					AI:SetArray(1,4)
 								 			end
 								 end 
 					end
		-- 		??????
 					if list == 4 then	  							
 							if HP < MAXHP * 0.7 then
 									talk = AI:GetArray(5)
 									x = AI:GetArray(2)
 									if talk == 8 then	
 											AI:DelTimer(13)
 											AI:DelTimer(19)						
 											AI:SetTimer(0,1000,65535)												
 											AI:DelTimer(2)	
 											AI:DelTimer(3)	
 											AI:DelTimer(4)	
 											AI:DelTimer(5)	
 											AI:DelTimer(6)	 												
 											AI:DelTimer(7)
											AI:DelTimer(8)
											AI:DelTimer(9)
											AI:DelTimer(10)
											AI:DelTimer(11)
											AI:DelTimer(12)
											AI:DelTimer(13)
 											AI:SetArray(5,9)
 									end
 									if x == 1 then
 											if talk == 9 then 										
 													AI:ScreenText("Skuld: Time! I command you to stop!",2)
 													AI:AddStatus(-1,10707,2)
 													AI:SetArray(5,10)
 											end
 									end
 									if x == 5 then
 											if talk == 10 then
													AI:ScreenText("Skuld: Reverse yourself...",2)
													AI:SetArray(5,11)
											end
									end
									if x == 7 then
											if talk == 11 then
													AI:ScreenText("Skuld: Time reverts... life... returns. Revive!",2)																											
													AI:SummonMonsterByPos(55020,112,156)
													AI:SummonMonsterByPos(55020,102,151)
													AI:SummonMonsterByPos(55020,93,156)
													AI:SummonMonsterByPos(55020,92,167)
													AI:SummonMonsterByPos(55020,102,174)
													AI:SummonMonsterByPos(55020,112,167)
													AI:SetArray(5,12)
											end									
									end
									if x == 23 then
											if talk == 12 then
													AI:ScreenText("Nemo: Stop! This ends now!",2)
 													AI:AddSkill(8704,2)
 													AI:UseSkill(8704,2)			
 													AI:SetArray(5,13)		
 											end																			
									end
									if x == 24 then
											if talk == 13 then
													AI:ScreenText("Skuld: Time resets!",2)
 													AI:AddStatus(-1,10707,2)	
 													AI:SetArray(5,14)
 											end
									end
									if x == 25 then
											if talk == 14 then
													AI:ScreenText("Skuld: No! Live!",2)		
													AI:SummonMonsterByPos(55021,108,158)
													AI:SummonMonsterByPos(55021,101,154)
													AI:SummonMonsterByPos(55021,95,158)
													AI:SummonMonsterByPos(55021,95,166)
													AI:SummonMonsterByPos(55021,102,170)
													AI:SummonMonsterByPos(55021,108,166)			
													AI:SummonMonsterByPos(55041,104,162)										
													AI:SetArray(5,15)																		
											end															
									end
									if x == 35 then
											if talk == 15 then
													AI:ScreenText("Nemo: No!!",2)
													AI:AddSkill(8645,1)
        											AI:UseSkill(8645,1)	
													AI:SummonMonsterByPos(55043,104,162)	
													AI:SummonMonsterByPos(55000,104,162)																											
													AI:LoseHPInstant(20000000)		
													AI:SetArray(5,16)
											end
									end																			
							end										
					end
				end									 											
 		end			
	
		function Event_OnDead(nAI)
	    local AI = GetMonsterAI(nAI)
	      AI:SetEctypeVarShort(-1, 60, 1)
		end