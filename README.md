# Auto Pull and Push Scripts for Obsidian

Automates Git pull on Obsidian startup and push on shutdown, ensuring seamless synchronization of your Obsidian vault with Git.

## Files

1. **Obsidian Auto Pull and Push (VBS Script)**: This script automates the process of pulling changes from the repository when Obsidian starts and pushing changes when Obsidian is closed.
2. **Python Pull Script**: This script pulls the latest changes from the Git repository.
3. **Python Push Script**: This script adds, commits, and pushes changes to the Git repository.

## Instructions

### Step 1: Modify the Paths
Before using the scripts, make sure to change the paths to match the locations on your system. In all scripts, you will find paths like:
```
'PathTo/Obsidian_notes_repo'
```

### Step 2: Python Files Location
The two Python files must be in the same folder as the VBS script for it to work. If they are located elsewhere, you will need to provide the full path to the Python files in the VBS script.

### Step 3: Usage

**Just Run the VBS script** to **start Obsidian** and the latest changes from the repository will be automatically **pulled**.<br>
**When Obsidian is closed**, the VBS script triggers the push script to **commit and push the changes to the repository**.

### Step 4: Creating a Shortcut (Optional)
You can create a shortcut for the VBS script to make launching Obsidian easier:
1. **Create a Shortcut** for the VBS file.
2. Rename the shortcut to **Obsidian**.
3. Change the icon of the shortcut to match Obsidian’s icon by selecting Obsidian.exe.

### Requirements

- Make sure you have **Python** and **Git** installed on your system.
- The scripts assume you have a Git repository set up with Obsidian.
