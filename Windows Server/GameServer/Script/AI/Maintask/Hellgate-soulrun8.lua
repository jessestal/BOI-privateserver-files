--	//****************************************
--	//
--	//		Copyright��PERFECT WORLD
--	//		Modified��2009/11/18
--	//		Author��¬��
--	//		TaskName��Hellgate-soulrun8.lua
--	//		TaskID�������
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
    			AI:AddSeekPos(217,80,188)
		end
	
function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
    	local AI = GetMonsterAI(nAI)
    			if ((PosX==80) and (PosY==188)) then
						AI:Exit()				 						
 				end
 		end
 				