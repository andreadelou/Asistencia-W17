.data
.align 2
direccionFisica: .word 0x3f200000
direccionVirtual: .word 0
msjDirvirtual: .asciz "Mi direccion virtual es: %d\n"
.text
.align 2
.global main
.func main

main:
  ldr r0,=direccionFisica
  ldr r0,[r0]
  bl phys_to_virt
  ldr r4,=direccionVirtual
  str r7,[r4]
  ldr r0,=msjDirvirtual
  mov r1,r7
  bl printf
  
  mov r7,#1
  swi 0
