import os
from dotenv import load_dotenv

def load_keys():
    load_dotenv()
    api_key = os.getenv("OPENAI_API_KEY")
    gdrive_id = os.getenv("GDRIVE_FOLDER_ID")
    return api_key, gdrive_id

if __name__ == "__main__":
    key, folder = load_keys()
    print("API Key:", key[:8] + "..." if key else "Brak")
    print("GDrive Folder ID:", folder)
