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

.data