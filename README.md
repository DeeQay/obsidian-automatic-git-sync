# Auto Pull and Push Scripts for Obsidian

Automates Git pull on Obsidian startup and push on shutdown, ensuring seamless synchronization of your Obsidian vault with Git.

## Instructions

### Step 1: Modify the Path
Before using the script, make sure to change the paths to match the locations on your system:
```
'PathTo/Obsidian_notes_repo'
```

### Step 2: Usage

**Just Run the VBS script** to **start Obsidian** and the latest changes from the repository will be automatically **pulled**.<br>
**When Obsidian is closed**, the VBS script triggers the push script to **commit and push the changes to the repository**.

### Step 3: Creating a Shortcut (Optional)
You can create a shortcut for the VBS script to make launching Obsidian easier:
1. **Create a Shortcut** for the VBS file.
2. Rename the shortcut to **Obsidian**.
3. Change the icon of the shortcut to match Obsidian’s icon by selecting Obsidian.exe.

### Requirements

- **Git** installed on your system.
- A cloned Git repository for Obsidian.
