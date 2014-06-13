import sys, pygame, time

class PS4_Control():
	def __init__(self, left_joy=0, l2=0, r2=0):
		self.left_joy = left_joy
		self.l2 = l2
		self.r2 = r2

	def detect(self):
		e = pygame.event.wait()
		if (e.type == pygame.JOYAXISMOTION or e.type == pygame.JOYBUTTONDOWN):
			if e.type == pygame.JOYAXISMOTION:
				if(e.dict['axis'] == 0):
					pos = e.dict['value']
					move = round(pos * self.left_joy, 0)
					#print "Left_joy :" + str(move)
					return ["left_joy", int(move)]

				"""
				if ((e.dict['axis'] == 2)):
					pos_y = e.dict['value']
					value = round(pos_y * self.ightScale, 0)
					#print "Right_joy :" + str(value)
					return ["right_joy", int(value)]
				"""

				if ((e.dict['axis'] == 3)):
					pos = e.dict['value']
					#print "l2 is {}".format(pos)
					value = round((1 + pos) / 2 * self.l2, 0)
					return ["l2", int(value)]

				if ((e.dict['axis'] == 4)):
					pos = e.dict['value']
					#print "r2 is {}".format(pos)
					value = round((1 + pos) / 2 * self.r2, 0)
					return ["r2", int(value)]
		return ["error","error"]
		'''
			elif e.type == pygame.JOYBUTTONDOWN:
				if(e.dict['button'] == 0):
					print "button S"
					return ["button", "S"]
				if(e.dict['button'] == 1):
					print "button X"
					return ["button", "X"]
				if(e.dict['button'] == 2):
					print "button O"
					return ["button", "O"]
				if(e.dict['button'] == 3):
					print "button T"
					return ["button", "T"]
		'''
	def init(self):
		pygame.joystick.init()
		pygame.display.init()
		if not pygame.joystick.get_count():
			print "\nPlease connect a joystick and run again.\n"
			quit()
		else:
			print "\n%d joystick(s) detected." % pygame.joystick.get_count()
			for i in range(pygame.joystick.get_count()):
				myjoy = pygame.joystick.Joystick(i)
				myjoy.init()
				print "Joystick :{} ".format( myjoy.get_name())
