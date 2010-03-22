from google.appengine.ext import db

# Create your models here.
class Congressman(db.Model):
	name = db.StringProperty()
	district = db.StringProperty()
	party = db.StringProperty()
	email = db.StringProperty()
	phone_number = db.PhoneNumberProperty()
	twitter = db.StringProperty()
	created_on = db.DateTimeProperty(auto_now_add = 1)
	
class Bill(db.Model):
	intro_date = db.DateProperty()
	status = db.StringProperty()
	abstract = db.TextProperty()
	bill_number = db.StringPropery() #ex: HB615
	#committee = db.StringProperty()
	#TODO: add content_root, sponsors, committee
	