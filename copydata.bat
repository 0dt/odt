VERSION: 2022-03-23-V10
path C:\Windows\System32
robocopy D:\nkosana F:\nkosana /MIR /FFT /Z /XA:H /W:5 /LOG+:F:\Batch\logs\logs.txt /TEE
Set FileDate=%date:/=%
ren F:\Batch\logs.txt logs%FileDate%.txt
del F:\Batch\logs\logs.txt