require "espeak"


--@params:
--	player is the name of the person whose tpa speaker is about to talk abour
--	direction is which way the tpa is going. up = true;down = false
--@preconditions:
--	player contains a string
--	direction contains a boolean
--@postconditions:
--	speaks aloud a soundtrigger following the human readable rules in readme.txt
function tpa_declare(player,direction)
	espeak.Synth(player,0,espeak.POS_CHARACTER)
	if direction then
		espeak.SetParameter(espeak.PITCH,60,false)
	else
		espeak.SetParameter(espeak.PITCH,40,false)
		espeak.Synth("TPA",0,espeak.POS_CHARACTER)
	end
	espeak.SetParameter(espeak.PITCH,50,false)

--@params:
--	line is the line that triggered the trigger
--	direction is which way the tpa is going. up = true;down = false
--@preconditions:
-- line is a string
-- direction is a boolean
--@postconditions:
-- returns which way the tpa is going. up = true;down = false
--  if trigger misfires on a roomchat returns "rincewind"
function parse_name(line,direction)
	return --todo code this

--@params:
--	line is the line that triggered the trigge
--@preconditions:
-- line is a string
--@postconditions:
-- returns the name of the person who is having their tpa status modified
--  if trigger misfires on a roomchat returns "rincewind"
function parse_direction(line)
	return --todo code this

--prepare for EXECUTION (you will be executed by npcs if your fi.de.* sucks)
--better put up another TPA
--@params:
-- name - the name of the trigger or alias (the contents of the "label" field)
-- line - the entire line that matched the trigger or alias
-- wildcards - an array of the matching wildcards (if any)
--@preconditions:
-- name is a string
-- line is a string
-- there are no wildcards? (i can probably parse the name that way)
--@postconditions:
-- does all the stuff so that readme.txt would be happy if it had emotion
function executor(name, line)
	direction = parse_direction(line)
	if direction == "rincewind"
		return
		--todo: make it log that it thinks there was a misfire on the direction
		--			also include the line in the misfire log
	name = parse_name(line)
	if name == "rincewind"
		return
		--todo: make it log that it thinks there was a misfire on the name
		--			also include the line in the misfire log


--todo: code those things
