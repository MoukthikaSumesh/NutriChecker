import mysql.connector

# Step 1: Connect to your MySQL database
db = mysql.connector.connect(
    host="localhost",             # or your DB host, e.g., '127.0.0.1'
    user="root",         # replace with your MySQL username
    password="YOUR PASSWORD",     # replace with your MySQL password
    database="project" # replace with your actual database name
)

cursor = db.cursor()

# Step 2: Get user input
symptom_input = input("Enter a symptom to check for nutrient deficiency: ")

# Step 3: Query the database for matching symptoms
query = """
SELECT Nutrient, Daily_requirement, Food_remedy, Description
FROM nutritionchecker
WHERE Symptom LIKE %s
"""
cursor.execute(query, ('%' + symptom_input + '%',))

results = cursor.fetchall()

# Step 4: Display results
if results:
    for nutrient, daily, food, desc in results:
        print("\n==============================")
        print(f"🧬 Nutrient         : {nutrient}")
        print(f"📌 Daily Requirement: {daily}")
        print(f"🥗 Food Remedy      : {food}")
        print(f"ℹ️ Description       : {desc}")
        print("==============================")
else:
    print("\n❌ No nutrient deficiency found for that symptom.")

# Step 5: Cleanup
cursor.close()
db.close()

