
merge:     file format elf64-x86-64


Disassembly of section .init:

00000000004003f0 <_init>:
  4003f0:	48 83 ec 08          	sub    $0x8,%rsp
  4003f4:	48 8b 05 fd 1b 20 00 	mov    0x201bfd(%rip),%rax        # 601ff8 <_DYNAMIC+0x1d0>
  4003fb:	48 85 c0             	test   %rax,%rax
  4003fe:	74 05                	je     400405 <_init+0x15>
  400400:	e8 3b 00 00 00       	callq  400440 <__printf_chk@plt+0x10>
  400405:	48 83 c4 08          	add    $0x8,%rsp
  400409:	c3                   	retq   

Disassembly of section .plt:

0000000000400410 <__libc_start_main@plt-0x10>:
  400410:	ff 35 f2 1b 20 00    	pushq  0x201bf2(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400416:	ff 25 f4 1b 20 00    	jmpq   *0x201bf4(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40041c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400420 <__libc_start_main@plt>:
  400420:	ff 25 f2 1b 20 00    	jmpq   *0x201bf2(%rip)        # 602018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400426:	68 00 00 00 00       	pushq  $0x0
  40042b:	e9 e0 ff ff ff       	jmpq   400410 <_init+0x20>

0000000000400430 <__printf_chk@plt>:
  400430:	ff 25 ea 1b 20 00    	jmpq   *0x201bea(%rip)        # 602020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400436:	68 01 00 00 00       	pushq  $0x1
  40043b:	e9 d0 ff ff ff       	jmpq   400410 <_init+0x20>

Disassembly of section .plt.got:

0000000000400440 <.plt.got>:
  400440:	ff 25 b2 1b 20 00    	jmpq   *0x201bb2(%rip)        # 601ff8 <_DYNAMIC+0x1d0>
  400446:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400450 <main>:
  400450:	53                   	push   %rbx
  400451:	31 d2                	xor    %edx,%edx
  400453:	89 fb                	mov    %edi,%ebx
  400455:	b9 ff 1f 00 00       	mov    $0x1fff,%ecx
  40045a:	be 80 a0 60 00       	mov    $0x60a080,%esi
  40045f:	bf 60 20 60 00       	mov    $0x602060,%edi
  400464:	e8 d7 06 00 00       	callq  400b40 <m_sort.part.0>
  400469:	83 fb 01             	cmp    $0x1,%ebx
  40046c:	7e 56                	jle    4004c4 <main+0x74>
  40046e:	48 63 c3             	movslq %ebx,%rax
  400471:	be c4 15 40 00       	mov    $0x4015c4,%esi
  400476:	bf 01 00 00 00       	mov    $0x1,%edi
  40047b:	8b 14 85 60 20 60 00 	mov    0x602060(,%rax,4),%edx
  400482:	31 c0                	xor    %eax,%eax
  400484:	e8 a7 ff ff ff       	callq  400430 <__printf_chk@plt>
  400489:	8d 43 01             	lea    0x1(%rbx),%eax
  40048c:	83 c3 02             	add    $0x2,%ebx
  40048f:	be c4 15 40 00       	mov    $0x4015c4,%esi
  400494:	bf 01 00 00 00       	mov    $0x1,%edi
  400499:	48 63 db             	movslq %ebx,%rbx
  40049c:	48 98                	cltq   
  40049e:	8b 14 85 60 20 60 00 	mov    0x602060(,%rax,4),%edx
  4004a5:	31 c0                	xor    %eax,%eax
  4004a7:	e8 84 ff ff ff       	callq  400430 <__printf_chk@plt>
  4004ac:	8b 14 9d 60 20 60 00 	mov    0x602060(,%rbx,4),%edx
  4004b3:	be c4 15 40 00       	mov    $0x4015c4,%esi
  4004b8:	bf 01 00 00 00       	mov    $0x1,%edi
  4004bd:	31 c0                	xor    %eax,%eax
  4004bf:	e8 6c ff ff ff       	callq  400430 <__printf_chk@plt>
  4004c4:	31 c0                	xor    %eax,%eax
  4004c6:	5b                   	pop    %rbx
  4004c7:	c3                   	retq   
  4004c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4004cf:	00 

00000000004004d0 <_start>:
  4004d0:	31 ed                	xor    %ebp,%ebp
  4004d2:	49 89 d1             	mov    %rdx,%r9
  4004d5:	5e                   	pop    %rsi
  4004d6:	48 89 e2             	mov    %rsp,%rdx
  4004d9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4004dd:	50                   	push   %rax
  4004de:	54                   	push   %rsp
  4004df:	49 c7 c0 b0 15 40 00 	mov    $0x4015b0,%r8
  4004e6:	48 c7 c1 40 15 40 00 	mov    $0x401540,%rcx
  4004ed:	48 c7 c7 50 04 40 00 	mov    $0x400450,%rdi
  4004f4:	e8 27 ff ff ff       	callq  400420 <__libc_start_main@plt>
  4004f9:	f4                   	hlt    
  4004fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400500 <deregister_tm_clones>:
  400500:	b8 67 a0 60 00       	mov    $0x60a067,%eax
  400505:	55                   	push   %rbp
  400506:	48 2d 60 a0 60 00    	sub    $0x60a060,%rax
  40050c:	48 83 f8 0e          	cmp    $0xe,%rax
  400510:	48 89 e5             	mov    %rsp,%rbp
  400513:	76 1b                	jbe    400530 <deregister_tm_clones+0x30>
  400515:	b8 00 00 00 00       	mov    $0x0,%eax
  40051a:	48 85 c0             	test   %rax,%rax
  40051d:	74 11                	je     400530 <deregister_tm_clones+0x30>
  40051f:	5d                   	pop    %rbp
  400520:	bf 60 a0 60 00       	mov    $0x60a060,%edi
  400525:	ff e0                	jmpq   *%rax
  400527:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40052e:	00 00 
  400530:	5d                   	pop    %rbp
  400531:	c3                   	retq   
  400532:	0f 1f 40 00          	nopl   0x0(%rax)
  400536:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40053d:	00 00 00 

0000000000400540 <register_tm_clones>:
  400540:	be 60 a0 60 00       	mov    $0x60a060,%esi
  400545:	55                   	push   %rbp
  400546:	48 81 ee 60 a0 60 00 	sub    $0x60a060,%rsi
  40054d:	48 c1 fe 03          	sar    $0x3,%rsi
  400551:	48 89 e5             	mov    %rsp,%rbp
  400554:	48 89 f0             	mov    %rsi,%rax
  400557:	48 c1 e8 3f          	shr    $0x3f,%rax
  40055b:	48 01 c6             	add    %rax,%rsi
  40055e:	48 d1 fe             	sar    %rsi
  400561:	74 15                	je     400578 <register_tm_clones+0x38>
  400563:	b8 00 00 00 00       	mov    $0x0,%eax
  400568:	48 85 c0             	test   %rax,%rax
  40056b:	74 0b                	je     400578 <register_tm_clones+0x38>
  40056d:	5d                   	pop    %rbp
  40056e:	bf 60 a0 60 00       	mov    $0x60a060,%edi
  400573:	ff e0                	jmpq   *%rax
  400575:	0f 1f 00             	nopl   (%rax)
  400578:	5d                   	pop    %rbp
  400579:	c3                   	retq   
  40057a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400580 <__do_global_dtors_aux>:
  400580:	80 3d d9 9a 20 00 00 	cmpb   $0x0,0x209ad9(%rip)        # 60a060 <__TMC_END__>
  400587:	75 11                	jne    40059a <__do_global_dtors_aux+0x1a>
  400589:	55                   	push   %rbp
  40058a:	48 89 e5             	mov    %rsp,%rbp
  40058d:	e8 6e ff ff ff       	callq  400500 <deregister_tm_clones>
  400592:	5d                   	pop    %rbp
  400593:	c6 05 c6 9a 20 00 01 	movb   $0x1,0x209ac6(%rip)        # 60a060 <__TMC_END__>
  40059a:	f3 c3                	repz retq 
  40059c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005a0 <frame_dummy>:
  4005a0:	bf 20 1e 60 00       	mov    $0x601e20,%edi
  4005a5:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  4005a9:	75 05                	jne    4005b0 <frame_dummy+0x10>
  4005ab:	eb 93                	jmp    400540 <register_tm_clones>
  4005ad:	0f 1f 00             	nopl   (%rax)
  4005b0:	b8 00 00 00 00       	mov    $0x0,%eax
  4005b5:	48 85 c0             	test   %rax,%rax
  4005b8:	74 f1                	je     4005ab <frame_dummy+0xb>
  4005ba:	55                   	push   %rbp
  4005bb:	48 89 e5             	mov    %rsp,%rbp
  4005be:	ff d0                	callq  *%rax
  4005c0:	5d                   	pop    %rbp
  4005c1:	e9 7a ff ff ff       	jmpq   400540 <register_tm_clones>
  4005c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005cd:	00 00 00 

00000000004005d0 <merge>:
  4005d0:	41 57                	push   %r15
  4005d2:	44 89 c0             	mov    %r8d,%eax
  4005d5:	41 56                	push   %r14
  4005d7:	41 55                	push   %r13
  4005d9:	41 54                	push   %r12
  4005db:	29 d0                	sub    %edx,%eax
  4005dd:	55                   	push   %rbp
  4005de:	53                   	push   %rbx
  4005df:	44 8d 59 ff          	lea    -0x1(%rcx),%r11d
  4005e3:	8d 5a 01             	lea    0x1(%rdx),%ebx
  4005e6:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4005ea:	83 c0 01             	add    $0x1,%eax
  4005ed:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4005f1:	48 63 c2             	movslq %edx,%rax
  4005f4:	48 8d 2c 86          	lea    (%rsi,%rax,4),%rbp
  4005f8:	89 c8                	mov    %ecx,%eax
  4005fa:	eb 12                	jmp    40060e <merge+0x3e>
  4005fc:	0f 1f 40 00          	nopl   0x0(%rax)
  400600:	83 c2 01             	add    $0x1,%edx
  400603:	44 89 55 00          	mov    %r10d,0x0(%rbp)
  400607:	83 c3 01             	add    $0x1,%ebx
  40060a:	48 83 c5 04          	add    $0x4,%rbp
  40060e:	44 8d 4b ff          	lea    -0x1(%rbx),%r9d
  400612:	44 39 da             	cmp    %r11d,%edx
  400615:	45 89 ca             	mov    %r9d,%r10d
  400618:	7f 26                	jg     400640 <merge+0x70>
  40061a:	44 39 c0             	cmp    %r8d,%eax
  40061d:	7f 21                	jg     400640 <merge+0x70>
  40061f:	4c 63 ca             	movslq %edx,%r9
  400622:	46 8b 14 8f          	mov    (%rdi,%r9,4),%r10d
  400626:	4c 63 c8             	movslq %eax,%r9
  400629:	46 8b 0c 8f          	mov    (%rdi,%r9,4),%r9d
  40062d:	45 39 ca             	cmp    %r9d,%r10d
  400630:	7e ce                	jle    400600 <merge+0x30>
  400632:	83 c0 01             	add    $0x1,%eax
  400635:	44 89 4d 00          	mov    %r9d,0x0(%rbp)
  400639:	eb cc                	jmp    400607 <merge+0x37>
  40063b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400640:	44 39 da             	cmp    %r11d,%edx
  400643:	0f 8f 6d 01 00 00    	jg     4007b6 <merge+0x1e6>
  400649:	89 cb                	mov    %ecx,%ebx
  40064b:	4d 63 f1             	movslq %r9d,%r14
  40064e:	48 63 ea             	movslq %edx,%rbp
  400651:	29 d3                	sub    %edx,%ebx
  400653:	4c 8d 2c ad 00 00 00 	lea    0x0(,%rbp,4),%r13
  40065a:	00 
  40065b:	89 54 24 ec          	mov    %edx,-0x14(%rsp)
  40065f:	89 5c 24 e4          	mov    %ebx,-0x1c(%rsp)
  400663:	4a 8d 1c b5 10 00 00 	lea    0x10(,%r14,4),%rbx
  40066a:	00 
  40066b:	4e 8d 7c 2f 10       	lea    0x10(%rdi,%r13,1),%r15
  400670:	4a 8d 2c 2f          	lea    (%rdi,%r13,1),%rbp
  400674:	4c 8d 63 f0          	lea    -0x10(%rbx),%r12
  400678:	4c 89 64 24 f0       	mov    %r12,-0x10(%rsp)
  40067d:	49 01 f4             	add    %rsi,%r12
  400680:	4d 39 fc             	cmp    %r15,%r12
  400683:	41 0f 93 c7          	setae  %r15b
  400687:	48 01 f3             	add    %rsi,%rbx
  40068a:	48 39 dd             	cmp    %rbx,%rbp
  40068d:	0f 93 c3             	setae  %bl
  400690:	41 08 df             	or     %bl,%r15b
  400693:	0f 84 a7 03 00 00    	je     400a40 <merge+0x470>
  400699:	44 8b 7c 24 e4       	mov    -0x1c(%rsp),%r15d
  40069e:	41 83 ff 0c          	cmp    $0xc,%r15d
  4006a2:	0f 86 98 03 00 00    	jbe    400a40 <merge+0x470>
  4006a8:	48 89 eb             	mov    %rbp,%rbx
  4006ab:	83 e3 0f             	and    $0xf,%ebx
  4006ae:	48 c1 eb 02          	shr    $0x2,%rbx
  4006b2:	48 f7 db             	neg    %rbx
  4006b5:	83 e3 03             	and    $0x3,%ebx
  4006b8:	44 39 fb             	cmp    %r15d,%ebx
  4006bb:	49 0f 47 df          	cmova  %r15,%rbx
  4006bf:	85 db                	test   %ebx,%ebx
  4006c1:	74 4a                	je     40070d <merge+0x13d>
  4006c3:	8b 6d 00             	mov    0x0(%rbp),%ebp
  4006c6:	83 fb 01             	cmp    $0x1,%ebx
  4006c9:	45 8d 51 01          	lea    0x1(%r9),%r10d
  4006cd:	44 8d 62 01          	lea    0x1(%rdx),%r12d
  4006d1:	42 89 2c b6          	mov    %ebp,(%rsi,%r14,4)
  4006d5:	0f 84 35 04 00 00    	je     400b10 <merge+0x540>
  4006db:	4d 63 e4             	movslq %r12d,%r12
  4006de:	4d 63 d2             	movslq %r10d,%r10
  4006e1:	83 fb 03             	cmp    $0x3,%ebx
  4006e4:	46 8b 24 a7          	mov    (%rdi,%r12,4),%r12d
  4006e8:	45 8d 71 02          	lea    0x2(%r9),%r14d
  4006ec:	8d 6a 02             	lea    0x2(%rdx),%ebp
  4006ef:	46 89 24 96          	mov    %r12d,(%rsi,%r10,4)
  4006f3:	0f 85 07 04 00 00    	jne    400b00 <merge+0x530>
  4006f9:	48 63 ed             	movslq %ebp,%rbp
  4006fc:	4d 63 f6             	movslq %r14d,%r14
  4006ff:	45 8d 51 03          	lea    0x3(%r9),%r10d
  400703:	8b 2c af             	mov    (%rdi,%rbp,4),%ebp
  400706:	83 c2 03             	add    $0x3,%edx
  400709:	42 89 2c b6          	mov    %ebp,(%rsi,%r14,4)
  40070d:	44 8b 74 24 e4       	mov    -0x1c(%rsp),%r14d
  400712:	41 29 de             	sub    %ebx,%r14d
  400715:	48 c1 e3 02          	shl    $0x2,%rbx
  400719:	45 8d 66 fc          	lea    -0x4(%r14),%r12d
  40071d:	49 8d 6c 1d 00       	lea    0x0(%r13,%rbx,1),%rbp
  400722:	48 03 5c 24 f0       	add    -0x10(%rsp),%rbx
  400727:	44 89 74 24 e4       	mov    %r14d,-0x1c(%rsp)
  40072c:	45 31 ed             	xor    %r13d,%r13d
  40072f:	45 31 f6             	xor    %r14d,%r14d
  400732:	41 c1 ec 02          	shr    $0x2,%r12d
  400736:	48 01 fd             	add    %rdi,%rbp
  400739:	41 83 c4 01          	add    $0x1,%r12d
  40073d:	46 8d 3c a5 00 00 00 	lea    0x0(,%r12,4),%r15d
  400744:	00 
  400745:	48 01 f3             	add    %rsi,%rbx
  400748:	66 42 0f 6f 44 2d 00 	movdqa 0x0(%rbp,%r13,1),%xmm0
  40074f:	41 83 c6 01          	add    $0x1,%r14d
  400753:	42 0f 11 04 2b       	movups %xmm0,(%rbx,%r13,1)
  400758:	49 83 c5 10          	add    $0x10,%r13
  40075c:	45 39 e6             	cmp    %r12d,%r14d
  40075f:	72 e7                	jb     400748 <merge+0x178>
  400761:	44 01 fa             	add    %r15d,%edx
  400764:	45 01 fa             	add    %r15d,%r10d
  400767:	44 39 7c 24 e4       	cmp    %r15d,-0x1c(%rsp)
  40076c:	74 3f                	je     4007ad <merge+0x1dd>
  40076e:	4c 63 e2             	movslq %edx,%r12
  400771:	8d 5a 01             	lea    0x1(%rdx),%ebx
  400774:	41 8d 6a 01          	lea    0x1(%r10),%ebp
  400778:	46 8b 2c a7          	mov    (%rdi,%r12,4),%r13d
  40077c:	4d 63 e2             	movslq %r10d,%r12
  40077f:	41 39 db             	cmp    %ebx,%r11d
  400782:	46 89 2c a6          	mov    %r13d,(%rsi,%r12,4)
  400786:	7c 25                	jl     4007ad <merge+0x1dd>
  400788:	48 63 db             	movslq %ebx,%rbx
  40078b:	83 c2 02             	add    $0x2,%edx
  40078e:	41 83 c2 02          	add    $0x2,%r10d
  400792:	8b 1c 9f             	mov    (%rdi,%rbx,4),%ebx
  400795:	48 63 ed             	movslq %ebp,%rbp
  400798:	41 39 d3             	cmp    %edx,%r11d
  40079b:	89 1c ae             	mov    %ebx,(%rsi,%rbp,4)
  40079e:	7c 0d                	jl     4007ad <merge+0x1dd>
  4007a0:	48 63 d2             	movslq %edx,%rdx
  4007a3:	4d 63 d2             	movslq %r10d,%r10
  4007a6:	8b 14 97             	mov    (%rdi,%rdx,4),%edx
  4007a9:	42 89 14 96          	mov    %edx,(%rsi,%r10,4)
  4007ad:	46 8d 14 09          	lea    (%rcx,%r9,1),%r10d
  4007b1:	44 2b 54 24 ec       	sub    -0x14(%rsp),%r10d
  4007b6:	44 39 c0             	cmp    %r8d,%eax
  4007b9:	0f 8f 43 01 00 00    	jg     400902 <merge+0x332>
  4007bf:	4d 63 ea             	movslq %r10d,%r13
  4007c2:	48 63 d0             	movslq %eax,%rdx
  4007c5:	45 89 c3             	mov    %r8d,%r11d
  4007c8:	4a 8d 1c ad 10 00 00 	lea    0x10(,%r13,4),%rbx
  4007cf:	00 
  4007d0:	48 c1 e2 02          	shl    $0x2,%rdx
  4007d4:	41 29 c3             	sub    %eax,%r11d
  4007d7:	4c 8d 74 17 10       	lea    0x10(%rdi,%rdx,1),%r14
  4007dc:	4c 8d 0c 17          	lea    (%rdi,%rdx,1),%r9
  4007e0:	41 8d 4b 01          	lea    0x1(%r11),%ecx
  4007e4:	4c 8d 63 f0          	lea    -0x10(%rbx),%r12
  4007e8:	4a 8d 2c 26          	lea    (%rsi,%r12,1),%rbp
  4007ec:	4c 39 f5             	cmp    %r14,%rbp
  4007ef:	41 0f 93 c6          	setae  %r14b
  4007f3:	48 01 f3             	add    %rsi,%rbx
  4007f6:	49 39 d9             	cmp    %rbx,%r9
  4007f9:	0f 93 c3             	setae  %bl
  4007fc:	41 08 de             	or     %bl,%r14b
  4007ff:	0f 84 6b 02 00 00    	je     400a70 <merge+0x4a0>
  400805:	83 f9 0c             	cmp    $0xc,%ecx
  400808:	0f 86 62 02 00 00    	jbe    400a70 <merge+0x4a0>
  40080e:	4d 89 cb             	mov    %r9,%r11
  400811:	41 83 e3 0f          	and    $0xf,%r11d
  400815:	49 c1 eb 02          	shr    $0x2,%r11
  400819:	49 f7 db             	neg    %r11
  40081c:	41 83 e3 03          	and    $0x3,%r11d
  400820:	41 39 cb             	cmp    %ecx,%r11d
  400823:	4c 0f 47 d9          	cmova  %rcx,%r11
  400827:	45 85 db             	test   %r11d,%r11d
  40082a:	74 4b                	je     400877 <merge+0x2a7>
  40082c:	45 8b 09             	mov    (%r9),%r9d
  40082f:	41 83 fb 01          	cmp    $0x1,%r11d
  400833:	41 8d 6a 01          	lea    0x1(%r10),%ebp
  400837:	8d 58 01             	lea    0x1(%rax),%ebx
  40083a:	46 89 0c ae          	mov    %r9d,(%rsi,%r13,4)
  40083e:	0f 84 ec 02 00 00    	je     400b30 <merge+0x560>
  400844:	48 63 db             	movslq %ebx,%rbx
  400847:	48 63 ed             	movslq %ebp,%rbp
  40084a:	41 83 fb 03          	cmp    $0x3,%r11d
  40084e:	8b 1c 9f             	mov    (%rdi,%rbx,4),%ebx
  400851:	45 8d 6a 02          	lea    0x2(%r10),%r13d
  400855:	44 8d 48 02          	lea    0x2(%rax),%r9d
  400859:	89 1c ae             	mov    %ebx,(%rsi,%rbp,4)
  40085c:	0f 85 be 02 00 00    	jne    400b20 <merge+0x550>
  400862:	4d 63 c9             	movslq %r9d,%r9
  400865:	4d 63 ed             	movslq %r13d,%r13
  400868:	41 83 c2 03          	add    $0x3,%r10d
  40086c:	46 8b 0c 8f          	mov    (%rdi,%r9,4),%r9d
  400870:	83 c0 03             	add    $0x3,%eax
  400873:	46 89 0c ae          	mov    %r9d,(%rsi,%r13,4)
  400877:	44 29 d9             	sub    %r11d,%ecx
  40087a:	49 c1 e3 02          	shl    $0x2,%r11
  40087e:	31 ed                	xor    %ebp,%ebp
  400880:	8d 59 fc             	lea    -0x4(%rcx),%ebx
  400883:	4c 01 da             	add    %r11,%rdx
  400886:	4d 01 e3             	add    %r12,%r11
  400889:	48 01 fa             	add    %rdi,%rdx
  40088c:	49 01 f3             	add    %rsi,%r11
  40088f:	45 31 e4             	xor    %r12d,%r12d
  400892:	c1 eb 02             	shr    $0x2,%ebx
  400895:	83 c3 01             	add    $0x1,%ebx
  400898:	44 8d 0c 9d 00 00 00 	lea    0x0(,%rbx,4),%r9d
  40089f:	00 
  4008a0:	66 0f 6f 04 2a       	movdqa (%rdx,%rbp,1),%xmm0
  4008a5:	41 83 c4 01          	add    $0x1,%r12d
  4008a9:	41 0f 11 04 2b       	movups %xmm0,(%r11,%rbp,1)
  4008ae:	48 83 c5 10          	add    $0x10,%rbp
  4008b2:	41 39 dc             	cmp    %ebx,%r12d
  4008b5:	72 e9                	jb     4008a0 <merge+0x2d0>
  4008b7:	44 01 c8             	add    %r9d,%eax
  4008ba:	45 01 ca             	add    %r9d,%r10d
  4008bd:	44 39 c9             	cmp    %r9d,%ecx
  4008c0:	74 40                	je     400902 <merge+0x332>
  4008c2:	4c 63 c8             	movslq %eax,%r9
  4008c5:	8d 50 01             	lea    0x1(%rax),%edx
  4008c8:	41 8d 4a 01          	lea    0x1(%r10),%ecx
  4008cc:	46 8b 1c 8f          	mov    (%rdi,%r9,4),%r11d
  4008d0:	4d 63 ca             	movslq %r10d,%r9
  4008d3:	41 39 d0             	cmp    %edx,%r8d
  4008d6:	46 89 1c 8e          	mov    %r11d,(%rsi,%r9,4)
  4008da:	7c 26                	jl     400902 <merge+0x332>
  4008dc:	48 63 d2             	movslq %edx,%rdx
  4008df:	83 c0 02             	add    $0x2,%eax
  4008e2:	41 83 c2 02          	add    $0x2,%r10d
  4008e6:	44 8b 0c 97          	mov    (%rdi,%rdx,4),%r9d
  4008ea:	41 39 c0             	cmp    %eax,%r8d
  4008ed:	48 63 d1             	movslq %ecx,%rdx
  4008f0:	44 89 0c 96          	mov    %r9d,(%rsi,%rdx,4)
  4008f4:	7c 0c                	jl     400902 <merge+0x332>
  4008f6:	48 98                	cltq   
  4008f8:	4d 63 d2             	movslq %r10d,%r10
  4008fb:	8b 04 87             	mov    (%rdi,%rax,4),%eax
  4008fe:	42 89 04 96          	mov    %eax,(%rsi,%r10,4)
  400902:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  400906:	85 c0                	test   %eax,%eax
  400908:	0f 88 26 01 00 00    	js     400a34 <merge+0x464>
  40090e:	49 63 c8             	movslq %r8d,%rcx
  400911:	44 8b 4c 24 e8       	mov    -0x18(%rsp),%r9d
  400916:	48 8d 14 8d 04 00 00 	lea    0x4(,%rcx,4),%rdx
  40091d:	00 
  40091e:	48 8d 42 f0          	lea    -0x10(%rdx),%rax
  400922:	4c 8d 14 16          	lea    (%rsi,%rdx,1),%r10
  400926:	41 83 c1 02          	add    $0x2,%r9d
  40092a:	4c 8d 1c 07          	lea    (%rdi,%rax,1),%r11
  40092e:	4d 39 d3             	cmp    %r10,%r11
  400931:	41 0f 93 c2          	setae  %r10b
  400935:	48 01 f0             	add    %rsi,%rax
  400938:	48 01 fa             	add    %rdi,%rdx
  40093b:	48 39 d0             	cmp    %rdx,%rax
  40093e:	0f 93 c0             	setae  %al
  400941:	41 08 c2             	or     %al,%r10b
  400944:	0f 84 56 01 00 00    	je     400aa0 <merge+0x4d0>
  40094a:	41 83 f9 0c          	cmp    $0xc,%r9d
  40094e:	0f 86 4c 01 00 00    	jbe    400aa0 <merge+0x4d0>
  400954:	4c 8d 1c 8d f4 ff ff 	lea    -0xc(,%rcx,4),%r11
  40095b:	ff 
  40095c:	4a 8d 04 1e          	lea    (%rsi,%r11,1),%rax
  400960:	83 e0 0f             	and    $0xf,%eax
  400963:	48 c1 e8 02          	shr    $0x2,%rax
  400967:	41 39 c1             	cmp    %eax,%r9d
  40096a:	41 0f 42 c1          	cmovb  %r9d,%eax
  40096e:	45 31 d2             	xor    %r10d,%r10d
  400971:	85 c0                	test   %eax,%eax
  400973:	74 3c                	je     4009b1 <merge+0x3e1>
  400975:	8b 14 8e             	mov    (%rsi,%rcx,4),%edx
  400978:	83 f8 01             	cmp    $0x1,%eax
  40097b:	89 14 8f             	mov    %edx,(%rdi,%rcx,4)
  40097e:	41 8d 50 ff          	lea    -0x1(%r8),%edx
  400982:	0f 84 68 01 00 00    	je     400af0 <merge+0x520>
  400988:	48 63 d2             	movslq %edx,%rdx
  40098b:	83 f8 03             	cmp    $0x3,%eax
  40098e:	8b 0c 96             	mov    (%rsi,%rdx,4),%ecx
  400991:	89 0c 97             	mov    %ecx,(%rdi,%rdx,4)
  400994:	41 8d 50 fe          	lea    -0x2(%r8),%edx
  400998:	0f 85 42 01 00 00    	jne    400ae0 <merge+0x510>
  40099e:	48 63 d2             	movslq %edx,%rdx
  4009a1:	41 83 e8 03          	sub    $0x3,%r8d
  4009a5:	41 ba 03 00 00 00    	mov    $0x3,%r10d
  4009ab:	8b 0c 96             	mov    (%rsi,%rdx,4),%ecx
  4009ae:	89 0c 97             	mov    %ecx,(%rdi,%rdx,4)
  4009b1:	41 29 c1             	sub    %eax,%r9d
  4009b4:	89 c0                	mov    %eax,%eax
  4009b6:	31 db                	xor    %ebx,%ebx
  4009b8:	41 8d 51 fc          	lea    -0x4(%r9),%edx
  4009bc:	48 f7 d8             	neg    %rax
  4009bf:	49 8d 04 83          	lea    (%r11,%rax,4),%rax
  4009c3:	c1 ea 02             	shr    $0x2,%edx
  4009c6:	83 c2 01             	add    $0x1,%edx
  4009c9:	48 8d 2c 06          	lea    (%rsi,%rax,1),%rbp
  4009cd:	4c 8d 1c 07          	lea    (%rdi,%rax,1),%r11
  4009d1:	8d 0c 95 00 00 00 00 	lea    0x0(,%rdx,4),%ecx
  4009d8:	31 c0                	xor    %eax,%eax
  4009da:	66 0f 6f 44 05 00    	movdqa 0x0(%rbp,%rax,1),%xmm0
  4009e0:	83 c3 01             	add    $0x1,%ebx
  4009e3:	41 0f 11 04 03       	movups %xmm0,(%r11,%rax,1)
  4009e8:	48 83 e8 10          	sub    $0x10,%rax
  4009ec:	39 d3                	cmp    %edx,%ebx
  4009ee:	72 ea                	jb     4009da <merge+0x40a>
  4009f0:	41 29 c8             	sub    %ecx,%r8d
  4009f3:	41 01 ca             	add    %ecx,%r10d
  4009f6:	41 39 c9             	cmp    %ecx,%r9d
  4009f9:	74 39                	je     400a34 <merge+0x464>
  4009fb:	49 63 c0             	movslq %r8d,%rax
  4009fe:	8b 4c 24 e0          	mov    -0x20(%rsp),%ecx
  400a02:	8b 14 86             	mov    (%rsi,%rax,4),%edx
  400a05:	89 14 87             	mov    %edx,(%rdi,%rax,4)
  400a08:	41 8d 52 01          	lea    0x1(%r10),%edx
  400a0c:	41 8d 40 ff          	lea    -0x1(%r8),%eax
  400a10:	39 d1                	cmp    %edx,%ecx
  400a12:	7c 20                	jl     400a34 <merge+0x464>
  400a14:	48 98                	cltq   
  400a16:	41 83 c2 02          	add    $0x2,%r10d
  400a1a:	41 83 e8 02          	sub    $0x2,%r8d
  400a1e:	8b 14 86             	mov    (%rsi,%rax,4),%edx
  400a21:	44 39 d1             	cmp    %r10d,%ecx
  400a24:	89 14 87             	mov    %edx,(%rdi,%rax,4)
  400a27:	7c 0b                	jl     400a34 <merge+0x464>
  400a29:	4d 63 c0             	movslq %r8d,%r8
  400a2c:	42 8b 04 86          	mov    (%rsi,%r8,4),%eax
  400a30:	42 89 04 87          	mov    %eax,(%rdi,%r8,4)
  400a34:	5b                   	pop    %rbx
  400a35:	5d                   	pop    %rbp
  400a36:	41 5c                	pop    %r12
  400a38:	41 5d                	pop    %r13
  400a3a:	41 5e                	pop    %r14
  400a3c:	41 5f                	pop    %r15
  400a3e:	c3                   	retq   
  400a3f:	90                   	nop
  400a40:	41 29 d3             	sub    %edx,%r11d
  400a43:	31 d2                	xor    %edx,%edx
  400a45:	49 83 c3 01          	add    $0x1,%r11
  400a49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400a50:	44 8b 54 95 00       	mov    0x0(%rbp,%rdx,4),%r10d
  400a55:	45 89 14 94          	mov    %r10d,(%r12,%rdx,4)
  400a59:	48 83 c2 01          	add    $0x1,%rdx
  400a5d:	4c 39 da             	cmp    %r11,%rdx
  400a60:	75 ee                	jne    400a50 <merge+0x480>
  400a62:	e9 46 fd ff ff       	jmpq   4007ad <merge+0x1dd>
  400a67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400a6e:	00 00 
  400a70:	49 83 c3 01          	add    $0x1,%r11
  400a74:	31 c0                	xor    %eax,%eax
  400a76:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400a7d:	00 00 00 
  400a80:	41 8b 14 81          	mov    (%r9,%rax,4),%edx
  400a84:	89 54 85 00          	mov    %edx,0x0(%rbp,%rax,4)
  400a88:	48 83 c0 01          	add    $0x1,%rax
  400a8c:	4c 39 d8             	cmp    %r11,%rax
  400a8f:	75 ef                	jne    400a80 <merge+0x4b0>
  400a91:	e9 6c fe ff ff       	jmpq   400902 <merge+0x332>
  400a96:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400a9d:	00 00 00 
  400aa0:	8b 54 24 e0          	mov    -0x20(%rsp),%edx
  400aa4:	48 8d 04 8d 00 00 00 	lea    0x0(,%rcx,4),%rax
  400aab:	00 
  400aac:	48 01 c6             	add    %rax,%rsi
  400aaf:	48 01 c7             	add    %rax,%rdi
  400ab2:	31 c0                	xor    %eax,%eax
  400ab4:	48 f7 d2             	not    %rdx
  400ab7:	48 c1 e2 02          	shl    $0x2,%rdx
  400abb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400ac0:	8b 0c 06             	mov    (%rsi,%rax,1),%ecx
  400ac3:	89 0c 07             	mov    %ecx,(%rdi,%rax,1)
  400ac6:	48 83 e8 04          	sub    $0x4,%rax
  400aca:	48 39 d0             	cmp    %rdx,%rax
  400acd:	75 f1                	jne    400ac0 <merge+0x4f0>
  400acf:	5b                   	pop    %rbx
  400ad0:	5d                   	pop    %rbp
  400ad1:	41 5c                	pop    %r12
  400ad3:	41 5d                	pop    %r13
  400ad5:	41 5e                	pop    %r14
  400ad7:	41 5f                	pop    %r15
  400ad9:	c3                   	retq   
  400ada:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400ae0:	41 89 d0             	mov    %edx,%r8d
  400ae3:	41 ba 02 00 00 00    	mov    $0x2,%r10d
  400ae9:	e9 c3 fe ff ff       	jmpq   4009b1 <merge+0x3e1>
  400aee:	66 90                	xchg   %ax,%ax
  400af0:	41 89 d0             	mov    %edx,%r8d
  400af3:	41 ba 01 00 00 00    	mov    $0x1,%r10d
  400af9:	e9 b3 fe ff ff       	jmpq   4009b1 <merge+0x3e1>
  400afe:	66 90                	xchg   %ax,%ax
  400b00:	45 89 f2             	mov    %r14d,%r10d
  400b03:	89 ea                	mov    %ebp,%edx
  400b05:	e9 03 fc ff ff       	jmpq   40070d <merge+0x13d>
  400b0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400b10:	44 89 e2             	mov    %r12d,%edx
  400b13:	e9 f5 fb ff ff       	jmpq   40070d <merge+0x13d>
  400b18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400b1f:	00 
  400b20:	45 89 ea             	mov    %r13d,%r10d
  400b23:	44 89 c8             	mov    %r9d,%eax
  400b26:	e9 4c fd ff ff       	jmpq   400877 <merge+0x2a7>
  400b2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400b30:	41 89 ea             	mov    %ebp,%r10d
  400b33:	89 d8                	mov    %ebx,%eax
  400b35:	e9 3d fd ff ff       	jmpq   400877 <merge+0x2a7>
  400b3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400b40 <m_sort.part.0>:
  400b40:	8d 04 11             	lea    (%rcx,%rdx,1),%eax
  400b43:	41 57                	push   %r15
  400b45:	41 56                	push   %r14
  400b47:	41 55                	push   %r13
  400b49:	41 54                	push   %r12
  400b4b:	49 89 f5             	mov    %rsi,%r13
  400b4e:	55                   	push   %rbp
  400b4f:	53                   	push   %rbx
  400b50:	89 c3                	mov    %eax,%ebx
  400b52:	c1 eb 1f             	shr    $0x1f,%ebx
  400b55:	49 89 fc             	mov    %rdi,%r12
  400b58:	41 89 d6             	mov    %edx,%r14d
  400b5b:	01 c3                	add    %eax,%ebx
  400b5d:	48 83 ec 18          	sub    $0x18,%rsp
  400b61:	41 89 cf             	mov    %ecx,%r15d
  400b64:	d1 fb                	sar    %ebx
  400b66:	39 da                	cmp    %ebx,%edx
  400b68:	7c 2e                	jl     400b98 <m_sort.part.0+0x58>
  400b6a:	83 c3 01             	add    $0x1,%ebx
  400b6d:	41 39 df             	cmp    %ebx,%r15d
  400b70:	7f 5c                	jg     400bce <m_sort.part.0+0x8e>
  400b72:	48 83 c4 18          	add    $0x18,%rsp
  400b76:	45 89 f8             	mov    %r15d,%r8d
  400b79:	89 d9                	mov    %ebx,%ecx
  400b7b:	44 89 f2             	mov    %r14d,%edx
  400b7e:	4c 89 ee             	mov    %r13,%rsi
  400b81:	4c 89 e7             	mov    %r12,%rdi
  400b84:	5b                   	pop    %rbx
  400b85:	5d                   	pop    %rbp
  400b86:	41 5c                	pop    %r12
  400b88:	41 5d                	pop    %r13
  400b8a:	41 5e                	pop    %r14
  400b8c:	41 5f                	pop    %r15
  400b8e:	e9 3d fa ff ff       	jmpq   4005d0 <merge>
  400b93:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400b98:	8d 04 1a             	lea    (%rdx,%rbx,1),%eax
  400b9b:	89 c5                	mov    %eax,%ebp
  400b9d:	c1 ed 1f             	shr    $0x1f,%ebp
  400ba0:	01 c5                	add    %eax,%ebp
  400ba2:	d1 fd                	sar    %ebp
  400ba4:	39 ea                	cmp    %ebp,%edx
  400ba6:	7c 68                	jl     400c10 <m_sort.part.0+0xd0>
  400ba8:	83 c5 01             	add    $0x1,%ebp
  400bab:	39 eb                	cmp    %ebp,%ebx
  400bad:	0f 8f bc 00 00 00    	jg     400c6f <m_sort.part.0+0x12f>
  400bb3:	41 89 d8             	mov    %ebx,%r8d
  400bb6:	89 e9                	mov    %ebp,%ecx
  400bb8:	44 89 f2             	mov    %r14d,%edx
  400bbb:	4c 89 ee             	mov    %r13,%rsi
  400bbe:	4c 89 e7             	mov    %r12,%rdi
  400bc1:	83 c3 01             	add    $0x1,%ebx
  400bc4:	e8 07 fa ff ff       	callq  4005d0 <merge>
  400bc9:	41 39 df             	cmp    %ebx,%r15d
  400bcc:	7e a4                	jle    400b72 <m_sort.part.0+0x32>
  400bce:	41 8d 04 1f          	lea    (%r15,%rbx,1),%eax
  400bd2:	89 c5                	mov    %eax,%ebp
  400bd4:	c1 ed 1f             	shr    $0x1f,%ebp
  400bd7:	01 c5                	add    %eax,%ebp
  400bd9:	d1 fd                	sar    %ebp
  400bdb:	39 eb                	cmp    %ebp,%ebx
  400bdd:	0f 8c 4d 01 00 00    	jl     400d30 <m_sort.part.0+0x1f0>
  400be3:	83 c5 01             	add    $0x1,%ebp
  400be6:	41 39 ef             	cmp    %ebp,%r15d
  400be9:	0f 8f e1 00 00 00    	jg     400cd0 <m_sort.part.0+0x190>
  400bef:	45 89 f8             	mov    %r15d,%r8d
  400bf2:	89 e9                	mov    %ebp,%ecx
  400bf4:	89 da                	mov    %ebx,%edx
  400bf6:	4c 89 ee             	mov    %r13,%rsi
  400bf9:	4c 89 e7             	mov    %r12,%rdi
  400bfc:	e8 cf f9 ff ff       	callq  4005d0 <merge>
  400c01:	e9 6c ff ff ff       	jmpq   400b72 <m_sort.part.0+0x32>
  400c06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400c0d:	00 00 00 
  400c10:	8d 04 2a             	lea    (%rdx,%rbp,1),%eax
  400c13:	89 c2                	mov    %eax,%edx
  400c15:	c1 ea 1f             	shr    $0x1f,%edx
  400c18:	01 d0                	add    %edx,%eax
  400c1a:	d1 f8                	sar    %eax
  400c1c:	41 39 c6             	cmp    %eax,%r14d
  400c1f:	7d 12                	jge    400c33 <m_sort.part.0+0xf3>
  400c21:	89 c1                	mov    %eax,%ecx
  400c23:	44 89 f2             	mov    %r14d,%edx
  400c26:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  400c2a:	e8 11 ff ff ff       	callq  400b40 <m_sort.part.0>
  400c2f:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400c33:	83 c0 01             	add    $0x1,%eax
  400c36:	39 c5                	cmp    %eax,%ebp
  400c38:	7e 17                	jle    400c51 <m_sort.part.0+0x111>
  400c3a:	89 c2                	mov    %eax,%edx
  400c3c:	89 e9                	mov    %ebp,%ecx
  400c3e:	4c 89 ee             	mov    %r13,%rsi
  400c41:	4c 89 e7             	mov    %r12,%rdi
  400c44:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  400c48:	e8 f3 fe ff ff       	callq  400b40 <m_sort.part.0>
  400c4d:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400c51:	41 89 e8             	mov    %ebp,%r8d
  400c54:	89 c1                	mov    %eax,%ecx
  400c56:	44 89 f2             	mov    %r14d,%edx
  400c59:	4c 89 ee             	mov    %r13,%rsi
  400c5c:	4c 89 e7             	mov    %r12,%rdi
  400c5f:	83 c5 01             	add    $0x1,%ebp
  400c62:	e8 69 f9 ff ff       	callq  4005d0 <merge>
  400c67:	39 eb                	cmp    %ebp,%ebx
  400c69:	0f 8e 44 ff ff ff    	jle    400bb3 <m_sort.part.0+0x73>
  400c6f:	8d 04 2b             	lea    (%rbx,%rbp,1),%eax
  400c72:	89 c2                	mov    %eax,%edx
  400c74:	c1 ea 1f             	shr    $0x1f,%edx
  400c77:	01 d0                	add    %edx,%eax
  400c79:	d1 f8                	sar    %eax
  400c7b:	39 c5                	cmp    %eax,%ebp
  400c7d:	7d 17                	jge    400c96 <m_sort.part.0+0x156>
  400c7f:	89 c1                	mov    %eax,%ecx
  400c81:	89 ea                	mov    %ebp,%edx
  400c83:	4c 89 ee             	mov    %r13,%rsi
  400c86:	4c 89 e7             	mov    %r12,%rdi
  400c89:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  400c8d:	e8 ae fe ff ff       	callq  400b40 <m_sort.part.0>
  400c92:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400c96:	83 c0 01             	add    $0x1,%eax
  400c99:	39 c3                	cmp    %eax,%ebx
  400c9b:	7e 17                	jle    400cb4 <m_sort.part.0+0x174>
  400c9d:	89 c2                	mov    %eax,%edx
  400c9f:	89 d9                	mov    %ebx,%ecx
  400ca1:	4c 89 ee             	mov    %r13,%rsi
  400ca4:	4c 89 e7             	mov    %r12,%rdi
  400ca7:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  400cab:	e8 90 fe ff ff       	callq  400b40 <m_sort.part.0>
  400cb0:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400cb4:	41 89 d8             	mov    %ebx,%r8d
  400cb7:	89 c1                	mov    %eax,%ecx
  400cb9:	89 ea                	mov    %ebp,%edx
  400cbb:	4c 89 ee             	mov    %r13,%rsi
  400cbe:	4c 89 e7             	mov    %r12,%rdi
  400cc1:	e8 0a f9 ff ff       	callq  4005d0 <merge>
  400cc6:	e9 e8 fe ff ff       	jmpq   400bb3 <m_sort.part.0+0x73>
  400ccb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400cd0:	41 8d 04 2f          	lea    (%r15,%rbp,1),%eax
  400cd4:	89 c2                	mov    %eax,%edx
  400cd6:	c1 ea 1f             	shr    $0x1f,%edx
  400cd9:	01 d0                	add    %edx,%eax
  400cdb:	d1 f8                	sar    %eax
  400cdd:	39 c5                	cmp    %eax,%ebp
  400cdf:	7d 17                	jge    400cf8 <m_sort.part.0+0x1b8>
  400ce1:	89 c1                	mov    %eax,%ecx
  400ce3:	89 ea                	mov    %ebp,%edx
  400ce5:	4c 89 ee             	mov    %r13,%rsi
  400ce8:	4c 89 e7             	mov    %r12,%rdi
  400ceb:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  400cef:	e8 4c fe ff ff       	callq  400b40 <m_sort.part.0>
  400cf4:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400cf8:	83 c0 01             	add    $0x1,%eax
  400cfb:	41 39 c7             	cmp    %eax,%r15d
  400cfe:	7e 18                	jle    400d18 <m_sort.part.0+0x1d8>
  400d00:	89 c2                	mov    %eax,%edx
  400d02:	44 89 f9             	mov    %r15d,%ecx
  400d05:	4c 89 ee             	mov    %r13,%rsi
  400d08:	4c 89 e7             	mov    %r12,%rdi
  400d0b:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  400d0f:	e8 2c fe ff ff       	callq  400b40 <m_sort.part.0>
  400d14:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400d18:	45 89 f8             	mov    %r15d,%r8d
  400d1b:	89 c1                	mov    %eax,%ecx
  400d1d:	89 ea                	mov    %ebp,%edx
  400d1f:	4c 89 ee             	mov    %r13,%rsi
  400d22:	4c 89 e7             	mov    %r12,%rdi
  400d25:	e8 a6 f8 ff ff       	callq  4005d0 <merge>
  400d2a:	e9 c0 fe ff ff       	jmpq   400bef <m_sort.part.0+0xaf>
  400d2f:	90                   	nop
  400d30:	8d 04 2b             	lea    (%rbx,%rbp,1),%eax
  400d33:	89 c2                	mov    %eax,%edx
  400d35:	c1 ea 1f             	shr    $0x1f,%edx
  400d38:	01 d0                	add    %edx,%eax
  400d3a:	d1 f8                	sar    %eax
  400d3c:	39 c3                	cmp    %eax,%ebx
  400d3e:	7d 17                	jge    400d57 <m_sort.part.0+0x217>
  400d40:	89 c1                	mov    %eax,%ecx
  400d42:	89 da                	mov    %ebx,%edx
  400d44:	4c 89 ee             	mov    %r13,%rsi
  400d47:	4c 89 e7             	mov    %r12,%rdi
  400d4a:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  400d4e:	e8 ed fd ff ff       	callq  400b40 <m_sort.part.0>
  400d53:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400d57:	83 c0 01             	add    $0x1,%eax
  400d5a:	39 c5                	cmp    %eax,%ebp
  400d5c:	7e 17                	jle    400d75 <m_sort.part.0+0x235>
  400d5e:	89 c2                	mov    %eax,%edx
  400d60:	89 e9                	mov    %ebp,%ecx
  400d62:	4c 89 ee             	mov    %r13,%rsi
  400d65:	4c 89 e7             	mov    %r12,%rdi
  400d68:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  400d6c:	e8 cf fd ff ff       	callq  400b40 <m_sort.part.0>
  400d71:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400d75:	41 89 e8             	mov    %ebp,%r8d
  400d78:	89 c1                	mov    %eax,%ecx
  400d7a:	89 da                	mov    %ebx,%edx
  400d7c:	4c 89 ee             	mov    %r13,%rsi
  400d7f:	4c 89 e7             	mov    %r12,%rdi
  400d82:	e8 49 f8 ff ff       	callq  4005d0 <merge>
  400d87:	e9 57 fe ff ff       	jmpq   400be3 <m_sort.part.0+0xa3>
  400d8c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400d90 <m_sort>:
  400d90:	39 d1                	cmp    %edx,%ecx
  400d92:	7f 0c                	jg     400da0 <m_sort+0x10>
  400d94:	f3 c3                	repz retq 
  400d96:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400d9d:	00 00 00 
  400da0:	8d 04 11             	lea    (%rcx,%rdx,1),%eax
  400da3:	41 57                	push   %r15
  400da5:	41 56                	push   %r14
  400da7:	41 55                	push   %r13
  400da9:	41 54                	push   %r12
  400dab:	41 89 ce             	mov    %ecx,%r14d
  400dae:	55                   	push   %rbp
  400daf:	53                   	push   %rbx
  400db0:	89 c3                	mov    %eax,%ebx
  400db2:	c1 eb 1f             	shr    $0x1f,%ebx
  400db5:	41 89 d7             	mov    %edx,%r15d
  400db8:	49 89 f4             	mov    %rsi,%r12
  400dbb:	01 c3                	add    %eax,%ebx
  400dbd:	48 83 ec 18          	sub    $0x18,%rsp
  400dc1:	48 89 fd             	mov    %rdi,%rbp
  400dc4:	d1 fb                	sar    %ebx
  400dc6:	39 da                	cmp    %ebx,%edx
  400dc8:	7c 2e                	jl     400df8 <m_sort+0x68>
  400dca:	83 c3 01             	add    $0x1,%ebx
  400dcd:	41 39 de             	cmp    %ebx,%r14d
  400dd0:	7f 64                	jg     400e36 <m_sort+0xa6>
  400dd2:	48 83 c4 18          	add    $0x18,%rsp
  400dd6:	45 89 f0             	mov    %r14d,%r8d
  400dd9:	89 d9                	mov    %ebx,%ecx
  400ddb:	44 89 fa             	mov    %r15d,%edx
  400dde:	4c 89 e6             	mov    %r12,%rsi
  400de1:	48 89 ef             	mov    %rbp,%rdi
  400de4:	5b                   	pop    %rbx
  400de5:	5d                   	pop    %rbp
  400de6:	41 5c                	pop    %r12
  400de8:	41 5d                	pop    %r13
  400dea:	41 5e                	pop    %r14
  400dec:	41 5f                	pop    %r15
  400dee:	e9 dd f7 ff ff       	jmpq   4005d0 <merge>
  400df3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400df8:	8d 04 1a             	lea    (%rdx,%rbx,1),%eax
  400dfb:	41 89 c5             	mov    %eax,%r13d
  400dfe:	41 c1 ed 1f          	shr    $0x1f,%r13d
  400e02:	41 01 c5             	add    %eax,%r13d
  400e05:	41 d1 fd             	sar    %r13d
  400e08:	44 39 ea             	cmp    %r13d,%edx
  400e0b:	0f 8c a7 00 00 00    	jl     400eb8 <m_sort+0x128>
  400e11:	41 83 c5 01          	add    $0x1,%r13d
  400e15:	44 39 eb             	cmp    %r13d,%ebx
  400e18:	7f 5e                	jg     400e78 <m_sort+0xe8>
  400e1a:	41 89 d8             	mov    %ebx,%r8d
  400e1d:	44 89 e9             	mov    %r13d,%ecx
  400e20:	44 89 fa             	mov    %r15d,%edx
  400e23:	4c 89 e6             	mov    %r12,%rsi
  400e26:	48 89 ef             	mov    %rbp,%rdi
  400e29:	83 c3 01             	add    $0x1,%ebx
  400e2c:	e8 9f f7 ff ff       	callq  4005d0 <merge>
  400e31:	41 39 de             	cmp    %ebx,%r14d
  400e34:	7e 9c                	jle    400dd2 <m_sort+0x42>
  400e36:	41 8d 04 1e          	lea    (%r14,%rbx,1),%eax
  400e3a:	41 89 c5             	mov    %eax,%r13d
  400e3d:	41 c1 ed 1f          	shr    $0x1f,%r13d
  400e41:	41 01 c5             	add    %eax,%r13d
  400e44:	41 d1 fd             	sar    %r13d
  400e47:	44 39 eb             	cmp    %r13d,%ebx
  400e4a:	0f 8c e8 00 00 00    	jl     400f38 <m_sort+0x1a8>
  400e50:	41 83 c5 01          	add    $0x1,%r13d
  400e54:	45 39 ee             	cmp    %r13d,%r14d
  400e57:	0f 8f 9b 00 00 00    	jg     400ef8 <m_sort+0x168>
  400e5d:	45 89 f0             	mov    %r14d,%r8d
  400e60:	44 89 e9             	mov    %r13d,%ecx
  400e63:	89 da                	mov    %ebx,%edx
  400e65:	4c 89 e6             	mov    %r12,%rsi
  400e68:	48 89 ef             	mov    %rbp,%rdi
  400e6b:	e8 60 f7 ff ff       	callq  4005d0 <merge>
  400e70:	e9 5d ff ff ff       	jmpq   400dd2 <m_sort+0x42>
  400e75:	0f 1f 00             	nopl   (%rax)
  400e78:	42 8d 04 2b          	lea    (%rbx,%r13,1),%eax
  400e7c:	89 c2                	mov    %eax,%edx
  400e7e:	c1 ea 1f             	shr    $0x1f,%edx
  400e81:	01 d0                	add    %edx,%eax
  400e83:	d1 f8                	sar    %eax
  400e85:	41 39 c5             	cmp    %eax,%r13d
  400e88:	0f 8c c2 01 00 00    	jl     401050 <m_sort+0x2c0>
  400e8e:	83 c0 01             	add    $0x1,%eax
  400e91:	39 c3                	cmp    %eax,%ebx
  400e93:	0f 8f 97 01 00 00    	jg     401030 <m_sort+0x2a0>
  400e99:	41 89 d8             	mov    %ebx,%r8d
  400e9c:	89 c1                	mov    %eax,%ecx
  400e9e:	44 89 ea             	mov    %r13d,%edx
  400ea1:	4c 89 e6             	mov    %r12,%rsi
  400ea4:	48 89 ef             	mov    %rbp,%rdi
  400ea7:	e8 24 f7 ff ff       	callq  4005d0 <merge>
  400eac:	e9 69 ff ff ff       	jmpq   400e1a <m_sort+0x8a>
  400eb1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400eb8:	42 8d 04 2a          	lea    (%rdx,%r13,1),%eax
  400ebc:	89 c2                	mov    %eax,%edx
  400ebe:	c1 ea 1f             	shr    $0x1f,%edx
  400ec1:	01 d0                	add    %edx,%eax
  400ec3:	d1 f8                	sar    %eax
  400ec5:	41 39 c7             	cmp    %eax,%r15d
  400ec8:	0f 8c 42 01 00 00    	jl     401010 <m_sort+0x280>
  400ece:	83 c0 01             	add    $0x1,%eax
  400ed1:	41 39 c5             	cmp    %eax,%r13d
  400ed4:	0f 8f 16 01 00 00    	jg     400ff0 <m_sort+0x260>
  400eda:	45 89 e8             	mov    %r13d,%r8d
  400edd:	89 c1                	mov    %eax,%ecx
  400edf:	44 89 fa             	mov    %r15d,%edx
  400ee2:	4c 89 e6             	mov    %r12,%rsi
  400ee5:	48 89 ef             	mov    %rbp,%rdi
  400ee8:	e8 e3 f6 ff ff       	callq  4005d0 <merge>
  400eed:	e9 1f ff ff ff       	jmpq   400e11 <m_sort+0x81>
  400ef2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400ef8:	43 8d 04 2e          	lea    (%r14,%r13,1),%eax
  400efc:	89 c2                	mov    %eax,%edx
  400efe:	c1 ea 1f             	shr    $0x1f,%edx
  400f01:	01 d0                	add    %edx,%eax
  400f03:	d1 f8                	sar    %eax
  400f05:	41 39 c5             	cmp    %eax,%r13d
  400f08:	0f 8c c2 00 00 00    	jl     400fd0 <m_sort+0x240>
  400f0e:	83 c0 01             	add    $0x1,%eax
  400f11:	41 39 c6             	cmp    %eax,%r14d
  400f14:	0f 8f 96 00 00 00    	jg     400fb0 <m_sort+0x220>
  400f1a:	45 89 f0             	mov    %r14d,%r8d
  400f1d:	89 c1                	mov    %eax,%ecx
  400f1f:	44 89 ea             	mov    %r13d,%edx
  400f22:	4c 89 e6             	mov    %r12,%rsi
  400f25:	48 89 ef             	mov    %rbp,%rdi
  400f28:	e8 a3 f6 ff ff       	callq  4005d0 <merge>
  400f2d:	e9 2b ff ff ff       	jmpq   400e5d <m_sort+0xcd>
  400f32:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400f38:	42 8d 04 2b          	lea    (%rbx,%r13,1),%eax
  400f3c:	89 c2                	mov    %eax,%edx
  400f3e:	c1 ea 1f             	shr    $0x1f,%edx
  400f41:	01 d0                	add    %edx,%eax
  400f43:	d1 f8                	sar    %eax
  400f45:	39 c3                	cmp    %eax,%ebx
  400f47:	7c 47                	jl     400f90 <m_sort+0x200>
  400f49:	83 c0 01             	add    $0x1,%eax
  400f4c:	41 39 c5             	cmp    %eax,%r13d
  400f4f:	7f 1f                	jg     400f70 <m_sort+0x1e0>
  400f51:	45 89 e8             	mov    %r13d,%r8d
  400f54:	89 c1                	mov    %eax,%ecx
  400f56:	89 da                	mov    %ebx,%edx
  400f58:	4c 89 e6             	mov    %r12,%rsi
  400f5b:	48 89 ef             	mov    %rbp,%rdi
  400f5e:	e8 6d f6 ff ff       	callq  4005d0 <merge>
  400f63:	e9 e8 fe ff ff       	jmpq   400e50 <m_sort+0xc0>
  400f68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400f6f:	00 
  400f70:	89 c2                	mov    %eax,%edx
  400f72:	44 89 e9             	mov    %r13d,%ecx
  400f75:	4c 89 e6             	mov    %r12,%rsi
  400f78:	48 89 ef             	mov    %rbp,%rdi
  400f7b:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  400f7f:	e8 bc fb ff ff       	callq  400b40 <m_sort.part.0>
  400f84:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400f88:	eb c7                	jmp    400f51 <m_sort+0x1c1>
  400f8a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400f90:	89 c1                	mov    %eax,%ecx
  400f92:	89 da                	mov    %ebx,%edx
  400f94:	4c 89 e6             	mov    %r12,%rsi
  400f97:	48 89 ef             	mov    %rbp,%rdi
  400f9a:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  400f9e:	e8 9d fb ff ff       	callq  400b40 <m_sort.part.0>
  400fa3:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400fa7:	eb a0                	jmp    400f49 <m_sort+0x1b9>
  400fa9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400fb0:	89 c2                	mov    %eax,%edx
  400fb2:	44 89 f1             	mov    %r14d,%ecx
  400fb5:	4c 89 e6             	mov    %r12,%rsi
  400fb8:	48 89 ef             	mov    %rbp,%rdi
  400fbb:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  400fbf:	e8 7c fb ff ff       	callq  400b40 <m_sort.part.0>
  400fc4:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400fc8:	e9 4d ff ff ff       	jmpq   400f1a <m_sort+0x18a>
  400fcd:	0f 1f 00             	nopl   (%rax)
  400fd0:	89 c1                	mov    %eax,%ecx
  400fd2:	44 89 ea             	mov    %r13d,%edx
  400fd5:	4c 89 e6             	mov    %r12,%rsi
  400fd8:	48 89 ef             	mov    %rbp,%rdi
  400fdb:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  400fdf:	e8 5c fb ff ff       	callq  400b40 <m_sort.part.0>
  400fe4:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400fe8:	e9 21 ff ff ff       	jmpq   400f0e <m_sort+0x17e>
  400fed:	0f 1f 00             	nopl   (%rax)
  400ff0:	89 c2                	mov    %eax,%edx
  400ff2:	44 89 e9             	mov    %r13d,%ecx
  400ff5:	4c 89 e6             	mov    %r12,%rsi
  400ff8:	48 89 ef             	mov    %rbp,%rdi
  400ffb:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  400fff:	e8 3c fb ff ff       	callq  400b40 <m_sort.part.0>
  401004:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401008:	e9 cd fe ff ff       	jmpq   400eda <m_sort+0x14a>
  40100d:	0f 1f 00             	nopl   (%rax)
  401010:	89 c1                	mov    %eax,%ecx
  401012:	44 89 fa             	mov    %r15d,%edx
  401015:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401019:	e8 22 fb ff ff       	callq  400b40 <m_sort.part.0>
  40101e:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401022:	e9 a7 fe ff ff       	jmpq   400ece <m_sort+0x13e>
  401027:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40102e:	00 00 
  401030:	89 c2                	mov    %eax,%edx
  401032:	89 d9                	mov    %ebx,%ecx
  401034:	4c 89 e6             	mov    %r12,%rsi
  401037:	48 89 ef             	mov    %rbp,%rdi
  40103a:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40103e:	e8 fd fa ff ff       	callq  400b40 <m_sort.part.0>
  401043:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401047:	e9 4d fe ff ff       	jmpq   400e99 <m_sort+0x109>
  40104c:	0f 1f 40 00          	nopl   0x0(%rax)
  401050:	89 c1                	mov    %eax,%ecx
  401052:	44 89 ea             	mov    %r13d,%edx
  401055:	4c 89 e6             	mov    %r12,%rsi
  401058:	48 89 ef             	mov    %rbp,%rdi
  40105b:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40105f:	e8 dc fa ff ff       	callq  400b40 <m_sort.part.0>
  401064:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401068:	e9 21 fe ff ff       	jmpq   400e8e <m_sort+0xfe>
  40106d:	0f 1f 00             	nopl   (%rax)

0000000000401070 <mergeSort>:
  401070:	41 57                	push   %r15
  401072:	41 56                	push   %r14
  401074:	41 55                	push   %r13
  401076:	41 54                	push   %r12
  401078:	55                   	push   %rbp
  401079:	53                   	push   %rbx
  40107a:	8d 5a ff             	lea    -0x1(%rdx),%ebx
  40107d:	48 83 ec 18          	sub    $0x18,%rsp
  401081:	85 db                	test   %ebx,%ebx
  401083:	0f 8e 9f 00 00 00    	jle    401128 <mergeSort+0xb8>
  401089:	41 89 dc             	mov    %ebx,%r12d
  40108c:	49 89 f6             	mov    %rsi,%r14
  40108f:	49 89 fd             	mov    %rdi,%r13
  401092:	41 d1 fc             	sar    %r12d
  401095:	bd 01 00 00 00       	mov    $0x1,%ebp
  40109a:	75 24                	jne    4010c0 <mergeSort+0x50>
  40109c:	48 83 c4 18          	add    $0x18,%rsp
  4010a0:	41 89 d8             	mov    %ebx,%r8d
  4010a3:	89 e9                	mov    %ebp,%ecx
  4010a5:	5b                   	pop    %rbx
  4010a6:	4c 89 f6             	mov    %r14,%rsi
  4010a9:	4c 89 ef             	mov    %r13,%rdi
  4010ac:	31 d2                	xor    %edx,%edx
  4010ae:	5d                   	pop    %rbp
  4010af:	41 5c                	pop    %r12
  4010b1:	41 5d                	pop    %r13
  4010b3:	41 5e                	pop    %r14
  4010b5:	41 5f                	pop    %r15
  4010b7:	e9 14 f5 ff ff       	jmpq   4005d0 <merge>
  4010bc:	0f 1f 40 00          	nopl   0x0(%rax)
  4010c0:	89 dd                	mov    %ebx,%ebp
  4010c2:	c1 fd 02             	sar    $0x2,%ebp
  4010c5:	85 ed                	test   %ebp,%ebp
  4010c7:	0f 85 2b 01 00 00    	jne    4011f8 <mergeSort+0x188>
  4010cd:	83 c5 01             	add    $0x1,%ebp
  4010d0:	41 39 ec             	cmp    %ebp,%r12d
  4010d3:	0f 8f e7 00 00 00    	jg     4011c0 <mergeSort+0x150>
  4010d9:	89 e9                	mov    %ebp,%ecx
  4010db:	41 8d 6c 24 01       	lea    0x1(%r12),%ebp
  4010e0:	31 d2                	xor    %edx,%edx
  4010e2:	45 89 e0             	mov    %r12d,%r8d
  4010e5:	4c 89 f6             	mov    %r14,%rsi
  4010e8:	4c 89 ef             	mov    %r13,%rdi
  4010eb:	e8 e0 f4 ff ff       	callq  4005d0 <merge>
  4010f0:	39 eb                	cmp    %ebp,%ebx
  4010f2:	7e a8                	jle    40109c <mergeSort+0x2c>
  4010f4:	44 8d 24 2b          	lea    (%rbx,%rbp,1),%r12d
  4010f8:	41 d1 fc             	sar    %r12d
  4010fb:	44 39 e5             	cmp    %r12d,%ebp
  4010fe:	0f 8c 7c 00 00 00    	jl     401180 <mergeSort+0x110>
  401104:	41 83 c4 01          	add    $0x1,%r12d
  401108:	44 39 e3             	cmp    %r12d,%ebx
  40110b:	7f 33                	jg     401140 <mergeSort+0xd0>
  40110d:	41 89 d8             	mov    %ebx,%r8d
  401110:	44 89 e1             	mov    %r12d,%ecx
  401113:	89 ea                	mov    %ebp,%edx
  401115:	4c 89 f6             	mov    %r14,%rsi
  401118:	4c 89 ef             	mov    %r13,%rdi
  40111b:	e8 b0 f4 ff ff       	callq  4005d0 <merge>
  401120:	e9 77 ff ff ff       	jmpq   40109c <mergeSort+0x2c>
  401125:	0f 1f 00             	nopl   (%rax)
  401128:	48 83 c4 18          	add    $0x18,%rsp
  40112c:	5b                   	pop    %rbx
  40112d:	5d                   	pop    %rbp
  40112e:	41 5c                	pop    %r12
  401130:	41 5d                	pop    %r13
  401132:	41 5e                	pop    %r14
  401134:	41 5f                	pop    %r15
  401136:	c3                   	retq   
  401137:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40113e:	00 00 
  401140:	42 8d 04 23          	lea    (%rbx,%r12,1),%eax
  401144:	41 89 c7             	mov    %eax,%r15d
  401147:	41 c1 ef 1f          	shr    $0x1f,%r15d
  40114b:	41 01 c7             	add    %eax,%r15d
  40114e:	41 d1 ff             	sar    %r15d
  401151:	45 39 fc             	cmp    %r15d,%r12d
  401154:	0f 8c d6 00 00 00    	jl     401230 <mergeSort+0x1c0>
  40115a:	41 83 c7 01          	add    $0x1,%r15d
  40115e:	44 39 fb             	cmp    %r15d,%ebx
  401161:	0f 8f 71 03 00 00    	jg     4014d8 <mergeSort+0x468>
  401167:	41 89 d8             	mov    %ebx,%r8d
  40116a:	44 89 f9             	mov    %r15d,%ecx
  40116d:	44 89 e2             	mov    %r12d,%edx
  401170:	4c 89 f6             	mov    %r14,%rsi
  401173:	4c 89 ef             	mov    %r13,%rdi
  401176:	e8 55 f4 ff ff       	callq  4005d0 <merge>
  40117b:	eb 90                	jmp    40110d <mergeSort+0x9d>
  40117d:	0f 1f 00             	nopl   (%rax)
  401180:	46 8d 7c 25 00       	lea    0x0(%rbp,%r12,1),%r15d
  401185:	41 d1 ff             	sar    %r15d
  401188:	44 39 fd             	cmp    %r15d,%ebp
  40118b:	0f 8c e7 02 00 00    	jl     401478 <mergeSort+0x408>
  401191:	41 83 c7 01          	add    $0x1,%r15d
  401195:	45 39 fc             	cmp    %r15d,%r12d
  401198:	0f 8f 72 02 00 00    	jg     401410 <mergeSort+0x3a0>
  40119e:	45 89 e0             	mov    %r12d,%r8d
  4011a1:	44 89 f9             	mov    %r15d,%ecx
  4011a4:	89 ea                	mov    %ebp,%edx
  4011a6:	4c 89 f6             	mov    %r14,%rsi
  4011a9:	4c 89 ef             	mov    %r13,%rdi
  4011ac:	e8 1f f4 ff ff       	callq  4005d0 <merge>
  4011b1:	e9 4e ff ff ff       	jmpq   401104 <mergeSort+0x94>
  4011b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4011bd:	00 00 00 
  4011c0:	45 8d 3c 2c          	lea    (%r12,%rbp,1),%r15d
  4011c4:	41 d1 ff             	sar    %r15d
  4011c7:	44 39 fd             	cmp    %r15d,%ebp
  4011ca:	0f 8c e0 01 00 00    	jl     4013b0 <mergeSort+0x340>
  4011d0:	41 83 c7 01          	add    $0x1,%r15d
  4011d4:	45 39 fc             	cmp    %r15d,%r12d
  4011d7:	0f 8f 73 01 00 00    	jg     401350 <mergeSort+0x2e0>
  4011dd:	45 89 e0             	mov    %r12d,%r8d
  4011e0:	44 89 f9             	mov    %r15d,%ecx
  4011e3:	89 ea                	mov    %ebp,%edx
  4011e5:	4c 89 f6             	mov    %r14,%rsi
  4011e8:	4c 89 ef             	mov    %r13,%rdi
  4011eb:	e8 e0 f3 ff ff       	callq  4005d0 <merge>
  4011f0:	e9 e4 fe ff ff       	jmpq   4010d9 <mergeSort+0x69>
  4011f5:	0f 1f 00             	nopl   (%rax)
  4011f8:	41 89 df             	mov    %ebx,%r15d
  4011fb:	41 c1 ff 03          	sar    $0x3,%r15d
  4011ff:	45 85 ff             	test   %r15d,%r15d
  401202:	0f 85 f0 00 00 00    	jne    4012f8 <mergeSort+0x288>
  401208:	41 83 c7 01          	add    $0x1,%r15d
  40120c:	44 39 fd             	cmp    %r15d,%ebp
  40120f:	0f 8f 83 00 00 00    	jg     401298 <mergeSort+0x228>
  401215:	41 89 e8             	mov    %ebp,%r8d
  401218:	44 89 f9             	mov    %r15d,%ecx
  40121b:	31 d2                	xor    %edx,%edx
  40121d:	4c 89 f6             	mov    %r14,%rsi
  401220:	4c 89 ef             	mov    %r13,%rdi
  401223:	e8 a8 f3 ff ff       	callq  4005d0 <merge>
  401228:	e9 a0 fe ff ff       	jmpq   4010cd <mergeSort+0x5d>
  40122d:	0f 1f 00             	nopl   (%rax)
  401230:	43 8d 04 3c          	lea    (%r12,%r15,1),%eax
  401234:	89 c2                	mov    %eax,%edx
  401236:	c1 ea 1f             	shr    $0x1f,%edx
  401239:	01 d0                	add    %edx,%eax
  40123b:	d1 f8                	sar    %eax
  40123d:	41 39 c4             	cmp    %eax,%r12d
  401240:	7d 18                	jge    40125a <mergeSort+0x1ea>
  401242:	89 c1                	mov    %eax,%ecx
  401244:	44 89 e2             	mov    %r12d,%edx
  401247:	4c 89 f6             	mov    %r14,%rsi
  40124a:	4c 89 ef             	mov    %r13,%rdi
  40124d:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401251:	e8 ea f8 ff ff       	callq  400b40 <m_sort.part.0>
  401256:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40125a:	83 c0 01             	add    $0x1,%eax
  40125d:	41 39 c7             	cmp    %eax,%r15d
  401260:	7e 18                	jle    40127a <mergeSort+0x20a>
  401262:	89 c2                	mov    %eax,%edx
  401264:	44 89 f9             	mov    %r15d,%ecx
  401267:	4c 89 f6             	mov    %r14,%rsi
  40126a:	4c 89 ef             	mov    %r13,%rdi
  40126d:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401271:	e8 ca f8 ff ff       	callq  400b40 <m_sort.part.0>
  401276:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40127a:	45 89 f8             	mov    %r15d,%r8d
  40127d:	89 c1                	mov    %eax,%ecx
  40127f:	44 89 e2             	mov    %r12d,%edx
  401282:	4c 89 f6             	mov    %r14,%rsi
  401285:	4c 89 ef             	mov    %r13,%rdi
  401288:	e8 43 f3 ff ff       	callq  4005d0 <merge>
  40128d:	e9 c8 fe ff ff       	jmpq   40115a <mergeSort+0xea>
  401292:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401298:	42 8d 44 3d 00       	lea    0x0(%rbp,%r15,1),%eax
  40129d:	d1 f8                	sar    %eax
  40129f:	41 39 c7             	cmp    %eax,%r15d
  4012a2:	7d 18                	jge    4012bc <mergeSort+0x24c>
  4012a4:	89 c1                	mov    %eax,%ecx
  4012a6:	44 89 fa             	mov    %r15d,%edx
  4012a9:	4c 89 f6             	mov    %r14,%rsi
  4012ac:	4c 89 ef             	mov    %r13,%rdi
  4012af:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4012b3:	e8 88 f8 ff ff       	callq  400b40 <m_sort.part.0>
  4012b8:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4012bc:	83 c0 01             	add    $0x1,%eax
  4012bf:	39 c5                	cmp    %eax,%ebp
  4012c1:	7e 17                	jle    4012da <mergeSort+0x26a>
  4012c3:	89 c2                	mov    %eax,%edx
  4012c5:	89 e9                	mov    %ebp,%ecx
  4012c7:	4c 89 f6             	mov    %r14,%rsi
  4012ca:	4c 89 ef             	mov    %r13,%rdi
  4012cd:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4012d1:	e8 6a f8 ff ff       	callq  400b40 <m_sort.part.0>
  4012d6:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4012da:	41 89 e8             	mov    %ebp,%r8d
  4012dd:	89 c1                	mov    %eax,%ecx
  4012df:	44 89 fa             	mov    %r15d,%edx
  4012e2:	4c 89 f6             	mov    %r14,%rsi
  4012e5:	4c 89 ef             	mov    %r13,%rdi
  4012e8:	e8 e3 f2 ff ff       	callq  4005d0 <merge>
  4012ed:	e9 23 ff ff ff       	jmpq   401215 <mergeSort+0x1a5>
  4012f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4012f8:	89 d8                	mov    %ebx,%eax
  4012fa:	c1 f8 04             	sar    $0x4,%eax
  4012fd:	85 c0                	test   %eax,%eax
  4012ff:	74 11                	je     401312 <mergeSort+0x2a2>
  401301:	89 c1                	mov    %eax,%ecx
  401303:	31 d2                	xor    %edx,%edx
  401305:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401309:	e8 32 f8 ff ff       	callq  400b40 <m_sort.part.0>
  40130e:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401312:	83 c0 01             	add    $0x1,%eax
  401315:	41 39 c7             	cmp    %eax,%r15d
  401318:	7e 18                	jle    401332 <mergeSort+0x2c2>
  40131a:	89 c2                	mov    %eax,%edx
  40131c:	44 89 f9             	mov    %r15d,%ecx
  40131f:	4c 89 f6             	mov    %r14,%rsi
  401322:	4c 89 ef             	mov    %r13,%rdi
  401325:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401329:	e8 12 f8 ff ff       	callq  400b40 <m_sort.part.0>
  40132e:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401332:	45 89 f8             	mov    %r15d,%r8d
  401335:	89 c1                	mov    %eax,%ecx
  401337:	31 d2                	xor    %edx,%edx
  401339:	4c 89 f6             	mov    %r14,%rsi
  40133c:	4c 89 ef             	mov    %r13,%rdi
  40133f:	e8 8c f2 ff ff       	callq  4005d0 <merge>
  401344:	e9 bf fe ff ff       	jmpq   401208 <mergeSort+0x198>
  401349:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401350:	43 8d 04 3c          	lea    (%r12,%r15,1),%eax
  401354:	d1 f8                	sar    %eax
  401356:	41 39 c7             	cmp    %eax,%r15d
  401359:	7d 18                	jge    401373 <mergeSort+0x303>
  40135b:	89 c1                	mov    %eax,%ecx
  40135d:	44 89 fa             	mov    %r15d,%edx
  401360:	4c 89 f6             	mov    %r14,%rsi
  401363:	4c 89 ef             	mov    %r13,%rdi
  401366:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40136a:	e8 d1 f7 ff ff       	callq  400b40 <m_sort.part.0>
  40136f:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401373:	83 c0 01             	add    $0x1,%eax
  401376:	41 39 c4             	cmp    %eax,%r12d
  401379:	7e 18                	jle    401393 <mergeSort+0x323>
  40137b:	89 c2                	mov    %eax,%edx
  40137d:	44 89 e1             	mov    %r12d,%ecx
  401380:	4c 89 f6             	mov    %r14,%rsi
  401383:	4c 89 ef             	mov    %r13,%rdi
  401386:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40138a:	e8 b1 f7 ff ff       	callq  400b40 <m_sort.part.0>
  40138f:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401393:	45 89 e0             	mov    %r12d,%r8d
  401396:	89 c1                	mov    %eax,%ecx
  401398:	44 89 fa             	mov    %r15d,%edx
  40139b:	4c 89 f6             	mov    %r14,%rsi
  40139e:	4c 89 ef             	mov    %r13,%rdi
  4013a1:	e8 2a f2 ff ff       	callq  4005d0 <merge>
  4013a6:	e9 32 fe ff ff       	jmpq   4011dd <mergeSort+0x16d>
  4013ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4013b0:	42 8d 44 3d 00       	lea    0x0(%rbp,%r15,1),%eax
  4013b5:	d1 f8                	sar    %eax
  4013b7:	39 c5                	cmp    %eax,%ebp
  4013b9:	7d 17                	jge    4013d2 <mergeSort+0x362>
  4013bb:	89 c1                	mov    %eax,%ecx
  4013bd:	89 ea                	mov    %ebp,%edx
  4013bf:	4c 89 f6             	mov    %r14,%rsi
  4013c2:	4c 89 ef             	mov    %r13,%rdi
  4013c5:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4013c9:	e8 72 f7 ff ff       	callq  400b40 <m_sort.part.0>
  4013ce:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4013d2:	83 c0 01             	add    $0x1,%eax
  4013d5:	41 39 c7             	cmp    %eax,%r15d
  4013d8:	7e 18                	jle    4013f2 <mergeSort+0x382>
  4013da:	89 c2                	mov    %eax,%edx
  4013dc:	44 89 f9             	mov    %r15d,%ecx
  4013df:	4c 89 f6             	mov    %r14,%rsi
  4013e2:	4c 89 ef             	mov    %r13,%rdi
  4013e5:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4013e9:	e8 52 f7 ff ff       	callq  400b40 <m_sort.part.0>
  4013ee:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4013f2:	45 89 f8             	mov    %r15d,%r8d
  4013f5:	89 c1                	mov    %eax,%ecx
  4013f7:	89 ea                	mov    %ebp,%edx
  4013f9:	4c 89 f6             	mov    %r14,%rsi
  4013fc:	4c 89 ef             	mov    %r13,%rdi
  4013ff:	e8 cc f1 ff ff       	callq  4005d0 <merge>
  401404:	e9 c7 fd ff ff       	jmpq   4011d0 <mergeSort+0x160>
  401409:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401410:	43 8d 04 3c          	lea    (%r12,%r15,1),%eax
  401414:	89 c2                	mov    %eax,%edx
  401416:	c1 ea 1f             	shr    $0x1f,%edx
  401419:	01 d0                	add    %edx,%eax
  40141b:	d1 f8                	sar    %eax
  40141d:	41 39 c7             	cmp    %eax,%r15d
  401420:	7d 18                	jge    40143a <mergeSort+0x3ca>
  401422:	89 c1                	mov    %eax,%ecx
  401424:	44 89 fa             	mov    %r15d,%edx
  401427:	4c 89 f6             	mov    %r14,%rsi
  40142a:	4c 89 ef             	mov    %r13,%rdi
  40142d:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401431:	e8 0a f7 ff ff       	callq  400b40 <m_sort.part.0>
  401436:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40143a:	83 c0 01             	add    $0x1,%eax
  40143d:	41 39 c4             	cmp    %eax,%r12d
  401440:	7e 18                	jle    40145a <mergeSort+0x3ea>
  401442:	89 c2                	mov    %eax,%edx
  401444:	44 89 e1             	mov    %r12d,%ecx
  401447:	4c 89 f6             	mov    %r14,%rsi
  40144a:	4c 89 ef             	mov    %r13,%rdi
  40144d:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401451:	e8 ea f6 ff ff       	callq  400b40 <m_sort.part.0>
  401456:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40145a:	45 89 e0             	mov    %r12d,%r8d
  40145d:	89 c1                	mov    %eax,%ecx
  40145f:	44 89 fa             	mov    %r15d,%edx
  401462:	4c 89 f6             	mov    %r14,%rsi
  401465:	4c 89 ef             	mov    %r13,%rdi
  401468:	e8 63 f1 ff ff       	callq  4005d0 <merge>
  40146d:	e9 2c fd ff ff       	jmpq   40119e <mergeSort+0x12e>
  401472:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401478:	42 8d 44 3d 00       	lea    0x0(%rbp,%r15,1),%eax
  40147d:	d1 f8                	sar    %eax
  40147f:	39 c5                	cmp    %eax,%ebp
  401481:	7d 17                	jge    40149a <mergeSort+0x42a>
  401483:	89 c1                	mov    %eax,%ecx
  401485:	89 ea                	mov    %ebp,%edx
  401487:	4c 89 f6             	mov    %r14,%rsi
  40148a:	4c 89 ef             	mov    %r13,%rdi
  40148d:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401491:	e8 aa f6 ff ff       	callq  400b40 <m_sort.part.0>
  401496:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40149a:	83 c0 01             	add    $0x1,%eax
  40149d:	41 39 c7             	cmp    %eax,%r15d
  4014a0:	7e 18                	jle    4014ba <mergeSort+0x44a>
  4014a2:	89 c2                	mov    %eax,%edx
  4014a4:	44 89 f9             	mov    %r15d,%ecx
  4014a7:	4c 89 f6             	mov    %r14,%rsi
  4014aa:	4c 89 ef             	mov    %r13,%rdi
  4014ad:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4014b1:	e8 8a f6 ff ff       	callq  400b40 <m_sort.part.0>
  4014b6:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4014ba:	45 89 f8             	mov    %r15d,%r8d
  4014bd:	89 c1                	mov    %eax,%ecx
  4014bf:	89 ea                	mov    %ebp,%edx
  4014c1:	4c 89 f6             	mov    %r14,%rsi
  4014c4:	4c 89 ef             	mov    %r13,%rdi
  4014c7:	e8 04 f1 ff ff       	callq  4005d0 <merge>
  4014cc:	e9 c0 fc ff ff       	jmpq   401191 <mergeSort+0x121>
  4014d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4014d8:	42 8d 04 3b          	lea    (%rbx,%r15,1),%eax
  4014dc:	89 c2                	mov    %eax,%edx
  4014de:	c1 ea 1f             	shr    $0x1f,%edx
  4014e1:	01 d0                	add    %edx,%eax
  4014e3:	d1 f8                	sar    %eax
  4014e5:	41 39 c7             	cmp    %eax,%r15d
  4014e8:	7d 18                	jge    401502 <mergeSort+0x492>
  4014ea:	89 c1                	mov    %eax,%ecx
  4014ec:	44 89 fa             	mov    %r15d,%edx
  4014ef:	4c 89 f6             	mov    %r14,%rsi
  4014f2:	4c 89 ef             	mov    %r13,%rdi
  4014f5:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4014f9:	e8 42 f6 ff ff       	callq  400b40 <m_sort.part.0>
  4014fe:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401502:	83 c0 01             	add    $0x1,%eax
  401505:	39 c3                	cmp    %eax,%ebx
  401507:	7e 17                	jle    401520 <mergeSort+0x4b0>
  401509:	89 c2                	mov    %eax,%edx
  40150b:	89 d9                	mov    %ebx,%ecx
  40150d:	4c 89 f6             	mov    %r14,%rsi
  401510:	4c 89 ef             	mov    %r13,%rdi
  401513:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401517:	e8 24 f6 ff ff       	callq  400b40 <m_sort.part.0>
  40151c:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401520:	41 89 d8             	mov    %ebx,%r8d
  401523:	89 c1                	mov    %eax,%ecx
  401525:	44 89 fa             	mov    %r15d,%edx
  401528:	4c 89 f6             	mov    %r14,%rsi
  40152b:	4c 89 ef             	mov    %r13,%rdi
  40152e:	e8 9d f0 ff ff       	callq  4005d0 <merge>
  401533:	e9 2f fc ff ff       	jmpq   401167 <mergeSort+0xf7>
  401538:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40153f:	00 

0000000000401540 <__libc_csu_init>:
  401540:	41 57                	push   %r15
  401542:	41 56                	push   %r14
  401544:	41 89 ff             	mov    %edi,%r15d
  401547:	41 55                	push   %r13
  401549:	41 54                	push   %r12
  40154b:	4c 8d 25 be 08 20 00 	lea    0x2008be(%rip),%r12        # 601e10 <__frame_dummy_init_array_entry>
  401552:	55                   	push   %rbp
  401553:	48 8d 2d be 08 20 00 	lea    0x2008be(%rip),%rbp        # 601e18 <__init_array_end>
  40155a:	53                   	push   %rbx
  40155b:	49 89 f6             	mov    %rsi,%r14
  40155e:	49 89 d5             	mov    %rdx,%r13
  401561:	4c 29 e5             	sub    %r12,%rbp
  401564:	48 83 ec 08          	sub    $0x8,%rsp
  401568:	48 c1 fd 03          	sar    $0x3,%rbp
  40156c:	e8 7f ee ff ff       	callq  4003f0 <_init>
  401571:	48 85 ed             	test   %rbp,%rbp
  401574:	74 20                	je     401596 <__libc_csu_init+0x56>
  401576:	31 db                	xor    %ebx,%ebx
  401578:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40157f:	00 
  401580:	4c 89 ea             	mov    %r13,%rdx
  401583:	4c 89 f6             	mov    %r14,%rsi
  401586:	44 89 ff             	mov    %r15d,%edi
  401589:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40158d:	48 83 c3 01          	add    $0x1,%rbx
  401591:	48 39 eb             	cmp    %rbp,%rbx
  401594:	75 ea                	jne    401580 <__libc_csu_init+0x40>
  401596:	48 83 c4 08          	add    $0x8,%rsp
  40159a:	5b                   	pop    %rbx
  40159b:	5d                   	pop    %rbp
  40159c:	41 5c                	pop    %r12
  40159e:	41 5d                	pop    %r13
  4015a0:	41 5e                	pop    %r14
  4015a2:	41 5f                	pop    %r15
  4015a4:	c3                   	retq   
  4015a5:	90                   	nop
  4015a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4015ad:	00 00 00 

00000000004015b0 <__libc_csu_fini>:
  4015b0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000004015b4 <_fini>:
  4015b4:	48 83 ec 08          	sub    $0x8,%rsp
  4015b8:	48 83 c4 08          	add    $0x8,%rsp
  4015bc:	c3                   	retq   
