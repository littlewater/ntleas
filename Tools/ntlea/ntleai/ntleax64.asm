.CODE

Addresses STRUCT
    lpGetTimeZoneInformation QWORD ?
    lpEnumFontFamiliesExA QWORD ?
    lpEnumFontFamiliesExW QWORD ?
    lpEnumFontsA QWORD ?
    lpEnumFontsW QWORD ?
    lpUser32SEHAddress QWORD ?
    lpProcInfoAddress QWORD ?
    lpCreateProcAddress QWORD ?
    lpCreateProcAnsiAddress QWORD ?
    lpCreateProcUniAddress QWORD ?
    lpCreateWindowExAddress QWORD ?
    lpCreateWindowExWddress QWORD ?
    lpCallWindowProcAddress QWORD ?
    lpSetWindowLongAddress QWORD ?
    lpParameterAddress QWORD ?
    lpMBtoUniAddress QWORD ?
    lpUnitoMBAddress QWORD ?
    lpMBtoWCAddress QWORD ?
    lpWCtoMBAddress QWORD ?
    lpCPInfoAddress QWORD ?
    lpGetWindowLongPtrSelect QWORD ?
    lpGetWindowLongPtrAddress QWORD ?
    lpCreateFileAddress QWORD ?
    lpShellExecuteAddress QWORD ?
    lpCompareStringAddress QWORD ?
    lpVerQueryValueAddress QWORD ?
    lpGetStockObjectAddress QWORD ?
    lpAcGenralAnsiType DWORD ?
    lpAcGenralUniType DWORD ?
Addresses ENDS

; CreateProcessInternalAorW
; BOOL __stdcall CreateProcessInternalAorW(DWORD lpAcGenralType, LPCVOID lpApplicationName,
;     LPCVOID lpCommandLine, LPSECURITY_ATTRIBUTES lpProcessAttributes, LPSECURITY_ATTRIBUTES lpThreadAttributes,
;     BOOL bInheritHandles, DWORD dwCreationFlags, LPCVOID lpEnvironment, LPCVOID lpCurrentDirectory,
;     LPCVOID lpStartupInfo, LPPROCESS_INFORMATION lpProcessInformation)
CreateProcessInternalAorW PROC
    mov r10, rcx
    mov rcx, rdx
    mov rdx, r8
    mov r8, r9
    mov r9, [rsp+8]
    push [rsp+16]
    push [rsp+24]
    push [rsp+32]
    push [rsp+40]
    push [rsp+48]
    push [rsp+56]
    push [rsp+64]
    push [rsp+72]
    push [rsp+80]
    push [rsp+88]
    lea rax, LCreateProcessEnd
    push rax

    test r10, r10
    jz no_acgenral
    push 10h
    mov rax, r10
    jmp qword ptr [addresses.lpCreateProcAddress]

no_acgenral:
    push rbp
    mov rbp, rsp
    jmp qword ptr [addresses.lpCreateProcAddress]

LCreateProcessEnd:
    nop
    ret
CreateProcessInternalAorW ENDP

; EnumFontFamiliesExInternalA
; int __stdcall EnumFontFamiliesExInternalA(HDC hdc, LPLOGFONTA lpLogfont,
;     FONTENUMPROCA lpEnumFontFamExProc, LPARAM lParam, DWORD dwFlags)
EnumFontFamiliesExInternalA PROC
    mov r10, rcx
    mov rcx, rdx
    mov rdx, r8
    mov r8, r9
    mov r9, [rsp+8]
    push [rsp+16]
    lea rax, EnumFontFamiliesExEnd
    push rax
    push rbp
    mov rbp, rsp
    jmp qword ptr [addresses.lpEnumFontFamiliesExA]

EnumFontFamiliesExEnd:
    nop
    ret
EnumFontFamiliesExInternalA ENDP

; EnumFontFamiliesExInternalW
; int __stdcall EnumFontFamiliesExInternalW(HDC hdc, LPLOGFONTW lpLogfont,
;     FONTENUMPROCW lpEnumFontFamExProc, LPARAM lParam, DWORD dwFlags)
EnumFontFamiliesExInternalW PROC
    mov r10, rcx
    mov rcx, rdx
    mov rdx, r8
    mov r8, r9
    mov r9, [rsp+8]
    push [rsp+16]
    lea rax, EnumFontFamiliesExEnd
    push rax
    push rbp
    mov rbp, rsp
    jmp qword ptr [addresses.lpEnumFontFamiliesExW]

EnumFontFamiliesExEnd:
    nop
    ret
EnumFontFamiliesExInternalW ENDP

; EnumFontsInternalA
; int __stdcall EnumFontsInternalA(HDC hdc, LPCSTR lpszFamily, FONTENUMPROCA lpEnumFontFamProc, LPARAM lParam)
EnumFontsInternalA PROC
    mov r10, rcx
    mov rcx, rdx
    mov rdx, r8
    mov r8, r9
    mov r9, [rsp+8]
    lea rax, EnumFontFontsEnd
    push rax
    push rbp
    mov rbp, rsp
    jmp qword ptr [addresses.lpEnumFontsA]

EnumFontFontsEnd:
    nop
    ret
EnumFontsInternalA ENDP

; EnumFontsInternalW
; int __stdcall EnumFontsInternalW(HDC hdc, LPCWSTR lpszFamily, FONTENUMPROCW lpEnumFontFamProc, LPARAM lParam)
EnumFontsInternalW PROC
    mov r10, rcx
    mov rcx, rdx
    mov rdx, r8
    mov r8, r9
    mov r9, [rsp+8]
    lea rax, EnumFontFontsEnd
    push rax
    push rbp
    mov rbp, rsp
    jmp qword ptr [addresses.lpEnumFontsW]

EnumFontFontsEnd:
    nop
    ret
EnumFontsInternalW ENDP

; VerQueryValueInternal
; BOOL __stdcall VerQueryValueInternal(LPCVOID pBlock, LPCSTR lpSubBlock, LPVOID* lplpBuffer, PUINT puLen)
VerQueryValueInternal PROC
    mov r10, rcx
    mov rcx, rdx
    mov rdx, r8
    mov r8, r9
    mov r9, [rsp+8]
    lea rax, VerQueryValueEnd
    push rax
    push rbp
    mov rbp, rsp
    jmp qword ptr [addresses.lpVerQueryValueAddress]

VerQueryValueEnd:
    nop
    ret
VerQueryValueInternal ENDP

; GetTimeZoneInformationInternal
; DWORD __stdcall GetTimeZoneInformationInternal(LPTIME_ZONE_INFORMATION lpTimeZoneInformation)
GetTimeZoneInformationInternal PROC
    mov r10, rcx
    mov rcx, rdx
    lea rax, GetTimeZoneInformationEnd
    push rax
    push rbp
    mov rbp, rsp
    jmp qword ptr [addresses.lpGetTimeZoneInformation]

GetTimeZoneInformationEnd:
    nop
    ret
GetTimeZoneInformationInternal ENDP

; SetWindowLongPtrJ
; LONG_PTR __stdcall SetWindowLongPtrJ(HWND hWnd, int nIndex, LONG_PTR dwNewLong)
SetWindowLongPtrJ PROC
    mov r10, rcx
    mov rcx, rdx
    mov rdx, r8
    mov r8, r9
    push rbp
    mov rbp, rsp
    jmp qword ptr [addresses.lpSetWindowLongAddress]
SetWindowLongPtrJ ENDP

; CallWindowProcJ
; LRESULT __stdcall CallWindowProcJ(WNDPROC PrevWindowProc, HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam)
CallWindowProcJ PROC
    mov r10, rcx
    mov rcx, rdx
    mov rdx, r8
    mov r8, r9
    mov r9, [rsp+8]
    mov rax, [rsp+40] ; lParam
    push rax
    push rbp
    mov rbp, rsp
    jmp qword ptr [addresses.lpCallWindowProcAddress]
CallWindowProcJ ENDP

; UnicodeToMultiByteJ
; int __stdcall UnicodeToMultiByteJ(LPSTR AnsiBuffer, DWORD MultiByteLength,
;     LPDWORD lpNumberOfBytesConverted, LPCWSTR UnicodeBuffer, DWORD WideCharLength)
UnicodeToMultiByteJ PROC
    mov r10, rcx
    mov rcx, rdx
    mov rdx, r8
    mov r8, r9
    mov r9, [rsp+8]
    mov rax, [rsp+40] ; WideCharLength
    push rax
    push rbp
    mov rbp, rsp
    jmp qword ptr [addresses.lpUnitoMBAddress]
UnicodeToMultiByteJ ENDP

; MultiByteToUnicodeJ
; int __stdcall MultiByteToUnicodeJ(LPWSTR UnicodeBuffer, DWORD WideCharLength,
;     LPDWORD lpNumberOfBytesConverted, LPCSTR AnsiBuffer, DWORD MultiByteLength)
MultiByteToUnicodeJ PROC
    mov r10, rcx
    mov rcx, rdx
    mov rdx, r8
    mov r8, r9
    mov r9, [rsp+8]
    mov rax, [rsp+40] ; MultiByteLength
    push rax
    push rbp
    mov rbp, rsp
    jmp qword ptr [addresses.lpMBtoUniAddress]
MultiByteToUnicodeJ ENDP

; GetWindowLongPtrJ
; LONG __stdcall GetWindowLongPtrJ(HWND hWnd, int nIndex)
GetWindowLongPtrJ PROC
    mov r10, rcx
    mov rcx, rdx
    mov rdx, r8
    jmp qword ptr [addresses.lpGetWindowLongPtrSelect]
GetWindowLongPtrJ ENDP

; GetWindowLongPtrJ0
; LONG __stdcall GetWindowLongPtrJ0(HWND hWnd, int nIndex)
GetWindowLongPtrJ0 PROC
    mov r10, rcx
    mov rcx, rdx
    mov rdx, r8
    push 8
    push qword ptr [addresses.lpUser32SEHAddress]
    jmp qword ptr [addresses.lpGetWindowLongPtrAddress]
GetWindowLongPtrJ0 ENDP

; GetWindowLongPtrJ8
; LONG __stdcall GetWindowLongPtrJ8(HWND hWnd, int nIndex)
GetWindowLongPtrJ8 PROC
    mov r10, rcx
    mov rcx, rdx
    mov rdx, r8
    push rbp
    mov rbp, rsp
    push -2
    jmp qword ptr [addresses.lpGetWindowLongPtrAddress]
GetWindowLongPtrJ8 ENDP

; VerQueryValueJ
; DWORD __stdcall VerQueryValueJ(LPCVOID pBlock, LPCSTR lpSubBlock, LPVOID* lplpBuffer, PUINT puLen)
VerQueryValueJ PROC
    mov r10, rcx
    mov rcx, rdx
    mov rdx, r8
    mov r8, r9
    mov r9, [rsp+8]
    push rbp
    mov rbp, rsp
    jmp qword ptr [addresses.lpVerQueryValueAddress]
VerQueryValueJ ENDP

; CompareStringJ
; int __stdcall CompareStringJ(LCID Locale, DWORD dwCmpFlags, LPCSTR lpString1, int cchCount1, LPCSTR lpString2, int cchCount2)
CompareStringJ PROC
    mov r10, rcx
    mov rcx, rdx
    mov rdx, r8
    mov r8, r9
    mov r9, [rsp+8]
    mov rax, [rsp+40] ; cchCount2
    push rax
    mov rax, [rsp+48] ; lpString2
    push rax
    push rbp
    mov rbp, rsp
    jmp qword ptr [addresses.lpCompareStringAddress]
CompareStringJ ENDP

; GetCPInfoJ
; BOOL __stdcall GetCPInfoJ(UINT CodePage, LPCPINFO lpCPInfo)
GetCPInfoJ PROC
    mov r10, rcx
    mov rcx, rdx
    mov rdx, r8
    push rbp
    mov rbp, rsp
    jmp qword ptr [addresses.lpCPInfoAddress]
GetCPInfoJ ENDP

; CreateFileJ
; HANDLE __stdcall CreateFileJ(LPCSTR lpFileName, DWORD dwDesiredAccess, DWORD dwShareMode,
;     LPSECURITY_ATTRIBUTES lpSecurityAttributes, DWORD dwCreationDisposition, DWORD dwFlagsAndAttributes, HANDLE hTemplateFile)
CreateFileJ PROC
    mov r10, rcx
    mov rcx, rdx
    mov rdx, r8
    mov r8, r9
    mov r9, [rsp+8]
    mov rax, [rsp+40] ; dwCreationDisposition
    push rax
    mov rax, [rsp+48] ; dwFlagsAndAttributes
    push rax
    mov rax, [rsp+56] ; hTemplateFile
    push rax
    push rbp
    mov rbp, rsp
    jmp qword ptr [addresses.lpCreateFileAddress]
CreateFileJ ENDP

; ShellExecuteJ
; HINSTANCE __stdcall ShellExecuteJ(HWND hwnd,
;     LPCSTR lpOperation, LPCSTR lpFile, LPCSTR lpParameters, LPCSTR lpDirectory, INT nShowCmd)
ShellExecuteJ PROC
    mov r10, rcx
    mov rcx, rdx
    mov rdx, r8
    mov r8, r9
    mov r9, [rsp+8]
    mov rax, [rsp+40] ; lpDirectory
    push rax
    mov rax, [rsp+48] ; nShowCmd
    push rax
    push rbp
    mov rbp, rsp
    jmp qword ptr [addresses.lpShellExecuteAddress]
ShellExecuteJ ENDP

; MBtoWCJ
; int __stdcall MBtoWCJ(UINT CodePage, DWORD dwFlags,
;     LPCSTR lpMultiByteStr, int cbMultiByte, LPWSTR lpWideCharStr, int cchWideChar)
MBtoWCJ PROC
    mov r10, rcx
    mov rcx, rdx
    mov rdx, r8
    mov r8, r9
    mov r9, [rsp+8]
    mov rax, [rsp+40] ; lpWideCharStr
    push rax
    mov rax, [rsp+48] ; cchWideChar
    push rax
    push rbp
    mov rbp, rsp
    jmp qword ptr [addresses.lpMBtoWCAddress]
MBtoWCJ ENDP

; WCtoMBJ
; int __stdcall WCtoMBJ(UINT CodePage, DWORD dwFlags,
;     LPCWSTR lpWideCharStr, int cchWideChar, LPSTR lpMultiByteStr, int cbMultiByte, LPCSTR lpDefaultChar, LPBOOL lpUsedDefaultChar)
WCtoMBJ PROC
    mov r10, rcx
    mov rcx, rdx
    mov rdx, r8
    mov r8, r9
    mov r9, [rsp+8]
    mov rax, [rsp+40] ; lpMultiByteStr
    push rax
    mov rax, [rsp+48] ; cbMultiByte
    push rax
    mov rax, [rsp+56] ; lpDefaultChar
    push rax
    mov rax, [rsp+64] ; lpUsedDefaultChar
    push rax
    push rbp
    mov rbp, rsp
    jmp qword ptr [addresses.lpWCtoMBAddress]
WCtoMBJ ENDP

; GetStockObjectJ
; HGDIOBJ __stdcall GetStockObjectJ(int fnObject)
GetStockObjectJ PROC
    mov r10, rcx
    mov rcx, rdx
    push rbp
    mov rbp, rsp
    jmp qword ptr [addresses.lpGetStockObjectAddress]
GetStockObjectJ ENDP

END
