# Wi-Fi Password Extractor Tool

A command-line utility for Windows that extracts and displays detailed information about saved Wi-Fi network profiles, including their authentication credentials. This script leverages Windows' built-in `netsh` command to provide a straightforward solution for recovering Wi-Fi passwords from your local machine.

## Table of Contents

- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Example Output](#example-output)
- [Error Handling](#error-handling)
- [Contributing](#contributing)
- [License](#license)
- [Acknowledgments](#acknowledgments)

## Features

- **Profile Retrieval**: Automatically fetches all saved Wi-Fi profiles on the system.
- **Detailed Profile Information**: Displays key details for the specified Wi-Fi profile, including:
  - **SSID Name**: The name of the wireless network.
  - **Authentication Type**: Security protocol used (e.g., WPA2).
  - **Cipher**: Encryption method employed.
  - **Network Key**: The password for the Wi-Fi network.
- **User-Friendly Interface**: Prompts and error messages for improved user experience.

## Requirements

- **Operating System**: Windows
- **Permissions**: Administrative privileges may be required to access certain network configurations.
- **Command Prompt**: Access to Windows Command Prompt (CMD).

## Installation

Clone this repository to your local machine or download the script file directly:

```bash
git clone https://github.com/yourusername/Wi-Fi-Password-Extractor.git
```

Navigate to the directory where the script is located.

## Usage

1. **Execute the Script**:
   - Open Command Prompt with administrative privileges.
   - Navigate to the script's directory:
     ```bash
     cd path\to\Wi-Fi-Password-Extractor
     ```
   - Run the script:
     ```bash
     Wi-Fi_Password_Extractor.bat
     ```

2. **Follow the Prompts**:
   - The script will list all saved Wi-Fi profiles.
   - Enter the SSID of the desired network to retrieve its details.

## Example Output

Upon execution, the script provides output formatted as follows:

```
============================================================
            Wi-Fi Password Extractor Tool
============================================================
Fetching all saved Wi-Fi profiles...

All User Profile     : YourNetworkName
All User Profile     : AnotherNetworkName

Enter the Wi-Fi name to view the details: YourNetworkName
============================================================
                  Details for Wi-Fi: YourNetworkName
============================================================

SSID name                : YourNetworkName
Authentication          : WPA2-Personal
Cipher                  : AES
Network Key             : your_password_here

The above details include:
- SSID Name (Network Name)
- Authentication Type (Security)
- Cipher (Encryption)
- Network Key (Password)
```

## Error Handling

The script incorporates error handling mechanisms to ensure a smooth user experience:

- **Profile Not Found**: If the entered SSID does not exist, the script will inform the user.
- **No Profiles Available**: If there are no saved Wi-Fi profiles, the script will notify the user accordingly.
- **Missing Password**: If a profile is open (no password), the script indicates that no password is available.

## Contributing

Contributions to this project are welcome! Feel free to fork the repository and submit a pull request for any enhancements or bug fixes.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Utilizes Windows `netsh` command-line tool for network configuration management.
- Inspired by community contributions to network management utilities.
```

### Notes for Customization
1. **Replace `yourusername`** in the clone URL with your actual GitHub username.
2. Feel free to add any additional technical details or sections based on your preferences or any unique functionalities of your script.

### Saving the README
1. Create a file named `README.md` in your repository's root directory.
2. Copy the above content and paste it into the file.
3. Save and commit your changes to your GitHub repository.

This version of the README maintains a professional tone while clearly outlining the technical aspects of your project, making it suitable for a tech audience. Let me know if you have any other specific requirements!
