# VERSION: 2022-05-28-V111
# Uses robocopy in microsoft windows
path C:\Windows\System32
# Backup to another system on the network
robocopy D:\dir1 \\computer_on_network\dir1 /MIR /FFT /Z /XA:H /W:5 /LOG+:F:\Batch\logs\logs.txt /TEE
#Back data from Drive D to Drive F 
robocopy D:\dir1 F:\dir1 /MIR /FFT /Z /XA:H /W:5 /LOG+:F:\Batch\logs\logs.txt /TEE
# makes a log file of the backup
Set FileDate=%date:/=%
ren F:\Batch\logs.txt logs%FileDate%.txt
del F:\Batch\logs\logs.txt