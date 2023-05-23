;Universidad del Valle de Guatemala
;Nancy Mazariegos 22513
;Santiago Pereira 22318
;Roger Díaz
;Descripcion: Laboratorio 9
;24/05/2023

.386
.model flat, stdcall, c
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

  msg1 BYTE 'Ingrese el mes de facturación: ',0
  msg2 BYTE 'Ingrese el nit para la facturación: ',0
  msg3 BYTE 'Ingrese el monto facturado: ',0
  buffer BYTE 255 DUP(?)
  fmt db "%s",0
 
 
.code

 includelib libucrt.lib
 includelib legacy_stdio_definitions.lib
 includelib libcmt.lib
 includelib libvcruntime.lib

 extrn printf:near
 extrn scanf:near
 extrn exit:near

 public main
 main proc

 	push ebp 
	mov ebp, esp

	push offset msg1
	call printf

	lea eax, buffer
	push eax
	push offset fmt 
	call scanf

	push offset buffer
	call printf

	add esp, 8
	pop ebp

	push 0
    call exit ;
main endp

end



 

  
  
