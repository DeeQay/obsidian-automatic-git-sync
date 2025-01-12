# Python script to push to a repository

import subprocess

commit_msg = 'auto-commit David-Laptop'

# Path to the repository
repo_path = r'C:\Users\david\Documents\GitHub\Obsidian'

def push_repository():
    try:
        # Execute Git Push command
        subprocess.run(['git', '-C', repo_path, 'add', '.'], check=True)
        subprocess.run(['git', '-C', repo_path, 'commit', '-m', commit_msg], check=True)
        subprocess.run(['git', '-C', repo_path, 'push'], check=True)
    except subprocess.CalledProcessError as e:
        print(f"Error while pushing: {e}")

if __name__ == "__main__":
    push_repository()
