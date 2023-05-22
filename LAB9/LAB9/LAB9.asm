;Universidad del Valle de Guatemala
;Nancy Mazariegos 22513
;Santiago Pereira 22318
;Roger Díaz
;Descripcion: Laboratorio 9
;24/05/2023

includelib libcmt.lib
includelib libvcruntime.lib
includelib libucrt.lib
includelib legacy_stdio_definitions.lib; importancion de librerias

.model flat, stdcall, C ; direccion de memoria y llamado de funciones 

printf proto c: vararg; definicion de printf
ExitProcess proto,dwExitCode:dword

.data

  msg1 BYTE 'Ingrese el mes de facturación: ',0
  msg2 BYTE 'Ingrese el nit para la facturación: ',0
  msg3 BYTE 'Ingrese el monto facturado: ',0
  strBuff BYTE 255 DUP(?)
  fmt db "%s",0
  
  
