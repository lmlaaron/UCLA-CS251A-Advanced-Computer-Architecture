
sieve:     file format elf64-x86-64


Disassembly of section .init:

0000000000400428 <_init>:
  400428:	48 83 ec 08          	sub    $0x8,%rsp
  40042c:	48 8b 05 c5 0b 20 00 	mov    0x200bc5(%rip),%rax        # 600ff8 <_DYNAMIC+0x1d0>
  400433:	48 85 c0             	test   %rax,%rax
  400436:	74 05                	je     40043d <_init+0x15>
  400438:	e8 53 00 00 00       	callq  400490 <__printf_chk@plt+0x10>
  40043d:	48 83 c4 08          	add    $0x8,%rsp
  400441:	c3                   	retq   

Disassembly of section .plt:

0000000000400450 <__libc_start_main@plt-0x10>:
  400450:	ff 35 b2 0b 20 00    	pushq  0x200bb2(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400456:	ff 25 b4 0b 20 00    	jmpq   *0x200bb4(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40045c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400460 <__libc_start_main@plt>:
  400460:	ff 25 b2 0b 20 00    	jmpq   *0x200bb2(%rip)        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400466:	68 00 00 00 00       	pushq  $0x0
  40046b:	e9 e0 ff ff ff       	jmpq   400450 <_init+0x28>

0000000000400470 <malloc@plt>:
  400470:	ff 25 aa 0b 20 00    	jmpq   *0x200baa(%rip)        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400476:	68 01 00 00 00       	pushq  $0x1
  40047b:	e9 d0 ff ff ff       	jmpq   400450 <_init+0x28>

0000000000400480 <__printf_chk@plt>:
  400480:	ff 25 a2 0b 20 00    	jmpq   *0x200ba2(%rip)        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400486:	68 02 00 00 00       	pushq  $0x2
  40048b:	e9 c0 ff ff ff       	jmpq   400450 <_init+0x28>

Disassembly of section .plt.got:

0000000000400490 <.plt.got>:
  400490:	ff 25 62 0b 20 00    	jmpq   *0x200b62(%rip)        # 600ff8 <_DYNAMIC+0x1d0>
  400496:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000004004a0 <main>:
  4004a0:	48 83 ec 08          	sub    $0x8,%rsp
  4004a4:	bf 40 42 0f 00       	mov    $0xf4240,%edi
  4004a9:	e8 22 01 00 00       	callq  4005d0 <sieve>
  4004ae:	be 64 09 40 00       	mov    $0x400964,%esi
  4004b3:	89 c2                	mov    %eax,%edx
  4004b5:	bf 01 00 00 00       	mov    $0x1,%edi
  4004ba:	31 c0                	xor    %eax,%eax
  4004bc:	e8 bf ff ff ff       	callq  400480 <__printf_chk@plt>
  4004c1:	31 c0                	xor    %eax,%eax
  4004c3:	48 83 c4 08          	add    $0x8,%rsp
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
  4004df:	49 c7 c0 50 09 40 00 	mov    $0x400950,%r8
  4004e6:	48 c7 c1 e0 08 40 00 	mov    $0x4008e0,%rcx
  4004ed:	48 c7 c7 a0 04 40 00 	mov    $0x4004a0,%rdi
  4004f4:	e8 67 ff ff ff       	callq  400460 <__libc_start_main@plt>
  4004f9:	f4                   	hlt    
  4004fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400500 <deregister_tm_clones>:
  400500:	b8 47 10 60 00       	mov    $0x601047,%eax
  400505:	55                   	push   %rbp
  400506:	48 2d 40 10 60 00    	sub    $0x601040,%rax
  40050c:	48 83 f8 0e          	cmp    $0xe,%rax
  400510:	48 89 e5             	mov    %rsp,%rbp
  400513:	76 1b                	jbe    400530 <deregister_tm_clones+0x30>
  400515:	b8 00 00 00 00       	mov    $0x0,%eax
  40051a:	48 85 c0             	test   %rax,%rax
  40051d:	74 11                	je     400530 <deregister_tm_clones+0x30>
  40051f:	5d                   	pop    %rbp
  400520:	bf 40 10 60 00       	mov    $0x601040,%edi
  400525:	ff e0                	jmpq   *%rax
  400527:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40052e:	00 00 
  400530:	5d                   	pop    %rbp
  400531:	c3                   	retq   
  400532:	0f 1f 40 00          	nopl   0x0(%rax)
  400536:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40053d:	00 00 00 

0000000000400540 <register_tm_clones>:
  400540:	be 40 10 60 00       	mov    $0x601040,%esi
  400545:	55                   	push   %rbp
  400546:	48 81 ee 40 10 60 00 	sub    $0x601040,%rsi
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
  40056e:	bf 40 10 60 00       	mov    $0x601040,%edi
  400573:	ff e0                	jmpq   *%rax
  400575:	0f 1f 00             	nopl   (%rax)
  400578:	5d                   	pop    %rbp
  400579:	c3                   	retq   
  40057a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400580 <__do_global_dtors_aux>:
  400580:	80 3d b9 0a 20 00 00 	cmpb   $0x0,0x200ab9(%rip)        # 601040 <__TMC_END__>
  400587:	75 11                	jne    40059a <__do_global_dtors_aux+0x1a>
  400589:	55                   	push   %rbp
  40058a:	48 89 e5             	mov    %rsp,%rbp
  40058d:	e8 6e ff ff ff       	callq  400500 <deregister_tm_clones>
  400592:	5d                   	pop    %rbp
  400593:	c6 05 a6 0a 20 00 01 	movb   $0x1,0x200aa6(%rip)        # 601040 <__TMC_END__>
  40059a:	f3 c3                	repz retq 
  40059c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005a0 <frame_dummy>:
  4005a0:	bf 20 0e 60 00       	mov    $0x600e20,%edi
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

00000000004005d0 <sieve>:
  4005d0:	53                   	push   %rbx
  4005d1:	48 63 ff             	movslq %edi,%rdi
  4005d4:	48 89 fb             	mov    %rdi,%rbx
  4005d7:	48 83 c7 01          	add    $0x1,%rdi
  4005db:	e8 90 fe ff ff       	callq  400470 <malloc@plt>
  4005e0:	83 fb 03             	cmp    $0x3,%ebx
  4005e3:	bf 02 00 00 00       	mov    $0x2,%edi
  4005e8:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  4005ee:	be 02 00 00 00       	mov    $0x2,%esi
  4005f3:	0f 8e ce 02 00 00    	jle    4008c7 <sieve+0x2f7>
  4005f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400600:	80 3c 38 00          	cmpb   $0x0,(%rax,%rdi,1)
  400604:	75 1e                	jne    400624 <sieve+0x54>
  400606:	44 39 c3             	cmp    %r8d,%ebx
  400609:	44 89 c1             	mov    %r8d,%ecx
  40060c:	7c 16                	jl     400624 <sieve+0x54>
  40060e:	49 63 d0             	movslq %r8d,%rdx
  400611:	48 01 c2             	add    %rax,%rdx
  400614:	0f 1f 40 00          	nopl   0x0(%rax)
  400618:	01 f1                	add    %esi,%ecx
  40061a:	c6 02 01             	movb   $0x1,(%rdx)
  40061d:	48 01 fa             	add    %rdi,%rdx
  400620:	39 cb                	cmp    %ecx,%ebx
  400622:	7d f4                	jge    400618 <sieve+0x48>
  400624:	83 c6 01             	add    $0x1,%esi
  400627:	41 83 c0 02          	add    $0x2,%r8d
  40062b:	48 83 c7 01          	add    $0x1,%rdi
  40062f:	89 f2                	mov    %esi,%edx
  400631:	0f af d6             	imul   %esi,%edx
  400634:	39 d3                	cmp    %edx,%ebx
  400636:	7d c8                	jge    400600 <sieve+0x30>
  400638:	48 8d 48 02          	lea    0x2(%rax),%rcx
  40063c:	44 8d 53 fe          	lea    -0x2(%rbx),%r10d
  400640:	49 89 c9             	mov    %rcx,%r9
  400643:	49 f7 d9             	neg    %r9
  400646:	41 83 e1 0f          	and    $0xf,%r9d
  40064a:	45 39 d1             	cmp    %r10d,%r9d
  40064d:	45 0f 47 ca          	cmova  %r10d,%r9d
  400651:	41 83 fa 12          	cmp    $0x12,%r10d
  400655:	0f 87 57 02 00 00    	ja     4008b2 <sieve+0x2e2>
  40065b:	45 89 d1             	mov    %r10d,%r9d
  40065e:	41 8d 79 02          	lea    0x2(%r9),%edi
  400662:	be 02 00 00 00       	mov    $0x2,%esi
  400667:	31 d2                	xor    %edx,%edx
  400669:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400670:	45 31 c0             	xor    %r8d,%r8d
  400673:	80 39 00             	cmpb   $0x0,(%rcx)
  400676:	41 0f 94 c0          	sete   %r8b
  40067a:	83 c6 01             	add    $0x1,%esi
  40067d:	48 83 c1 01          	add    $0x1,%rcx
  400681:	44 01 c2             	add    %r8d,%edx
  400684:	39 fe                	cmp    %edi,%esi
  400686:	75 e8                	jne    400670 <sieve+0xa0>
  400688:	45 39 ca             	cmp    %r9d,%r10d
  40068b:	0f 84 1d 02 00 00    	je     4008ae <sieve+0x2de>
  400691:	45 29 ca             	sub    %r9d,%r10d
  400694:	8d 73 fd             	lea    -0x3(%rbx),%esi
  400697:	45 89 cb             	mov    %r9d,%r11d
  40069a:	41 8d 4a f0          	lea    -0x10(%r10),%ecx
  40069e:	44 29 ce             	sub    %r9d,%esi
  4006a1:	c1 e9 04             	shr    $0x4,%ecx
  4006a4:	83 c1 01             	add    $0x1,%ecx
  4006a7:	41 89 c8             	mov    %ecx,%r8d
  4006aa:	41 c1 e0 04          	shl    $0x4,%r8d
  4006ae:	83 fe 0e             	cmp    $0xe,%esi
  4006b1:	0f 86 94 00 00 00    	jbe    40074b <sieve+0x17b>
  4006b7:	66 0f ef c9          	pxor   %xmm1,%xmm1
  4006bb:	4e 8d 4c 18 02       	lea    0x2(%rax,%r11,1),%r9
  4006c0:	31 f6                	xor    %esi,%esi
  4006c2:	66 0f ef e4          	pxor   %xmm4,%xmm4
  4006c6:	66 0f ef db          	pxor   %xmm3,%xmm3
  4006ca:	66 0f 6f 35 9e 02 00 	movdqa 0x29e(%rip),%xmm6        # 400970 <_IO_stdin_used+0x10>
  4006d1:	00 
  4006d2:	83 c6 01             	add    $0x1,%esi
  4006d5:	49 83 c1 10          	add    $0x10,%r9
  4006d9:	66 41 0f 6f 41 f0    	movdqa -0x10(%r9),%xmm0
  4006df:	39 f1                	cmp    %esi,%ecx
  4006e1:	66 0f 74 c4          	pcmpeqb %xmm4,%xmm0
  4006e5:	66 0f db c6          	pand   %xmm6,%xmm0
  4006e9:	66 0f 6f d0          	movdqa %xmm0,%xmm2
  4006ed:	66 0f 68 c4          	punpckhbw %xmm4,%xmm0
  4006f1:	66 0f 60 d4          	punpcklbw %xmm4,%xmm2
  4006f5:	66 0f 6f ea          	movdqa %xmm2,%xmm5
  4006f9:	66 0f 69 d3          	punpckhwd %xmm3,%xmm2
  4006fd:	66 0f 61 eb          	punpcklwd %xmm3,%xmm5
  400701:	66 0f fe cd          	paddd  %xmm5,%xmm1
  400705:	66 0f fe ca          	paddd  %xmm2,%xmm1
  400709:	66 0f 6f d0          	movdqa %xmm0,%xmm2
  40070d:	66 0f 69 c3          	punpckhwd %xmm3,%xmm0
  400711:	66 0f 61 d3          	punpcklwd %xmm3,%xmm2
  400715:	66 0f fe ca          	paddd  %xmm2,%xmm1
  400719:	66 0f fe c8          	paddd  %xmm0,%xmm1
  40071d:	77 b3                	ja     4006d2 <sieve+0x102>
  40071f:	66 0f 6f c1          	movdqa %xmm1,%xmm0
  400723:	44 01 c7             	add    %r8d,%edi
  400726:	66 0f 73 d8 08       	psrldq $0x8,%xmm0
  40072b:	66 0f fe c1          	paddd  %xmm1,%xmm0
  40072f:	66 0f 6f d0          	movdqa %xmm0,%xmm2
  400733:	66 0f 73 da 04       	psrldq $0x4,%xmm2
  400738:	66 0f fe c2          	paddd  %xmm2,%xmm0
  40073c:	66 0f 7e c1          	movd   %xmm0,%ecx
  400740:	01 ca                	add    %ecx,%edx
  400742:	45 39 c2             	cmp    %r8d,%r10d
  400745:	0f 84 63 01 00 00    	je     4008ae <sieve+0x2de>
  40074b:	48 63 cf             	movslq %edi,%rcx
  40074e:	80 3c 08 00          	cmpb   $0x0,(%rax,%rcx,1)
  400752:	0f 94 c1             	sete   %cl
  400755:	0f b6 c9             	movzbl %cl,%ecx
  400758:	01 ca                	add    %ecx,%edx
  40075a:	8d 4f 01             	lea    0x1(%rdi),%ecx
  40075d:	39 cb                	cmp    %ecx,%ebx
  40075f:	0f 8e 49 01 00 00    	jle    4008ae <sieve+0x2de>
  400765:	48 63 c9             	movslq %ecx,%rcx
  400768:	80 3c 08 00          	cmpb   $0x0,(%rax,%rcx,1)
  40076c:	0f 94 c1             	sete   %cl
  40076f:	0f b6 c9             	movzbl %cl,%ecx
  400772:	01 ca                	add    %ecx,%edx
  400774:	8d 4f 02             	lea    0x2(%rdi),%ecx
  400777:	39 cb                	cmp    %ecx,%ebx
  400779:	0f 8e 2f 01 00 00    	jle    4008ae <sieve+0x2de>
  40077f:	48 63 c9             	movslq %ecx,%rcx
  400782:	80 3c 08 00          	cmpb   $0x0,(%rax,%rcx,1)
  400786:	0f 94 c1             	sete   %cl
  400789:	0f b6 c9             	movzbl %cl,%ecx
  40078c:	01 ca                	add    %ecx,%edx
  40078e:	8d 4f 03             	lea    0x3(%rdi),%ecx
  400791:	39 cb                	cmp    %ecx,%ebx
  400793:	0f 8e 15 01 00 00    	jle    4008ae <sieve+0x2de>
  400799:	48 63 c9             	movslq %ecx,%rcx
  40079c:	80 3c 08 00          	cmpb   $0x0,(%rax,%rcx,1)
  4007a0:	0f 94 c1             	sete   %cl
  4007a3:	0f b6 c9             	movzbl %cl,%ecx
  4007a6:	01 ca                	add    %ecx,%edx
  4007a8:	8d 4f 04             	lea    0x4(%rdi),%ecx
  4007ab:	39 cb                	cmp    %ecx,%ebx
  4007ad:	0f 8e fb 00 00 00    	jle    4008ae <sieve+0x2de>
  4007b3:	48 63 c9             	movslq %ecx,%rcx
  4007b6:	80 3c 08 00          	cmpb   $0x0,(%rax,%rcx,1)
  4007ba:	0f 94 c1             	sete   %cl
  4007bd:	0f b6 c9             	movzbl %cl,%ecx
  4007c0:	01 ca                	add    %ecx,%edx
  4007c2:	8d 4f 05             	lea    0x5(%rdi),%ecx
  4007c5:	39 cb                	cmp    %ecx,%ebx
  4007c7:	0f 8e e1 00 00 00    	jle    4008ae <sieve+0x2de>
  4007cd:	48 63 c9             	movslq %ecx,%rcx
  4007d0:	80 3c 08 00          	cmpb   $0x0,(%rax,%rcx,1)
  4007d4:	0f 94 c1             	sete   %cl
  4007d7:	0f b6 c9             	movzbl %cl,%ecx
  4007da:	01 ca                	add    %ecx,%edx
  4007dc:	8d 4f 06             	lea    0x6(%rdi),%ecx
  4007df:	39 cb                	cmp    %ecx,%ebx
  4007e1:	0f 8e c7 00 00 00    	jle    4008ae <sieve+0x2de>
  4007e7:	48 63 c9             	movslq %ecx,%rcx
  4007ea:	80 3c 08 00          	cmpb   $0x0,(%rax,%rcx,1)
  4007ee:	0f 94 c1             	sete   %cl
  4007f1:	0f b6 c9             	movzbl %cl,%ecx
  4007f4:	01 ca                	add    %ecx,%edx
  4007f6:	8d 4f 07             	lea    0x7(%rdi),%ecx
  4007f9:	39 cb                	cmp    %ecx,%ebx
  4007fb:	0f 8e ad 00 00 00    	jle    4008ae <sieve+0x2de>
  400801:	48 63 c9             	movslq %ecx,%rcx
  400804:	80 3c 08 00          	cmpb   $0x0,(%rax,%rcx,1)
  400808:	0f 94 c1             	sete   %cl
  40080b:	0f b6 c9             	movzbl %cl,%ecx
  40080e:	01 ca                	add    %ecx,%edx
  400810:	8d 4f 08             	lea    0x8(%rdi),%ecx
  400813:	39 cb                	cmp    %ecx,%ebx
  400815:	0f 8e 93 00 00 00    	jle    4008ae <sieve+0x2de>
  40081b:	48 63 c9             	movslq %ecx,%rcx
  40081e:	80 3c 08 00          	cmpb   $0x0,(%rax,%rcx,1)
  400822:	0f 94 c1             	sete   %cl
  400825:	0f b6 c9             	movzbl %cl,%ecx
  400828:	01 ca                	add    %ecx,%edx
  40082a:	8d 4f 09             	lea    0x9(%rdi),%ecx
  40082d:	39 cb                	cmp    %ecx,%ebx
  40082f:	7e 7d                	jle    4008ae <sieve+0x2de>
  400831:	48 63 c9             	movslq %ecx,%rcx
  400834:	80 3c 08 00          	cmpb   $0x0,(%rax,%rcx,1)
  400838:	0f 94 c1             	sete   %cl
  40083b:	0f b6 c9             	movzbl %cl,%ecx
  40083e:	01 ca                	add    %ecx,%edx
  400840:	8d 4f 0a             	lea    0xa(%rdi),%ecx
  400843:	39 cb                	cmp    %ecx,%ebx
  400845:	7e 67                	jle    4008ae <sieve+0x2de>
  400847:	48 63 c9             	movslq %ecx,%rcx
  40084a:	80 3c 08 00          	cmpb   $0x0,(%rax,%rcx,1)
  40084e:	0f 94 c1             	sete   %cl
  400851:	0f b6 c9             	movzbl %cl,%ecx
  400854:	01 ca                	add    %ecx,%edx
  400856:	8d 4f 0b             	lea    0xb(%rdi),%ecx
  400859:	39 cb                	cmp    %ecx,%ebx
  40085b:	7e 51                	jle    4008ae <sieve+0x2de>
  40085d:	48 63 c9             	movslq %ecx,%rcx
  400860:	80 3c 08 00          	cmpb   $0x0,(%rax,%rcx,1)
  400864:	0f 94 c1             	sete   %cl
  400867:	0f b6 c9             	movzbl %cl,%ecx
  40086a:	01 ca                	add    %ecx,%edx
  40086c:	8d 4f 0c             	lea    0xc(%rdi),%ecx
  40086f:	39 cb                	cmp    %ecx,%ebx
  400871:	7e 3b                	jle    4008ae <sieve+0x2de>
  400873:	48 63 c9             	movslq %ecx,%rcx
  400876:	80 3c 08 00          	cmpb   $0x0,(%rax,%rcx,1)
  40087a:	0f 94 c1             	sete   %cl
  40087d:	0f b6 c9             	movzbl %cl,%ecx
  400880:	01 ca                	add    %ecx,%edx
  400882:	8d 4f 0d             	lea    0xd(%rdi),%ecx
  400885:	39 cb                	cmp    %ecx,%ebx
  400887:	7e 25                	jle    4008ae <sieve+0x2de>
  400889:	48 63 c9             	movslq %ecx,%rcx
  40088c:	80 3c 08 00          	cmpb   $0x0,(%rax,%rcx,1)
  400890:	0f 94 c1             	sete   %cl
  400893:	83 c7 0e             	add    $0xe,%edi
  400896:	0f b6 c9             	movzbl %cl,%ecx
  400899:	01 ca                	add    %ecx,%edx
  40089b:	39 fb                	cmp    %edi,%ebx
  40089d:	7e 0f                	jle    4008ae <sieve+0x2de>
  40089f:	48 63 ff             	movslq %edi,%rdi
  4008a2:	80 3c 38 00          	cmpb   $0x0,(%rax,%rdi,1)
  4008a6:	0f 94 c0             	sete   %al
  4008a9:	0f b6 c0             	movzbl %al,%eax
  4008ac:	01 c2                	add    %eax,%edx
  4008ae:	89 d0                	mov    %edx,%eax
  4008b0:	5b                   	pop    %rbx
  4008b1:	c3                   	retq   
  4008b2:	45 85 c9             	test   %r9d,%r9d
  4008b5:	0f 85 a3 fd ff ff    	jne    40065e <sieve+0x8e>
  4008bb:	bf 02 00 00 00       	mov    $0x2,%edi
  4008c0:	31 d2                	xor    %edx,%edx
  4008c2:	e9 ca fd ff ff       	jmpq   400691 <sieve+0xc1>
  4008c7:	83 fb 02             	cmp    $0x2,%ebx
  4008ca:	0f 8f 68 fd ff ff    	jg     400638 <sieve+0x68>
  4008d0:	31 d2                	xor    %edx,%edx
  4008d2:	eb da                	jmp    4008ae <sieve+0x2de>
  4008d4:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4008db:	00 00 00 
  4008de:	66 90                	xchg   %ax,%ax

00000000004008e0 <__libc_csu_init>:
  4008e0:	41 57                	push   %r15
  4008e2:	41 56                	push   %r14
  4008e4:	41 89 ff             	mov    %edi,%r15d
  4008e7:	41 55                	push   %r13
  4008e9:	41 54                	push   %r12
  4008eb:	4c 8d 25 1e 05 20 00 	lea    0x20051e(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  4008f2:	55                   	push   %rbp
  4008f3:	48 8d 2d 1e 05 20 00 	lea    0x20051e(%rip),%rbp        # 600e18 <__init_array_end>
  4008fa:	53                   	push   %rbx
  4008fb:	49 89 f6             	mov    %rsi,%r14
  4008fe:	49 89 d5             	mov    %rdx,%r13
  400901:	4c 29 e5             	sub    %r12,%rbp
  400904:	48 83 ec 08          	sub    $0x8,%rsp
  400908:	48 c1 fd 03          	sar    $0x3,%rbp
  40090c:	e8 17 fb ff ff       	callq  400428 <_init>
  400911:	48 85 ed             	test   %rbp,%rbp
  400914:	74 20                	je     400936 <__libc_csu_init+0x56>
  400916:	31 db                	xor    %ebx,%ebx
  400918:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40091f:	00 
  400920:	4c 89 ea             	mov    %r13,%rdx
  400923:	4c 89 f6             	mov    %r14,%rsi
  400926:	44 89 ff             	mov    %r15d,%edi
  400929:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40092d:	48 83 c3 01          	add    $0x1,%rbx
  400931:	48 39 eb             	cmp    %rbp,%rbx
  400934:	75 ea                	jne    400920 <__libc_csu_init+0x40>
  400936:	48 83 c4 08          	add    $0x8,%rsp
  40093a:	5b                   	pop    %rbx
  40093b:	5d                   	pop    %rbp
  40093c:	41 5c                	pop    %r12
  40093e:	41 5d                	pop    %r13
  400940:	41 5e                	pop    %r14
  400942:	41 5f                	pop    %r15
  400944:	c3                   	retq   
  400945:	90                   	nop
  400946:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40094d:	00 00 00 

0000000000400950 <__libc_csu_fini>:
  400950:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400954 <_fini>:
  400954:	48 83 ec 08          	sub    $0x8,%rsp
  400958:	48 83 c4 08          	add    $0x8,%rsp
  40095c:	c3                   	retq   
