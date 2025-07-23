import os
from dotenv import load_dotenv
from sqlalchemy import create_engine as ce
from df_data import movie_details, product_details, user_details 


load_dotenv()

# Load environment variables from .env file
db_host = os.getenv("DB_HOST")
db_name = os.getenv("DB_NAME")
db_user = os.getenv("DB_USER")
db_password = os.getenv("DB_PASSWORD")
db_port = os.getenv("DB_PORT")

#connecting to postgres using sqlalchemy
def create_engine():
    try:
        engine = ce(
            f"postgresql+psycopg2://{db_user}:{db_password}@{db_host}:{db_port}/{db_name}"
        )
        print("Engine created successfully.")
        return engine
    except Exception as e:
        print(f"Error creating engine: {e}")
        return None

movie_details.to_sql("bronze.movie_details", con=create_engine(), if_exists="replace", index=False)
product_details.to_sql("bronze.product_details", con=create_engine(), if_exists="replace", index=False)
user_details.to_sql("bronze.users_details", con=create_engine(), if_exists="replace", index=False)

#close the connection
def close_connection(engine):
    try:
        if engine:
            engine.dispose()
            print("Connection closed successfully.")
    except Exception as e:
        print(f"Error closing connection: {e}")
