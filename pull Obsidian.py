# Python script to pull from a repository

import subprocess

# Path to the repository
repo_path = r'PathTo/Obsidian_notes_repo'

def pull_repository():
    try:
        # Execute Git Pull command
        subprocess.run(['git', '-C', repo_path, 'pull'], check=True)
    except subprocess.CalledProcessError as e:
        print(f"Error while pulling: {e}")

if __name__ == "__main__":
    pull_repository()
