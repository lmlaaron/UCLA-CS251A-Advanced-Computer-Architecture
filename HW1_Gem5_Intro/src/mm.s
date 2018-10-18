
mm:     file format elf64-x86-64


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
  400450:	53                   	push   %rbx
  400451:	31 c0                	xor    %eax,%eax
  400453:	48 63 df             	movslq %edi,%rbx
  400456:	e8 35 01 00 00       	callq  400590 <mm>
  40045b:	83 fb 01             	cmp    $0x1,%ebx
  40045e:	7e 21                	jle    400481 <main+0x31>
  400460:	66 0f ef c0          	pxor   %xmm0,%xmm0
  400464:	be 24 08 40 00       	mov    $0x400824,%esi
  400469:	bf 01 00 00 00       	mov    $0x1,%edi
  40046e:	b8 01 00 00 00       	mov    $0x1,%eax
  400473:	f3 0f 5a 04 9d 60 10 	cvtss2sd 0x611060(,%rbx,4),%xmm0
  40047a:	61 00 
  40047c:	e8 af ff ff ff       	callq  400430 <__printf_chk@plt>
  400481:	31 c0                	xor    %eax,%eax
  400483:	5b                   	pop    %rbx
  400484:	c3                   	retq   
  400485:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40048c:	00 00 00 
  40048f:	90                   	nop

0000000000400490 <_start>:
  400490:	31 ed                	xor    %ebp,%ebp
  400492:	49 89 d1             	mov    %rdx,%r9
  400495:	5e                   	pop    %rsi
  400496:	48 89 e2             	mov    %rsp,%rdx
  400499:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40049d:	50                   	push   %rax
  40049e:	54                   	push   %rsp
  40049f:	49 c7 c0 10 08 40 00 	mov    $0x400810,%r8
  4004a6:	48 c7 c1 a0 07 40 00 	mov    $0x4007a0,%rcx
  4004ad:	48 c7 c7 50 04 40 00 	mov    $0x400450,%rdi
  4004b4:	e8 67 ff ff ff       	callq  400420 <__libc_start_main@plt>
  4004b9:	f4                   	hlt    
  4004ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004004c0 <deregister_tm_clones>:
  4004c0:	b8 3f 10 60 00       	mov    $0x60103f,%eax
  4004c5:	55                   	push   %rbp
  4004c6:	48 2d 38 10 60 00    	sub    $0x601038,%rax
  4004cc:	48 83 f8 0e          	cmp    $0xe,%rax
  4004d0:	48 89 e5             	mov    %rsp,%rbp
  4004d3:	76 1b                	jbe    4004f0 <deregister_tm_clones+0x30>
  4004d5:	b8 00 00 00 00       	mov    $0x0,%eax
  4004da:	48 85 c0             	test   %rax,%rax
  4004dd:	74 11                	je     4004f0 <deregister_tm_clones+0x30>
  4004df:	5d                   	pop    %rbp
  4004e0:	bf 38 10 60 00       	mov    $0x601038,%edi
  4004e5:	ff e0                	jmpq   *%rax
  4004e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4004ee:	00 00 
  4004f0:	5d                   	pop    %rbp
  4004f1:	c3                   	retq   
  4004f2:	0f 1f 40 00          	nopl   0x0(%rax)
  4004f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4004fd:	00 00 00 

0000000000400500 <register_tm_clones>:
  400500:	be 38 10 60 00       	mov    $0x601038,%esi
  400505:	55                   	push   %rbp
  400506:	48 81 ee 38 10 60 00 	sub    $0x601038,%rsi
  40050d:	48 c1 fe 03          	sar    $0x3,%rsi
  400511:	48 89 e5             	mov    %rsp,%rbp
  400514:	48 89 f0             	mov    %rsi,%rax
  400517:	48 c1 e8 3f          	shr    $0x3f,%rax
  40051b:	48 01 c6             	add    %rax,%rsi
  40051e:	48 d1 fe             	sar    %rsi
  400521:	74 15                	je     400538 <register_tm_clones+0x38>
  400523:	b8 00 00 00 00       	mov    $0x0,%eax
  400528:	48 85 c0             	test   %rax,%rax
  40052b:	74 0b                	je     400538 <register_tm_clones+0x38>
  40052d:	5d                   	pop    %rbp
  40052e:	bf 38 10 60 00       	mov    $0x601038,%edi
  400533:	ff e0                	jmpq   *%rax
  400535:	0f 1f 00             	nopl   (%rax)
  400538:	5d                   	pop    %rbp
  400539:	c3                   	retq   
  40053a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400540 <__do_global_dtors_aux>:
  400540:	80 3d f9 0a 20 00 00 	cmpb   $0x0,0x200af9(%rip)        # 601040 <completed.7594>
  400547:	75 11                	jne    40055a <__do_global_dtors_aux+0x1a>
  400549:	55                   	push   %rbp
  40054a:	48 89 e5             	mov    %rsp,%rbp
  40054d:	e8 6e ff ff ff       	callq  4004c0 <deregister_tm_clones>
  400552:	5d                   	pop    %rbp
  400553:	c6 05 e6 0a 20 00 01 	movb   $0x1,0x200ae6(%rip)        # 601040 <completed.7594>
  40055a:	f3 c3                	repz retq 
  40055c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400560 <frame_dummy>:
  400560:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  400565:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400569:	75 05                	jne    400570 <frame_dummy+0x10>
  40056b:	eb 93                	jmp    400500 <register_tm_clones>
  40056d:	0f 1f 00             	nopl   (%rax)
  400570:	b8 00 00 00 00       	mov    $0x0,%eax
  400575:	48 85 c0             	test   %rax,%rax
  400578:	74 f1                	je     40056b <frame_dummy+0xb>
  40057a:	55                   	push   %rbp
  40057b:	48 89 e5             	mov    %rsp,%rbp
  40057e:	ff d0                	callq  *%rax
  400580:	5d                   	pop    %rbp
  400581:	e9 7a ff ff ff       	jmpq   400500 <register_tm_clones>
  400586:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40058d:	00 00 00 

0000000000400590 <mm>:
  400590:	41 57                	push   %r15
  400592:	41 56                	push   %r14
  400594:	41 55                	push   %r13
  400596:	41 54                	push   %r12
  400598:	55                   	push   %rbp
  400599:	53                   	push   %rbx
  40059a:	c7 44 24 f8 00 40 00 	movl   $0x4000,-0x8(%rsp)
  4005a1:	00 
  4005a2:	c7 44 24 fc 00 00 00 	movl   $0x0,-0x4(%rsp)
  4005a9:	00 
  4005aa:	44 8b 74 24 fc       	mov    -0x4(%rsp),%r14d
  4005af:	45 89 f7             	mov    %r14d,%r15d
  4005b2:	41 f7 df             	neg    %r15d
  4005b5:	44 8b 64 24 fc       	mov    -0x4(%rsp),%r12d
  4005ba:	45 8d ae 00 04 00 00 	lea    0x400(%r14),%r13d
  4005c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4005c8:	41 8d 5c 24 01       	lea    0x1(%r12),%ebx
  4005cd:	45 8d 5c 24 02       	lea    0x2(%r12),%r11d
  4005d2:	45 8d 54 24 03       	lea    0x3(%r12),%r10d
  4005d7:	45 8d 4c 24 04       	lea    0x4(%r12),%r9d
  4005dc:	45 8d 44 24 05       	lea    0x5(%r12),%r8d
  4005e1:	41 8d 7c 24 06       	lea    0x6(%r12),%edi
  4005e6:	41 8d 74 24 07       	lea    0x7(%r12),%esi
  4005eb:	43 8d 0c 3c          	lea    (%r12,%r15,1),%ecx
  4005ef:	44 89 f0             	mov    %r14d,%eax
  4005f2:	49 63 ec             	movslq %r12d,%rbp
  4005f5:	48 63 db             	movslq %ebx,%rbx
  4005f8:	4d 63 db             	movslq %r11d,%r11
  4005fb:	4d 63 d2             	movslq %r10d,%r10
  4005fe:	4d 63 c9             	movslq %r9d,%r9
  400601:	4d 63 c0             	movslq %r8d,%r8
  400604:	48 63 ff             	movslq %edi,%rdi
  400607:	48 63 f6             	movslq %esi,%rsi
  40060a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400610:	48 63 d1             	movslq %ecx,%rdx
  400613:	83 c1 01             	add    $0x1,%ecx
  400616:	f3 0f 10 04 95 60 10 	movss  0x621060(,%rdx,4),%xmm0
  40061d:	62 00 
  40061f:	48 63 d0             	movslq %eax,%rdx
  400622:	f3 0f 10 0c 95 60 10 	movss  0x601060(,%rdx,4),%xmm1
  400629:	60 00 
  40062b:	8d 50 01             	lea    0x1(%rax),%edx
  40062e:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
  400632:	48 63 d2             	movslq %edx,%rdx
  400635:	f3 0f 58 0c ad 60 10 	addss  0x611060(,%rbp,4),%xmm1
  40063c:	61 00 
  40063e:	f3 0f 11 0c ad 60 10 	movss  %xmm1,0x611060(,%rbp,4)
  400645:	61 00 
  400647:	f3 0f 10 0c 95 60 10 	movss  0x601060(,%rdx,4),%xmm1
  40064e:	60 00 
  400650:	8d 50 02             	lea    0x2(%rax),%edx
  400653:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
  400657:	48 63 d2             	movslq %edx,%rdx
  40065a:	f3 0f 58 0c 9d 60 10 	addss  0x611060(,%rbx,4),%xmm1
  400661:	61 00 
  400663:	f3 0f 11 0c 9d 60 10 	movss  %xmm1,0x611060(,%rbx,4)
  40066a:	61 00 
  40066c:	f3 0f 10 0c 95 60 10 	movss  0x601060(,%rdx,4),%xmm1
  400673:	60 00 
  400675:	8d 50 03             	lea    0x3(%rax),%edx
  400678:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
  40067c:	48 63 d2             	movslq %edx,%rdx
  40067f:	f3 42 0f 58 0c 9d 60 	addss  0x611060(,%r11,4),%xmm1
  400686:	10 61 00 
  400689:	f3 42 0f 11 0c 9d 60 	movss  %xmm1,0x611060(,%r11,4)
  400690:	10 61 00 
  400693:	f3 0f 10 0c 95 60 10 	movss  0x601060(,%rdx,4),%xmm1
  40069a:	60 00 
  40069c:	8d 50 04             	lea    0x4(%rax),%edx
  40069f:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
  4006a3:	48 63 d2             	movslq %edx,%rdx
  4006a6:	f3 42 0f 58 0c 95 60 	addss  0x611060(,%r10,4),%xmm1
  4006ad:	10 61 00 
  4006b0:	f3 42 0f 11 0c 95 60 	movss  %xmm1,0x611060(,%r10,4)
  4006b7:	10 61 00 
  4006ba:	f3 0f 10 0c 95 60 10 	movss  0x601060(,%rdx,4),%xmm1
  4006c1:	60 00 
  4006c3:	8d 50 05             	lea    0x5(%rax),%edx
  4006c6:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
  4006ca:	48 63 d2             	movslq %edx,%rdx
  4006cd:	f3 42 0f 58 0c 8d 60 	addss  0x611060(,%r9,4),%xmm1
  4006d4:	10 61 00 
  4006d7:	f3 42 0f 11 0c 8d 60 	movss  %xmm1,0x611060(,%r9,4)
  4006de:	10 61 00 
  4006e1:	f3 0f 10 0c 95 60 10 	movss  0x601060(,%rdx,4),%xmm1
  4006e8:	60 00 
  4006ea:	8d 50 06             	lea    0x6(%rax),%edx
  4006ed:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
  4006f1:	48 63 d2             	movslq %edx,%rdx
  4006f4:	f3 42 0f 58 0c 85 60 	addss  0x611060(,%r8,4),%xmm1
  4006fb:	10 61 00 
  4006fe:	f3 42 0f 11 0c 85 60 	movss  %xmm1,0x611060(,%r8,4)
  400705:	10 61 00 
  400708:	f3 0f 10 0c 95 60 10 	movss  0x601060(,%rdx,4),%xmm1
  40070f:	60 00 
  400711:	8d 50 07             	lea    0x7(%rax),%edx
  400714:	83 e8 80             	sub    $0xffffff80,%eax
  400717:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
  40071b:	41 39 c5             	cmp    %eax,%r13d
  40071e:	48 63 d2             	movslq %edx,%rdx
  400721:	f3 0f 59 04 95 60 10 	mulss  0x601060(,%rdx,4),%xmm0
  400728:	60 00 
  40072a:	f3 0f 58 0c bd 60 10 	addss  0x611060(,%rdi,4),%xmm1
  400731:	61 00 
  400733:	f3 0f 11 0c bd 60 10 	movss  %xmm1,0x611060(,%rdi,4)
  40073a:	61 00 
  40073c:	f3 0f 58 04 b5 60 10 	addss  0x611060(,%rsi,4),%xmm0
  400743:	61 00 
  400745:	f3 0f 11 04 b5 60 10 	movss  %xmm0,0x611060(,%rsi,4)
  40074c:	61 00 
  40074e:	0f 85 bc fe ff ff    	jne    400610 <mm+0x80>
  400754:	41 83 ec 80          	sub    $0xffffff80,%r12d
  400758:	44 39 64 24 f8       	cmp    %r12d,-0x8(%rsp)
  40075d:	0f 85 65 fe ff ff    	jne    4005c8 <mm+0x38>
  400763:	41 83 c7 08          	add    $0x8,%r15d
  400767:	44 39 6c 24 f8       	cmp    %r13d,-0x8(%rsp)
  40076c:	45 89 ee             	mov    %r13d,%r14d
  40076f:	0f 85 40 fe ff ff    	jne    4005b5 <mm+0x25>
  400775:	83 44 24 fc 08       	addl   $0x8,-0x4(%rsp)
  40077a:	83 44 24 f8 08       	addl   $0x8,-0x8(%rsp)
  40077f:	8b 44 24 fc          	mov    -0x4(%rsp),%eax
  400783:	83 c0 80             	add    $0xffffff80,%eax
  400786:	0f 85 1e fe ff ff    	jne    4005aa <mm+0x1a>
  40078c:	5b                   	pop    %rbx
  40078d:	5d                   	pop    %rbp
  40078e:	41 5c                	pop    %r12
  400790:	41 5d                	pop    %r13
  400792:	41 5e                	pop    %r14
  400794:	41 5f                	pop    %r15
  400796:	c3                   	retq   
  400797:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40079e:	00 00 

00000000004007a0 <__libc_csu_init>:
  4007a0:	41 57                	push   %r15
  4007a2:	41 56                	push   %r14
  4007a4:	41 89 ff             	mov    %edi,%r15d
  4007a7:	41 55                	push   %r13
  4007a9:	41 54                	push   %r12
  4007ab:	4c 8d 25 5e 06 20 00 	lea    0x20065e(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  4007b2:	55                   	push   %rbp
  4007b3:	48 8d 2d 5e 06 20 00 	lea    0x20065e(%rip),%rbp        # 600e18 <__init_array_end>
  4007ba:	53                   	push   %rbx
  4007bb:	49 89 f6             	mov    %rsi,%r14
  4007be:	49 89 d5             	mov    %rdx,%r13
  4007c1:	4c 29 e5             	sub    %r12,%rbp
  4007c4:	48 83 ec 08          	sub    $0x8,%rsp
  4007c8:	48 c1 fd 03          	sar    $0x3,%rbp
  4007cc:	e8 1f fc ff ff       	callq  4003f0 <_init>
  4007d1:	48 85 ed             	test   %rbp,%rbp
  4007d4:	74 20                	je     4007f6 <__libc_csu_init+0x56>
  4007d6:	31 db                	xor    %ebx,%ebx
  4007d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4007df:	00 
  4007e0:	4c 89 ea             	mov    %r13,%rdx
  4007e3:	4c 89 f6             	mov    %r14,%rsi
  4007e6:	44 89 ff             	mov    %r15d,%edi
  4007e9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4007ed:	48 83 c3 01          	add    $0x1,%rbx
  4007f1:	48 39 eb             	cmp    %rbp,%rbx
  4007f4:	75 ea                	jne    4007e0 <__libc_csu_init+0x40>
  4007f6:	48 83 c4 08          	add    $0x8,%rsp
  4007fa:	5b                   	pop    %rbx
  4007fb:	5d                   	pop    %rbp
  4007fc:	41 5c                	pop    %r12
  4007fe:	41 5d                	pop    %r13
  400800:	41 5e                	pop    %r14
  400802:	41 5f                	pop    %r15
  400804:	c3                   	retq   
  400805:	90                   	nop
  400806:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40080d:	00 00 00 

0000000000400810 <__libc_csu_fini>:
  400810:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400814 <_fini>:
  400814:	48 83 ec 08          	sub    $0x8,%rsp
  400818:	48 83 c4 08          	add    $0x8,%rsp
  40081c:	c3                   	retq   
