# Log Compression and Move Script

This Bash script is designed to help you compress and organize log files from a source directory into a destination directory. It offers a user-friendly interface, error handling, and customization options.

## Features

- **User Interaction:** The script prompts the user for the source directory path and handles cases where the directory does not exist.

- **Destination Directory:** It creates a destination directory named **_'compressed_logs'_** within the source directory to store compressed log files.

- **Directory Validation:** If the destination directory already exists, the script allows the user to specify an alternate name.

- **Compression and Move:** Log files are compressed using the **_'tar'_** command and then moved to the destination directory. Any errors are handled gracefully.

- **Informative Feedback:** The script provides feedback on the compression and move operations and lists the compressed files in the destination directory.

## Prerequisites

- Bash shell environment.

- Unix-like operating system (Linux, macOS).

## Languages and Utilities Used
- **Bash**
  <br><br>
[<img align="left" alt="Bash Icon" width="50px" src="https://upload.wikimedia.org/wikipedia/commons/4/4b/Bash_Logo_Colored.svg" />][bash]

[bash]: https://www.gnu.org/software/bash/

  <br><br>

## Environments Used

- **Red Hat**
- **Cent OS**
  
   <br> 
[<img align="left" alt="Red Hat Icon" width="40px" src="https://upload.wikimedia.org/wikipedia/commons/d/d8/Red_Hat_logo.svg" />][red_hat]
[<img align="left" alt="Red Hat Icon" width="40px" src="https://upload.wikimedia.org/wikipedia/commons/6/63/CentOS_color_logo.svg" />][cent_os]

[red_hat]: https://www.redhat.com/
[cent_os]: https://www.centos.org/

<br><br>

## Usage

1. **Providing Source Directory**: Clone or download this script to your local machine. Run the script **_'./log_compression_script.sh'_** in a terminal and follow the on-screen prompts. You will be asked to provide the absolute path of the source directory containing your log files.

2. **Destination Directory**: If the destination directory already exists, you will be prompted to choose an alternate name for it.

3. **Compression and Move**: The script will then compress and move the log files to the destination directory.

4. **Process Summary**: Upon completion, you will receive a summary of the process, including any potential errors that occurred.

## Customization

- **Source and Destination**: You can customize the source and destination directories by modifying the script's variables.

- **Error Handling**: The script suppresses error messages during compression and move operations to provide a smoother user experience. You can adjust this behavior as needed.

- **Timeouts**: Adjust the **_'sleep'_** durations in the script to control the timing of messages and directory navigation.

- **Security**: Ensure the script is used in a secure environment and does not process sensitive information without appropriate safeguards.

