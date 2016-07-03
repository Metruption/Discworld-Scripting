require "espeak"


--@params:
--	speaker is the espeak object that'll do the talker //might not even need those
--	player is the name of the person whose tpa speaker is about to talk abour
--	direction is which way the tpa is going. up = true;down = false
--@preconditions:
--	speaker is a valid espeak objcet //might not even need those
--	player contains a string
--	direction contains a boolean
--@postconditions:
--	speaks aloud a soundtrigger following the human readable rules in readme.txt
function tpa_declare (speaker,player,direction)
	espeak.Synth(player,0,espeak.POS_CHARACTER)
	if direction then
		espeak.SetParameter(espeak.PITCH,60,false)
	else
		espeak.SetParameter(espeak.PITCH,40,false)
		espeak.Synth("TPA",0,espeak.POS_CHARACTER)
	end
	espeak.SetParameter(espeak.PITCH,50,false)

--todo: finish this