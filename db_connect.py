from sqlalchemy import create_engine

def get_db_connection():
    # Replace with your actual database credentials
    db_url = "postgresql://username:password@localhost:5432/finsight_db"
    engine = create_engine(db_url)
    return engine

if __name__ == "__main__":
    engine = get_db_connection()
    print("Database engine created successfully.")
