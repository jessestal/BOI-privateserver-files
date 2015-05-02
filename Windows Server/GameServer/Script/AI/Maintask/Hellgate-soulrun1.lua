--	//****************************************
--	//
--	//		Copyright£ºPERFECT WORLD
--	//		Modified£º2009/11/18
--	//		Author£ºÂ¬öÎ
--	//		TaskName£ºHellgate-soulrun1.lua
--	//		TaskID£ºÁé»êÇò
--	//
--	//****************************************
function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)									
		end
function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		end


function Event_ReadSeekPos(nAI)
    	local AI = GetMonsterAI(nAI)
    			AI:AddSeekPos(217,101,105)
		end
	
function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
    	local AI = GetMonsterAI(nAI)
    			if ((PosX==101) and (PosY==105)) then
						AI:Exit()				 						
 				end
 		end
 				