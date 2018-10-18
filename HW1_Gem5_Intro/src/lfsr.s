
lfsr:     file format elf64-x86-64


Disassembly of section .init:

00000000004003f0 <_init>:
  4003f0:	48 83 ec 08          	sub    $0x8,%rsp
  4003f4:	48 8b 05 fd 0b 20 00 	mov    0x200bfd(%rip),%rax        # 600ff8 <_DYNAMIC+0x1d0>
  4003fb:	48 85 c0             	test   %rax,%rax
  4003fe:	74 05                	je     400405 <_init+0x15>
  400400:	e8 3b 00 00 00       	callq  400440 <__printf_chk@plt+0x10>
  400405:	48 83 c4 08          	add    $0x8,%rsp
  400409:	c3                   	retq   

Disassembly of section .plt:

0000000000400410 <__libc_start_main@plt-0x10>:
  400410:	ff 35 f2 0b 20 00    	pushq  0x200bf2(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400416:	ff 25 f4 0b 20 00    	jmpq   *0x200bf4(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40041c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400420 <__libc_start_main@plt>:
  400420:	ff 25 f2 0b 20 00    	jmpq   *0x200bf2(%rip)        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400426:	68 00 00 00 00       	pushq  $0x0
  40042b:	e9 e0 ff ff ff       	jmpq   400410 <_init+0x20>

0000000000400430 <__printf_chk@plt>:
  400430:	ff 25 ea 0b 20 00    	jmpq   *0x200bea(%rip)        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400436:	68 01 00 00 00       	pushq  $0x1
  40043b:	e9 d0 ff ff ff       	jmpq   400410 <_init+0x20>

Disassembly of section .plt.got:

0000000000400440 <.plt.got>:
  400440:	ff 25 b2 0b 20 00    	jmpq   *0x200bb2(%rip)        # 600ff8 <_DYNAMIC+0x1d0>
  400446:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400450 <main>:
  400450:	48 83 ec 08          	sub    $0x8,%rsp
  400454:	e8 27 01 00 00       	callq  400580 <lfsr_loop>
  400459:	83 ff 01             	cmp    $0x1,%edi
  40045c:	7e 13                	jle    400471 <main+0x21>
  40045e:	89 c2                	mov    %eax,%edx
  400460:	be 44 06 40 00       	mov    $0x400644,%esi
  400465:	bf 01 00 00 00       	mov    $0x1,%edi
  40046a:	31 c0                	xor    %eax,%eax
  40046c:	e8 bf ff ff ff       	callq  400430 <__printf_chk@plt>
  400471:	31 c0                	xor    %eax,%eax
  400473:	48 83 c4 08          	add    $0x8,%rsp
  400477:	c3                   	retq   
  400478:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40047f:	00 

0000000000400480 <_start>:
  400480:	31 ed                	xor    %ebp,%ebp
  400482:	49 89 d1             	mov    %rdx,%r9
  400485:	5e                   	pop    %rsi
  400486:	48 89 e2             	mov    %rsp,%rdx
  400489:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40048d:	50                   	push   %rax
  40048e:	54                   	push   %rsp
  40048f:	49 c7 c0 30 06 40 00 	mov    $0x400630,%r8
  400496:	48 c7 c1 c0 05 40 00 	mov    $0x4005c0,%rcx
  40049d:	48 c7 c7 50 04 40 00 	mov    $0x400450,%rdi
  4004a4:	e8 77 ff ff ff       	callq  400420 <__libc_start_main@plt>
  4004a9:	f4                   	hlt    
  4004aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004004b0 <deregister_tm_clones>:
  4004b0:	b8 3f 10 60 00       	mov    $0x60103f,%eax
  4004b5:	55                   	push   %rbp
  4004b6:	48 2d 38 10 60 00    	sub    $0x601038,%rax
  4004bc:	48 83 f8 0e          	cmp    $0xe,%rax
  4004c0:	48 89 e5             	mov    %rsp,%rbp
  4004c3:	76 1b                	jbe    4004e0 <deregister_tm_clones+0x30>
  4004c5:	b8 00 00 00 00       	mov    $0x0,%eax
  4004ca:	48 85 c0             	test   %rax,%rax
  4004cd:	74 11                	je     4004e0 <deregister_tm_clones+0x30>
  4004cf:	5d                   	pop    %rbp
  4004d0:	bf 38 10 60 00       	mov    $0x601038,%edi
  4004d5:	ff e0                	jmpq   *%rax
  4004d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4004de:	00 00 
  4004e0:	5d                   	pop    %rbp
  4004e1:	c3                   	retq   
  4004e2:	0f 1f 40 00          	nopl   0x0(%rax)
  4004e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4004ed:	00 00 00 

00000000004004f0 <register_tm_clones>:
  4004f0:	be 38 10 60 00       	mov    $0x601038,%esi
  4004f5:	55                   	push   %rbp
  4004f6:	48 81 ee 38 10 60 00 	sub    $0x601038,%rsi
  4004fd:	48 c1 fe 03          	sar    $0x3,%rsi
  400501:	48 89 e5             	mov    %rsp,%rbp
  400504:	48 89 f0             	mov    %rsi,%rax
  400507:	48 c1 e8 3f          	shr    $0x3f,%rax
  40050b:	48 01 c6             	add    %rax,%rsi
  40050e:	48 d1 fe             	sar    %rsi
  400511:	74 15                	je     400528 <register_tm_clones+0x38>
  400513:	b8 00 00 00 00       	mov    $0x0,%eax
  400518:	48 85 c0             	test   %rax,%rax
  40051b:	74 0b                	je     400528 <register_tm_clones+0x38>
  40051d:	5d                   	pop    %rbp
  40051e:	bf 38 10 60 00       	mov    $0x601038,%edi
  400523:	ff e0                	jmpq   *%rax
  400525:	0f 1f 00             	nopl   (%rax)
  400528:	5d                   	pop    %rbp
  400529:	c3                   	retq   
  40052a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400530 <__do_global_dtors_aux>:
  400530:	80 3d 09 0b 20 00 00 	cmpb   $0x0,0x200b09(%rip)        # 601040 <completed.7594>
  400537:	75 11                	jne    40054a <__do_global_dtors_aux+0x1a>
  400539:	55                   	push   %rbp
  40053a:	48 89 e5             	mov    %rsp,%rbp
  40053d:	e8 6e ff ff ff       	callq  4004b0 <deregister_tm_clones>
  400542:	5d                   	pop    %rbp
  400543:	c6 05 f6 0a 20 00 01 	movb   $0x1,0x200af6(%rip)        # 601040 <completed.7594>
  40054a:	f3 c3                	repz retq 
  40054c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400550 <frame_dummy>:
  400550:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  400555:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400559:	75 05                	jne    400560 <frame_dummy+0x10>
  40055b:	eb 93                	jmp    4004f0 <register_tm_clones>
  40055d:	0f 1f 00             	nopl   (%rax)
  400560:	b8 00 00 00 00       	mov    $0x0,%eax
  400565:	48 85 c0             	test   %rax,%rax
  400568:	74 f1                	je     40055b <frame_dummy+0xb>
  40056a:	55                   	push   %rbp
  40056b:	48 89 e5             	mov    %rsp,%rbp
  40056e:	ff d0                	callq  *%rax
  400570:	5d                   	pop    %rbp
  400571:	e9 7a ff ff ff       	jmpq   4004f0 <register_tm_clones>
  400576:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40057d:	00 00 00 

0000000000400580 <lfsr_loop>:
  400580:	be 20 a1 07 00       	mov    $0x7a120,%esi
  400585:	ba e1 ac 00 00       	mov    $0xace1,%edx
  40058a:	31 c0                	xor    %eax,%eax
  40058c:	0f 1f 40 00          	nopl   0x0(%rax)
  400590:	89 d1                	mov    %edx,%ecx
  400592:	83 e2 01             	and    $0x1,%edx
  400595:	f7 da                	neg    %edx
  400597:	d1 e9                	shr    %ecx
  400599:	81 e2 00 b4 00 00    	and    $0xb400,%edx
  40059f:	31 ca                	xor    %ecx,%edx
  4005a1:	89 d1                	mov    %edx,%ecx
  4005a3:	48 c1 e1 05          	shl    $0x5,%rcx
  4005a7:	03 81 60 10 60 00    	add    0x601060(%rcx),%eax
  4005ad:	83 ee 01             	sub    $0x1,%esi
  4005b0:	75 de                	jne    400590 <lfsr_loop+0x10>
  4005b2:	f3 c3                	repz retq 
  4005b4:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005bb:	00 00 00 
  4005be:	66 90                	xchg   %ax,%ax

00000000004005c0 <__libc_csu_init>:
  4005c0:	41 57                	push   %r15
  4005c2:	41 56                	push   %r14
  4005c4:	41 89 ff             	mov    %edi,%r15d
  4005c7:	41 55                	push   %r13
  4005c9:	41 54                	push   %r12
  4005cb:	4c 8d 25 3e 08 20 00 	lea    0x20083e(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  4005d2:	55                   	push   %rbp
  4005d3:	48 8d 2d 3e 08 20 00 	lea    0x20083e(%rip),%rbp        # 600e18 <__init_array_end>
  4005da:	53                   	push   %rbx
  4005db:	49 89 f6             	mov    %rsi,%r14
  4005de:	49 89 d5             	mov    %rdx,%r13
  4005e1:	4c 29 e5             	sub    %r12,%rbp
  4005e4:	48 83 ec 08          	sub    $0x8,%rsp
  4005e8:	48 c1 fd 03          	sar    $0x3,%rbp
  4005ec:	e8 ff fd ff ff       	callq  4003f0 <_init>
  4005f1:	48 85 ed             	test   %rbp,%rbp
  4005f4:	74 20                	je     400616 <__libc_csu_init+0x56>
  4005f6:	31 db                	xor    %ebx,%ebx
  4005f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4005ff:	00 
  400600:	4c 89 ea             	mov    %r13,%rdx
  400603:	4c 89 f6             	mov    %r14,%rsi
  400606:	44 89 ff             	mov    %r15d,%edi
  400609:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40060d:	48 83 c3 01          	add    $0x1,%rbx
  400611:	48 39 eb             	cmp    %rbp,%rbx
  400614:	75 ea                	jne    400600 <__libc_csu_init+0x40>
  400616:	48 83 c4 08          	add    $0x8,%rsp
  40061a:	5b                   	pop    %rbx
  40061b:	5d                   	pop    %rbp
  40061c:	41 5c                	pop    %r12
  40061e:	41 5d                	pop    %r13
  400620:	41 5e                	pop    %r14
  400622:	41 5f                	pop    %r15
  400624:	c3                   	retq   
  400625:	90                   	nop
  400626:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40062d:	00 00 00 

0000000000400630 <__libc_csu_fini>:
  400630:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400634 <_fini>:
  400634:	48 83 ec 08          	sub    $0x8,%rsp
  400638:	48 83 c4 08          	add    $0x8,%rsp
  40063c:	c3                   	retq   
