@echo off
echo ============================================================
echo             Wi-Fi Password Extractor Tool
echo ============================================================
echo Fetching all saved Wi-Fi profiles...
echo.

:: Fetch and display all saved Wi-Fi profiles
netsh wlan show profiles | findstr "All User Profile"
echo.

:: Check if no profiles were found
if errorlevel 1 (
    echo No Wi-Fi profiles found on this system.
    pause
    exit /b
)

set /p wifiName="Enter the Wi-Fi name to view the details: "
echo ============================================================
echo                  Details for Wi-Fi: %wifiName%
echo ============================================================

:: Extract full details of the Wi-Fi profile including password
:: Check if the Wi-Fi profile exists
netsh wlan show profile name="%wifiName%" key=clear >nul 2>&1
if errorlevel 1 (
    echo The Wi-Fi profile "%wifiName%" was not found.
    echo Please check the name and try again.
    pause
    exit /b
)

netsh wlan show profile name="%wifiName%" key=clear | findstr /R /C:"SSID name" /C:"Authentication" /C:"Cipher" /C:"Key Content" /C:"Name" /C:"Type" /C:"Key Index"

:: Check if password (Key Content) was found
netsh wlan show profile name="%wifiName%" key=clear | findstr /R "Key Content"
if errorlevel 1 (
    echo No password found for the Wi-Fi profile "%wifiName%". It might be an open network.
)

echo.
echo The above details include:
echo - SSID Name (Network Name)
echo - Authentication Type (Security)
echo - Cipher (Encryption)
echo - Network Key (Password)
echo.
pause
