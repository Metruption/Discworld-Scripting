#!/usr/bin/python
from inputs import get_gamepad
import json

class RenameThisClass:
	def __init__():
		self.buttons_pressed = []
		with open('dwcontroller.json') as data_file:    
	    	badname_thing = json.load(data_file)

	def update_pressed_buttons(self, event):
		pass #@todo(code this)

	def send_to_mud(sendthis):
		pass #@todo(code this)

	def run(self):
		while 1:
		    events = get_gamepad()
		    for event in events:
		    	update_pressed_buttons(event)
		    	try:
		    		sendthis = badname_thing[''.join(self.buttons_pressed)]
		    		send_to_mud(sendthis)
	         