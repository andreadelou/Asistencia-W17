.data
.align 2
direccionFisica: .word 0x3f200000
direccionVirtual: .word 0
msjDirvirtual: .asciz "Mi direccion virtual es: %d\n"
msjDirfisica: .asciz "Mi direccion fisica es: %d\n"
msjnombre: .asciz "Mi nombre es Andrea Lam, 20102"
.text
.align 2
.global main
.func main

main:
  ldr r0,=direccionFisica
  ldr r0,[r0]
  bl phys_to_virt
  ldr r4,=direccionVirtual
  str r0,[r4]
  ldr r0,=msjDirvirtual
  ldr r1,[r4]
  bl printf
  
  ldr r0,=direccionFisica
  ldr r1,[r0]
  ldr r0,=msgDirfisica
  bl printf
  
  mov r7,#1
  swi 0
