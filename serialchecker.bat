@echo off
TITLE Serial Checker by \Ace/
mode con: cols=105 lines=70
echo [94mDisk
echo [94m------------[97m
wmic diskdrive get model, serialnumber
echo Waiting...
timeout /t 5 /nobreak > NUL
vol c:
vol d:
vol g:
vol e:
vol f:
echo [94mMotherboard
echo [94m------------[97m
wmic baseboard get serialnumber
echo Waiting...
timeout /t 5 /nobreak > NUL
echo [94mSMBios
echo [94m------------[97m
wmic path win32_computersystemproduct get uuid
echo Waiting...
timeout /t 5 /nobreak > NUL
echo [94mGPU
echo [94m------------[97m
wmic PATH Win32_VideoController GET Description,PNPDeviceID
echo Waiting...
timeout /t 5 /nobreak > NUL
echo [94mRAM
echo [94m------------[97m
wmic memorychip get serialnumber
echo Waiting...
timeout /t 5 /nobreak > NUL
echo [94mBios
echo [94m------------[97m
wmic csproduct get uuid
echo Waiting...
timeout /t 5 /nobreak > NUL
echo [94mCPU
echo [94m------------[97m
wmic cpu get serialnumber
echo Waiting...
timeout /t 5 /nobreak > NUL
echo [94mMacAddress
echo [94m------------[97m
getmac
echo Waiting...
timeout /t 5 /nobreak > NUL
echo [94mOPERATION HAS SUCCESSFULLY BEEN COMPLETED
pause
