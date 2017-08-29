section .text
global _ft_memcpy

_ft_memcpy:
  push    rbp
  mov     rbp, rsp
  sub     rbp, 16
  mov rcx, rdx
  cmp rcx, 0
  jg  l1
  jng false
  ret

l1:
  mov rbx, [rsi]
  mov [rdi], bl
  inc  rdi
  inc  rsi
  loop l1
  mov rax, rdi
  pop rbp
  ret

false:
  mov rax, rdi
  pop rbp
  ret