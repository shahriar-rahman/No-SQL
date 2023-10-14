import pymongo

# MongoDB connection details
mongo_host = "mongodb"  # This is the service name from your docker-compose.yaml
mongo_port = 27017  # MongoDB default port

# Connect to MongoDB
client = pymongo.MongoClient(mongo_host, mongo_port)

# Access a specific database
db = client["my_database"]

# Access a specific collection
collection = db["my_collection"]

# Now you can perform CRUD operations on the collection
