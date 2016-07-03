Info:
The tpa_tracker will use text-to-speech to inform the user more info about a player's tpa than could be reasonably done with standard soundtriggers.

Example:
There is a white flash around Klawdees, their magical shield has broken.
It would say "Klawdees TPA" where TPA is said in a lower pitch than Klawdees

The text for adding a TPA (which I can't really remember)
It would say "Klawdees TPA" where TPA is said in a higher pitch than Klawdees

I'll probably add support for it to also mention color changes of TPA, but as of writing this I don't know what those do so I'll save that for later. (Still haven't written any code yet despite telling people weeks ago that I'd make this.)

Dependencies:
This script uses Lua-eSpeak for talking purposes. You'll probably need that for this to work properly.
http://lua-espeak.luaforge.net/

Future features:
Add configurable nicknames for various players so that if someone has a name the TTS might not be able to easily pronounce users can give them something easier to say and understand.