base_uri = 'https://fir-rails-demo1.firebaseio.com/'

# Add path for your auth.json file which can be generated from firebase console.
# Go to the Firebase console and under Project Settings -> Service Accounts -> Firebase Admin SDK click on GENERATE NEW PRIVATE KEY
private_key_json_string = File.open('/Users/amitpand/Downloads/fir-rails-demo1-firebase-adminsdk-dq0kt-5cb354a70b.json').read
FIREBASE = Firebase::Client.new(base_uri, private_key_json_string)