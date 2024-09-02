
main.exe:     file format pei-x86-64


Disassembly of section .text:

0000000000401000 <__mingw_invalidParameterHandler>:
  401000:	c3                   	retq   
  401001:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401006:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40100d:	00 00 00 

0000000000401010 <pre_c_init>:
  401010:	48 83 ec 28          	sub    $0x28,%rsp
  401014:	48 8b 05 65 34 00 00 	mov    0x3465(%rip),%rax        # 404480 <.refptr.mingw_initltsdrot_force>
  40101b:	31 d2                	xor    %edx,%edx
  40101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  401023:	48 8b 05 66 34 00 00 	mov    0x3466(%rip),%rax        # 404490 <.refptr.mingw_initltsdyn_force>
  40102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  401030:	48 8b 05 69 34 00 00 	mov    0x3469(%rip),%rax        # 4044a0 <.refptr.mingw_initltssuo_force>
  401037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  40103d:	48 8b 05 2c 34 00 00 	mov    0x342c(%rip),%rax        # 404470 <.refptr.mingw_initcharmax>
  401044:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  40104a:	48 8b 05 0f 33 00 00 	mov    0x330f(%rip),%rax        # 404360 <.refptr.__image_base__>
  401051:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
  401056:	74 58                	je     4010b0 <pre_c_init+0xa0>
  401058:	48 8b 05 01 34 00 00 	mov    0x3401(%rip),%rax        # 404460 <.refptr.mingw_app_type>
  40105f:	89 15 a3 5f 00 00    	mov    %edx,0x5fa3(%rip)        # 407008 <managedapp>
  401065:	8b 00                	mov    (%rax),%eax
  401067:	85 c0                	test   %eax,%eax
  401069:	74 35                	je     4010a0 <pre_c_init+0x90>
  40106b:	b9 02 00 00 00       	mov    $0x2,%ecx
  401070:	e8 8b 1a 00 00       	callq  402b00 <__set_app_type>
  401075:	e8 f6 1a 00 00       	callq  402b70 <__p__fmode>
  40107a:	48 8b 15 9f 33 00 00 	mov    0x339f(%rip),%rdx        # 404420 <.refptr._fmode>
  401081:	8b 12                	mov    (%rdx),%edx
  401083:	89 10                	mov    %edx,(%rax)
  401085:	e8 06 06 00 00       	callq  401690 <_setargv>
  40108a:	48 8b 05 7f 32 00 00 	mov    0x327f(%rip),%rax        # 404310 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
  401091:	83 38 01             	cmpl   $0x1,(%rax)
  401094:	74 5a                	je     4010f0 <pre_c_init+0xe0>
  401096:	31 c0                	xor    %eax,%eax
  401098:	48 83 c4 28          	add    $0x28,%rsp
  40109c:	c3                   	retq   
  40109d:	0f 1f 00             	nopl   (%rax)
  4010a0:	b9 01 00 00 00       	mov    $0x1,%ecx
  4010a5:	e8 56 1a 00 00       	callq  402b00 <__set_app_type>
  4010aa:	eb c9                	jmp    401075 <pre_c_init+0x65>
  4010ac:	0f 1f 40 00          	nopl   0x0(%rax)
  4010b0:	48 63 48 3c          	movslq 0x3c(%rax),%rcx
  4010b4:	48 01 c8             	add    %rcx,%rax
  4010b7:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
  4010bd:	75 99                	jne    401058 <pre_c_init+0x48>
  4010bf:	0f b7 48 18          	movzwl 0x18(%rax),%ecx
  4010c3:	66 81 f9 0b 01       	cmp    $0x10b,%cx
  4010c8:	74 39                	je     401103 <pre_c_init+0xf3>
  4010ca:	66 81 f9 0b 02       	cmp    $0x20b,%cx
  4010cf:	75 87                	jne    401058 <pre_c_init+0x48>
  4010d1:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
  4010d8:	0f 86 7a ff ff ff    	jbe    401058 <pre_c_init+0x48>
  4010de:	8b 88 f8 00 00 00    	mov    0xf8(%rax),%ecx
  4010e4:	31 d2                	xor    %edx,%edx
  4010e6:	85 c9                	test   %ecx,%ecx
  4010e8:	0f 95 c2             	setne  %dl
  4010eb:	e9 68 ff ff ff       	jmpq   401058 <pre_c_init+0x48>
  4010f0:	48 8d 0d a9 08 00 00 	lea    0x8a9(%rip),%rcx        # 4019a0 <_matherr>
  4010f7:	e8 94 08 00 00       	callq  401990 <__mingw_setusermatherr>
  4010fc:	31 c0                	xor    %eax,%eax
  4010fe:	48 83 c4 28          	add    $0x28,%rsp
  401102:	c3                   	retq   
  401103:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
  401107:	0f 86 4b ff ff ff    	jbe    401058 <pre_c_init+0x48>
  40110d:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
  401114:	31 d2                	xor    %edx,%edx
  401116:	45 85 c0             	test   %r8d,%r8d
  401119:	0f 95 c2             	setne  %dl
  40111c:	e9 37 ff ff ff       	jmpq   401058 <pre_c_init+0x48>
  401121:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401126:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40112d:	00 00 00 

0000000000401130 <pre_cpp_init>:
  401130:	48 83 ec 38          	sub    $0x38,%rsp
  401134:	48 8b 05 15 33 00 00 	mov    0x3315(%rip),%rax        # 404450 <.refptr._newmode>
  40113b:	4c 8d 05 ce 5e 00 00 	lea    0x5ece(%rip),%r8        # 407010 <envp>
  401142:	48 8d 15 cf 5e 00 00 	lea    0x5ecf(%rip),%rdx        # 407018 <argv>
  401149:	48 8d 0d d0 5e 00 00 	lea    0x5ed0(%rip),%rcx        # 407020 <argc>
  401150:	8b 00                	mov    (%rax),%eax
  401152:	89 05 a8 5e 00 00    	mov    %eax,0x5ea8(%rip)        # 407000 <__bss_start__>
  401158:	48 8d 05 a1 5e 00 00 	lea    0x5ea1(%rip),%rax        # 407000 <__bss_start__>
  40115f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  401164:	48 8b 05 a5 32 00 00 	mov    0x32a5(%rip),%rax        # 404410 <.refptr._dowildcard>
  40116b:	44 8b 08             	mov    (%rax),%r9d
  40116e:	e8 9d 19 00 00       	callq  402b10 <__getmainargs>
  401173:	90                   	nop
  401174:	48 83 c4 38          	add    $0x38,%rsp
  401178:	c3                   	retq   
  401179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401180 <__tmainCRTStartup>:
  401180:	41 55                	push   %r13
  401182:	41 54                	push   %r12
  401184:	55                   	push   %rbp
  401185:	57                   	push   %rdi
  401186:	56                   	push   %rsi
  401187:	53                   	push   %rbx
  401188:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
  40118f:	31 c0                	xor    %eax,%eax
  401191:	b9 0d 00 00 00       	mov    $0xd,%ecx
  401196:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  40119b:	48 89 d7             	mov    %rdx,%rdi
  40119e:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4011a1:	48 8b 3d b8 32 00 00 	mov    0x32b8(%rip),%rdi        # 404460 <.refptr.mingw_app_type>
  4011a8:	44 8b 0f             	mov    (%rdi),%r9d
  4011ab:	45 85 c9             	test   %r9d,%r9d
  4011ae:	0f 85 bc 02 00 00    	jne    401470 <__tmainCRTStartup+0x2f0>
  4011b4:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
  4011bb:	00 00 
  4011bd:	48 8b 1d ec 31 00 00 	mov    0x31ec(%rip),%rbx        # 4043b0 <.refptr.__native_startup_lock>
  4011c4:	31 ed                	xor    %ebp,%ebp
  4011c6:	48 8b 70 08          	mov    0x8(%rax),%rsi
  4011ca:	4c 8b 25 8b 70 00 00 	mov    0x708b(%rip),%r12        # 40825c <__imp_Sleep>
  4011d1:	eb 11                	jmp    4011e4 <__tmainCRTStartup+0x64>
  4011d3:	48 39 c6             	cmp    %rax,%rsi
  4011d6:	0f 84 34 02 00 00    	je     401410 <__tmainCRTStartup+0x290>
  4011dc:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
  4011e1:	41 ff d4             	callq  *%r12
  4011e4:	48 89 e8             	mov    %rbp,%rax
  4011e7:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
  4011ec:	48 85 c0             	test   %rax,%rax
  4011ef:	75 e2                	jne    4011d3 <__tmainCRTStartup+0x53>
  4011f1:	48 8b 35 c8 31 00 00 	mov    0x31c8(%rip),%rsi        # 4043c0 <.refptr.__native_startup_state>
  4011f8:	31 ed                	xor    %ebp,%ebp
  4011fa:	8b 06                	mov    (%rsi),%eax
  4011fc:	83 f8 01             	cmp    $0x1,%eax
  4011ff:	0f 84 22 02 00 00    	je     401427 <__tmainCRTStartup+0x2a7>
  401205:	8b 06                	mov    (%rsi),%eax
  401207:	85 c0                	test   %eax,%eax
  401209:	0f 84 71 02 00 00    	je     401480 <__tmainCRTStartup+0x300>
  40120f:	c7 05 eb 5d 00 00 01 	movl   $0x1,0x5deb(%rip)        # 407004 <has_cctor>
  401216:	00 00 00 
  401219:	8b 06                	mov    (%rsi),%eax
  40121b:	83 f8 01             	cmp    $0x1,%eax
  40121e:	0f 84 18 02 00 00    	je     40143c <__tmainCRTStartup+0x2bc>
  401224:	85 ed                	test   %ebp,%ebp
  401226:	0f 84 31 02 00 00    	je     40145d <__tmainCRTStartup+0x2dd>
  40122c:	48 8b 05 1d 31 00 00 	mov    0x311d(%rip),%rax        # 404350 <.refptr.__dyn_tls_init_callback>
  401233:	48 8b 00             	mov    (%rax),%rax
  401236:	48 85 c0             	test   %rax,%rax
  401239:	74 0c                	je     401247 <__tmainCRTStartup+0xc7>
  40123b:	45 31 c0             	xor    %r8d,%r8d
  40123e:	ba 02 00 00 00       	mov    $0x2,%edx
  401243:	31 c9                	xor    %ecx,%ecx
  401245:	ff d0                	callq  *%rax
  401247:	e8 54 0a 00 00       	callq  401ca0 <_pei386_runtime_relocator>
  40124c:	48 8d 0d 9d 0f 00 00 	lea    0xf9d(%rip),%rcx        # 4021f0 <_gnu_exception_handler>
  401253:	ff 15 fb 6f 00 00    	callq  *0x6ffb(%rip)        # 408254 <__imp_SetUnhandledExceptionFilter>
  401259:	48 8b 15 40 31 00 00 	mov    0x3140(%rip),%rdx        # 4043a0 <.refptr.__mingw_oldexcpt_handler>
  401260:	48 89 02             	mov    %rax,(%rdx)
  401263:	e8 98 0e 00 00       	callq  402100 <__mingw_init_ehandler>
  401268:	48 8d 0d 91 fd ff ff 	lea    -0x26f(%rip),%rcx        # 401000 <__mingw_invalidParameterHandler>
  40126f:	e8 dc 18 00 00       	callq  402b50 <_set_invalid_parameter_handler>
  401274:	e8 27 08 00 00       	callq  401aa0 <_fpreset>
  401279:	48 8b 05 e0 30 00 00 	mov    0x30e0(%rip),%rax        # 404360 <.refptr.__image_base__>
  401280:	48 89 05 e1 66 00 00 	mov    %rax,0x66e1(%rip)        # 407968 <__mingw_winmain_hInstance>
  401287:	e8 d4 18 00 00       	callq  402b60 <__p__acmdln>
  40128c:	31 c9                	xor    %ecx,%ecx
  40128e:	48 8b 00             	mov    (%rax),%rax
  401291:	48 85 c0             	test   %rax,%rax
  401294:	75 1c                	jne    4012b2 <__tmainCRTStartup+0x132>
  401296:	eb 5f                	jmp    4012f7 <__tmainCRTStartup+0x177>
  401298:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40129f:	00 
  4012a0:	84 d2                	test   %dl,%dl
  4012a2:	74 2c                	je     4012d0 <__tmainCRTStartup+0x150>
  4012a4:	83 e1 01             	and    $0x1,%ecx
  4012a7:	74 27                	je     4012d0 <__tmainCRTStartup+0x150>
  4012a9:	b9 01 00 00 00       	mov    $0x1,%ecx
  4012ae:	48 83 c0 01          	add    $0x1,%rax
  4012b2:	0f b6 10             	movzbl (%rax),%edx
  4012b5:	80 fa 20             	cmp    $0x20,%dl
  4012b8:	7e e6                	jle    4012a0 <__tmainCRTStartup+0x120>
  4012ba:	41 89 c8             	mov    %ecx,%r8d
  4012bd:	41 83 f0 01          	xor    $0x1,%r8d
  4012c1:	80 fa 22             	cmp    $0x22,%dl
  4012c4:	41 0f 44 c8          	cmove  %r8d,%ecx
  4012c8:	eb e4                	jmp    4012ae <__tmainCRTStartup+0x12e>
  4012ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4012d0:	84 d2                	test   %dl,%dl
  4012d2:	75 11                	jne    4012e5 <__tmainCRTStartup+0x165>
  4012d4:	eb 1a                	jmp    4012f0 <__tmainCRTStartup+0x170>
  4012d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4012dd:	00 00 00 
  4012e0:	80 fa 20             	cmp    $0x20,%dl
  4012e3:	7f 0b                	jg     4012f0 <__tmainCRTStartup+0x170>
  4012e5:	48 83 c0 01          	add    $0x1,%rax
  4012e9:	0f b6 10             	movzbl (%rax),%edx
  4012ec:	84 d2                	test   %dl,%dl
  4012ee:	75 f0                	jne    4012e0 <__tmainCRTStartup+0x160>
  4012f0:	48 89 05 69 66 00 00 	mov    %rax,0x6669(%rip)        # 407960 <__mingw_winmain_lpCmdLine>
  4012f7:	44 8b 07             	mov    (%rdi),%r8d
  4012fa:	45 85 c0             	test   %r8d,%r8d
  4012fd:	74 16                	je     401315 <__tmainCRTStartup+0x195>
  4012ff:	f6 44 24 5c 01       	testb  $0x1,0x5c(%rsp)
  401304:	b8 0a 00 00 00       	mov    $0xa,%eax
  401309:	0f 85 f1 00 00 00    	jne    401400 <__tmainCRTStartup+0x280>
  40130f:	89 05 eb 1c 00 00    	mov    %eax,0x1ceb(%rip)        # 403000 <__data_start__>
  401315:	8b 1d 05 5d 00 00    	mov    0x5d05(%rip),%ebx        # 407020 <argc>
  40131b:	44 8d 63 01          	lea    0x1(%rbx),%r12d
  40131f:	4d 63 e4             	movslq %r12d,%r12
  401322:	49 c1 e4 03          	shl    $0x3,%r12
  401326:	4c 89 e1             	mov    %r12,%rcx
  401329:	e8 72 17 00 00       	callq  402aa0 <malloc>
  40132e:	85 db                	test   %ebx,%ebx
  401330:	48 8b 3d e1 5c 00 00 	mov    0x5ce1(%rip),%rdi        # 407018 <argv>
  401337:	48 89 c5             	mov    %rax,%rbp
  40133a:	7e 4b                	jle    401387 <__tmainCRTStartup+0x207>
  40133c:	8d 43 ff             	lea    -0x1(%rbx),%eax
  40133f:	31 db                	xor    %ebx,%ebx
  401341:	4c 8d 2c c5 08 00 00 	lea    0x8(,%rax,8),%r13
  401348:	00 
  401349:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401350:	48 8b 0c 1f          	mov    (%rdi,%rbx,1),%rcx
  401354:	e8 27 17 00 00       	callq  402a80 <strlen>
  401359:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40135d:	48 89 f1             	mov    %rsi,%rcx
  401360:	e8 3b 17 00 00       	callq  402aa0 <malloc>
  401365:	49 89 f0             	mov    %rsi,%r8
  401368:	48 89 44 1d 00       	mov    %rax,0x0(%rbp,%rbx,1)
  40136d:	48 8b 14 1f          	mov    (%rdi,%rbx,1),%rdx
  401371:	48 89 c1             	mov    %rax,%rcx
  401374:	48 83 c3 08          	add    $0x8,%rbx
  401378:	e8 1b 17 00 00       	callq  402a98 <memcpy>
  40137d:	49 39 dd             	cmp    %rbx,%r13
  401380:	75 ce                	jne    401350 <__tmainCRTStartup+0x1d0>
  401382:	4a 8d 44 25 f8       	lea    -0x8(%rbp,%r12,1),%rax
  401387:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  40138e:	48 89 2d 83 5c 00 00 	mov    %rbp,0x5c83(%rip)        # 407018 <argv>
  401395:	e8 c6 02 00 00       	callq  401660 <__main>
  40139a:	48 8b 05 cf 2f 00 00 	mov    0x2fcf(%rip),%rax        # 404370 <.refptr.__imp___initenv>
  4013a1:	48 8b 15 68 5c 00 00 	mov    0x5c68(%rip),%rdx        # 407010 <envp>
  4013a8:	8b 0d 72 5c 00 00    	mov    0x5c72(%rip),%ecx        # 407020 <argc>
  4013ae:	48 8b 00             	mov    (%rax),%rax
  4013b1:	48 89 10             	mov    %rdx,(%rax)
  4013b4:	4c 8b 05 55 5c 00 00 	mov    0x5c55(%rip),%r8        # 407010 <envp>
  4013bb:	48 8b 15 56 5c 00 00 	mov    0x5c56(%rip),%rdx        # 407018 <argv>
  4013c2:	e8 89 01 00 00       	callq  401550 <main>
  4013c7:	8b 0d 3b 5c 00 00    	mov    0x5c3b(%rip),%ecx        # 407008 <managedapp>
  4013cd:	89 05 39 5c 00 00    	mov    %eax,0x5c39(%rip)        # 40700c <mainret>
  4013d3:	85 c9                	test   %ecx,%ecx
  4013d5:	0f 84 c3 00 00 00    	je     40149e <__tmainCRTStartup+0x31e>
  4013db:	8b 15 23 5c 00 00    	mov    0x5c23(%rip),%edx        # 407004 <has_cctor>
  4013e1:	85 d2                	test   %edx,%edx
  4013e3:	75 0b                	jne    4013f0 <__tmainCRTStartup+0x270>
  4013e5:	e8 fe 16 00 00       	callq  402ae8 <_cexit>
  4013ea:	8b 05 1c 5c 00 00    	mov    0x5c1c(%rip),%eax        # 40700c <mainret>
  4013f0:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
  4013f7:	5b                   	pop    %rbx
  4013f8:	5e                   	pop    %rsi
  4013f9:	5f                   	pop    %rdi
  4013fa:	5d                   	pop    %rbp
  4013fb:	41 5c                	pop    %r12
  4013fd:	41 5d                	pop    %r13
  4013ff:	c3                   	retq   
  401400:	0f b7 44 24 60       	movzwl 0x60(%rsp),%eax
  401405:	e9 05 ff ff ff       	jmpq   40130f <__tmainCRTStartup+0x18f>
  40140a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401410:	48 8b 35 a9 2f 00 00 	mov    0x2fa9(%rip),%rsi        # 4043c0 <.refptr.__native_startup_state>
  401417:	bd 01 00 00 00       	mov    $0x1,%ebp
  40141c:	8b 06                	mov    (%rsi),%eax
  40141e:	83 f8 01             	cmp    $0x1,%eax
  401421:	0f 85 de fd ff ff    	jne    401205 <__tmainCRTStartup+0x85>
  401427:	b9 1f 00 00 00       	mov    $0x1f,%ecx
  40142c:	e8 bf 16 00 00       	callq  402af0 <_amsg_exit>
  401431:	8b 06                	mov    (%rsi),%eax
  401433:	83 f8 01             	cmp    $0x1,%eax
  401436:	0f 85 e8 fd ff ff    	jne    401224 <__tmainCRTStartup+0xa4>
  40143c:	48 8b 15 9d 2f 00 00 	mov    0x2f9d(%rip),%rdx        # 4043e0 <.refptr.__xc_z>
  401443:	48 8b 0d 86 2f 00 00 	mov    0x2f86(%rip),%rcx        # 4043d0 <.refptr.__xc_a>
  40144a:	e8 91 16 00 00       	callq  402ae0 <_initterm>
  40144f:	85 ed                	test   %ebp,%ebp
  401451:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
  401457:	0f 85 cf fd ff ff    	jne    40122c <__tmainCRTStartup+0xac>
  40145d:	31 c0                	xor    %eax,%eax
  40145f:	48 87 03             	xchg   %rax,(%rbx)
  401462:	e9 c5 fd ff ff       	jmpq   40122c <__tmainCRTStartup+0xac>
  401467:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40146e:	00 00 
  401470:	48 89 d1             	mov    %rdx,%rcx
  401473:	ff 15 8b 6d 00 00    	callq  *0x6d8b(%rip)        # 408204 <__imp_GetStartupInfoA>
  401479:	e9 36 fd ff ff       	jmpq   4011b4 <__tmainCRTStartup+0x34>
  40147e:	66 90                	xchg   %ax,%ax
  401480:	48 8b 15 79 2f 00 00 	mov    0x2f79(%rip),%rdx        # 404400 <.refptr.__xi_z>
  401487:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
  40148d:	48 8b 0d 5c 2f 00 00 	mov    0x2f5c(%rip),%rcx        # 4043f0 <.refptr.__xi_a>
  401494:	e8 47 16 00 00       	callq  402ae0 <_initterm>
  401499:	e9 7b fd ff ff       	jmpq   401219 <__tmainCRTStartup+0x99>
  40149e:	89 c1                	mov    %eax,%ecx
  4014a0:	e8 1b 16 00 00       	callq  402ac0 <exit>
  4014a5:	90                   	nop
  4014a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4014ad:	00 00 00 

00000000004014b0 <WinMainCRTStartup>:
  4014b0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014b4 <.l_startw>:
  4014b4:	48 8b 05 a5 2f 00 00 	mov    0x2fa5(%rip),%rax        # 404460 <.refptr.mingw_app_type>
  4014bb:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  4014c1:	e8 da 01 00 00       	callq  4016a0 <__security_init_cookie>
  4014c6:	e8 b5 fc ff ff       	callq  401180 <__tmainCRTStartup>
  4014cb:	90                   	nop

00000000004014cc <.l_endw>:
  4014cc:	90                   	nop
  4014cd:	48 83 c4 28          	add    $0x28,%rsp
  4014d1:	c3                   	retq   
  4014d2:	0f 1f 40 00          	nopl   0x0(%rax)
  4014d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4014dd:	00 00 00 

00000000004014e0 <mainCRTStartup>:
  4014e0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014e4 <.l_start>:
  4014e4:	48 8b 05 75 2f 00 00 	mov    0x2f75(%rip),%rax        # 404460 <.refptr.mingw_app_type>
  4014eb:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  4014f1:	e8 aa 01 00 00       	callq  4016a0 <__security_init_cookie>
  4014f6:	e8 85 fc ff ff       	callq  401180 <__tmainCRTStartup>
  4014fb:	90                   	nop

00000000004014fc <.l_end>:
  4014fc:	90                   	nop
  4014fd:	48 83 c4 28          	add    $0x28,%rsp
  401501:	c3                   	retq   
  401502:	0f 1f 40 00          	nopl   0x0(%rax)
  401506:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40150d:	00 00 00 

0000000000401510 <atexit>:
  401510:	48 83 ec 28          	sub    $0x28,%rsp
  401514:	e8 bf 15 00 00       	callq  402ad8 <_onexit>
  401519:	48 85 c0             	test   %rax,%rax
  40151c:	0f 94 c0             	sete   %al
  40151f:	0f b6 c0             	movzbl %al,%eax
  401522:	f7 d8                	neg    %eax
  401524:	48 83 c4 28          	add    $0x28,%rsp
  401528:	c3                   	retq   
  401529:	90                   	nop
  40152a:	90                   	nop
  40152b:	90                   	nop
  40152c:	90                   	nop
  40152d:	90                   	nop
  40152e:	90                   	nop
  40152f:	90                   	nop

0000000000401530 <__gcc_register_frame>:
  401530:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 401540 <__gcc_deregister_frame>
  401537:	e9 d4 ff ff ff       	jmpq   401510 <atexit>
  40153c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401540 <__gcc_deregister_frame>:
  401540:	c3                   	retq   
  401541:	90                   	nop
  401542:	90                   	nop
  401543:	90                   	nop
  401544:	90                   	nop
  401545:	90                   	nop
  401546:	90                   	nop
  401547:	90                   	nop
  401548:	90                   	nop
  401549:	90                   	nop
  40154a:	90                   	nop
  40154b:	90                   	nop
  40154c:	90                   	nop
  40154d:	90                   	nop
  40154e:	90                   	nop
  40154f:	90                   	nop

0000000000401550 <main>:
  401550:	55                   	push   %rbp
  401551:	48 89 e5             	mov    %rsp,%rbp
  401554:	48 83 ec 30          	sub    $0x30,%rsp
  401558:	e8 03 01 00 00       	callq  401660 <__main>
  40155d:	c7 45 fc 03 00 00 00 	movl   $0x3,-0x4(%rbp)
  401564:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401567:	89 45 f8             	mov    %eax,-0x8(%rbp)
  40156a:	83 45 f8 07          	addl   $0x7,-0x8(%rbp)
  40156e:	8b 45 f8             	mov    -0x8(%rbp),%eax
  401571:	89 c2                	mov    %eax,%edx
  401573:	48 8d 0d 86 2a 00 00 	lea    0x2a86(%rip),%rcx        # 404000 <.rdata>
  40157a:	e8 11 15 00 00       	callq  402a90 <printf>
  40157f:	c7 45 f0 03 00 00 00 	movl   $0x3,-0x10(%rbp)
  401586:	8b 45 f0             	mov    -0x10(%rbp),%eax
  401589:	89 45 f4             	mov    %eax,-0xc(%rbp)
  40158c:	83 45 f4 07          	addl   $0x7,-0xc(%rbp)
  401590:	8b 45 f4             	mov    -0xc(%rbp),%eax
  401593:	89 c2                	mov    %eax,%edx
  401595:	48 8d 0d 6d 2a 00 00 	lea    0x2a6d(%rip),%rcx        # 404009 <.rdata+0x9>
  40159c:	e8 ef 14 00 00       	callq  402a90 <printf>
  4015a1:	b8 00 00 00 00       	mov    $0x0,%eax
  4015a6:	48 83 c4 30          	add    $0x30,%rsp
  4015aa:	5d                   	pop    %rbp
  4015ab:	c3                   	retq   
  4015ac:	90                   	nop
  4015ad:	90                   	nop
  4015ae:	90                   	nop
  4015af:	90                   	nop

00000000004015b0 <__do_global_dtors>:
  4015b0:	48 83 ec 28          	sub    $0x28,%rsp
  4015b4:	48 8b 05 55 1a 00 00 	mov    0x1a55(%rip),%rax        # 403010 <p.93846>
  4015bb:	48 8b 00             	mov    (%rax),%rax
  4015be:	48 85 c0             	test   %rax,%rax
  4015c1:	74 1d                	je     4015e0 <__do_global_dtors+0x30>
  4015c3:	ff d0                	callq  *%rax
  4015c5:	48 8b 05 44 1a 00 00 	mov    0x1a44(%rip),%rax        # 403010 <p.93846>
  4015cc:	48 8d 50 08          	lea    0x8(%rax),%rdx
  4015d0:	48 8b 40 08          	mov    0x8(%rax),%rax
  4015d4:	48 89 15 35 1a 00 00 	mov    %rdx,0x1a35(%rip)        # 403010 <p.93846>
  4015db:	48 85 c0             	test   %rax,%rax
  4015de:	75 e3                	jne    4015c3 <__do_global_dtors+0x13>
  4015e0:	48 83 c4 28          	add    $0x28,%rsp
  4015e4:	c3                   	retq   
  4015e5:	90                   	nop
  4015e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4015ed:	00 00 00 

00000000004015f0 <__do_global_ctors>:
  4015f0:	56                   	push   %rsi
  4015f1:	53                   	push   %rbx
  4015f2:	48 83 ec 28          	sub    $0x28,%rsp
  4015f6:	48 8b 0d 23 2d 00 00 	mov    0x2d23(%rip),%rcx        # 404320 <.refptr.__CTOR_LIST__>
  4015fd:	48 8b 11             	mov    (%rcx),%rdx
  401600:	83 fa ff             	cmp    $0xffffffff,%edx
  401603:	89 d0                	mov    %edx,%eax
  401605:	74 39                	je     401640 <__do_global_ctors+0x50>
  401607:	85 c0                	test   %eax,%eax
  401609:	74 20                	je     40162b <__do_global_ctors+0x3b>
  40160b:	89 c2                	mov    %eax,%edx
  40160d:	83 e8 01             	sub    $0x1,%eax
  401610:	48 8d 1c d1          	lea    (%rcx,%rdx,8),%rbx
  401614:	48 29 c2             	sub    %rax,%rdx
  401617:	48 8d 74 d1 f8       	lea    -0x8(%rcx,%rdx,8),%rsi
  40161c:	0f 1f 40 00          	nopl   0x0(%rax)
  401620:	ff 13                	callq  *(%rbx)
  401622:	48 83 eb 08          	sub    $0x8,%rbx
  401626:	48 39 f3             	cmp    %rsi,%rbx
  401629:	75 f5                	jne    401620 <__do_global_ctors+0x30>
  40162b:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 4015b0 <__do_global_dtors>
  401632:	48 83 c4 28          	add    $0x28,%rsp
  401636:	5b                   	pop    %rbx
  401637:	5e                   	pop    %rsi
  401638:	e9 d3 fe ff ff       	jmpq   401510 <atexit>
  40163d:	0f 1f 00             	nopl   (%rax)
  401640:	31 c0                	xor    %eax,%eax
  401642:	eb 02                	jmp    401646 <__do_global_ctors+0x56>
  401644:	89 d0                	mov    %edx,%eax
  401646:	44 8d 40 01          	lea    0x1(%rax),%r8d
  40164a:	4a 83 3c c1 00       	cmpq   $0x0,(%rcx,%r8,8)
  40164f:	4c 89 c2             	mov    %r8,%rdx
  401652:	75 f0                	jne    401644 <__do_global_ctors+0x54>
  401654:	eb b1                	jmp    401607 <__do_global_ctors+0x17>
  401656:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40165d:	00 00 00 

0000000000401660 <__main>:
  401660:	8b 05 ca 59 00 00    	mov    0x59ca(%rip),%eax        # 407030 <initialized>
  401666:	85 c0                	test   %eax,%eax
  401668:	74 06                	je     401670 <__main+0x10>
  40166a:	c3                   	retq   
  40166b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401670:	c7 05 b6 59 00 00 01 	movl   $0x1,0x59b6(%rip)        # 407030 <initialized>
  401677:	00 00 00 
  40167a:	e9 71 ff ff ff       	jmpq   4015f0 <__do_global_ctors>
  40167f:	90                   	nop

0000000000401680 <my_lconv_init>:
  401680:	48 ff 25 2d 6c 00 00 	rex.W jmpq *0x6c2d(%rip)        # 4082b4 <__imp___lconv_init>
  401687:	90                   	nop
  401688:	90                   	nop
  401689:	90                   	nop
  40168a:	90                   	nop
  40168b:	90                   	nop
  40168c:	90                   	nop
  40168d:	90                   	nop
  40168e:	90                   	nop
  40168f:	90                   	nop

0000000000401690 <_setargv>:
  401690:	31 c0                	xor    %eax,%eax
  401692:	c3                   	retq   
  401693:	90                   	nop
  401694:	90                   	nop
  401695:	90                   	nop
  401696:	90                   	nop
  401697:	90                   	nop
  401698:	90                   	nop
  401699:	90                   	nop
  40169a:	90                   	nop
  40169b:	90                   	nop
  40169c:	90                   	nop
  40169d:	90                   	nop
  40169e:	90                   	nop
  40169f:	90                   	nop

00000000004016a0 <__security_init_cookie>:
  4016a0:	41 54                	push   %r12
  4016a2:	55                   	push   %rbp
  4016a3:	57                   	push   %rdi
  4016a4:	56                   	push   %rsi
  4016a5:	53                   	push   %rbx
  4016a6:	48 83 ec 30          	sub    $0x30,%rsp
  4016aa:	48 8b 1d ff 19 00 00 	mov    0x19ff(%rip),%rbx        # 4030b0 <__security_cookie>
  4016b1:	48 b8 32 a2 df 2d 99 	movabs $0x2b992ddfa232,%rax
  4016b8:	2b 00 00 
  4016bb:	48 39 c3             	cmp    %rax,%rbx
  4016be:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  4016c5:	00 00 
  4016c7:	74 17                	je     4016e0 <__security_init_cookie+0x40>
  4016c9:	48 f7 d3             	not    %rbx
  4016cc:	48 89 1d ed 19 00 00 	mov    %rbx,0x19ed(%rip)        # 4030c0 <__security_cookie_complement>
  4016d3:	48 83 c4 30          	add    $0x30,%rsp
  4016d7:	5b                   	pop    %rbx
  4016d8:	5e                   	pop    %rsi
  4016d9:	5f                   	pop    %rdi
  4016da:	5d                   	pop    %rbp
  4016db:	41 5c                	pop    %r12
  4016dd:	c3                   	retq   
  4016de:	66 90                	xchg   %ax,%ax
  4016e0:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  4016e5:	ff 15 21 6b 00 00    	callq  *0x6b21(%rip)        # 40820c <__imp_GetSystemTimeAsFileTime>
  4016eb:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
  4016f0:	ff 15 f6 6a 00 00    	callq  *0x6af6(%rip)        # 4081ec <__imp_GetCurrentProcessId>
  4016f6:	41 89 c4             	mov    %eax,%r12d
  4016f9:	ff 15 f5 6a 00 00    	callq  *0x6af5(%rip)        # 4081f4 <__imp_GetCurrentThreadId>
  4016ff:	89 c5                	mov    %eax,%ebp
  401701:	ff 15 0d 6b 00 00    	callq  *0x6b0d(%rip)        # 408214 <__imp_GetTickCount>
  401707:	48 8d 4c 24 28       	lea    0x28(%rsp),%rcx
  40170c:	89 c7                	mov    %eax,%edi
  40170e:	ff 15 18 6b 00 00    	callq  *0x6b18(%rip)        # 40822c <__imp_QueryPerformanceCounter>
  401714:	48 33 74 24 28       	xor    0x28(%rsp),%rsi
  401719:	44 89 e0             	mov    %r12d,%eax
  40171c:	48 ba ff ff ff ff ff 	movabs $0xffffffffffff,%rdx
  401723:	ff 00 00 
  401726:	48 31 f0             	xor    %rsi,%rax
  401729:	89 ee                	mov    %ebp,%esi
  40172b:	48 31 c6             	xor    %rax,%rsi
  40172e:	89 f8                	mov    %edi,%eax
  401730:	48 31 f0             	xor    %rsi,%rax
  401733:	48 21 d0             	and    %rdx,%rax
  401736:	48 39 d8             	cmp    %rbx,%rax
  401739:	74 25                	je     401760 <__security_init_cookie+0xc0>
  40173b:	48 89 c2             	mov    %rax,%rdx
  40173e:	48 f7 d2             	not    %rdx
  401741:	48 89 05 68 19 00 00 	mov    %rax,0x1968(%rip)        # 4030b0 <__security_cookie>
  401748:	48 89 15 71 19 00 00 	mov    %rdx,0x1971(%rip)        # 4030c0 <__security_cookie_complement>
  40174f:	48 83 c4 30          	add    $0x30,%rsp
  401753:	5b                   	pop    %rbx
  401754:	5e                   	pop    %rsi
  401755:	5f                   	pop    %rdi
  401756:	5d                   	pop    %rbp
  401757:	41 5c                	pop    %r12
  401759:	c3                   	retq   
  40175a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401760:	48 ba cc 5d 20 d2 66 	movabs $0xffffd466d2205dcc,%rdx
  401767:	d4 ff ff 
  40176a:	48 b8 33 a2 df 2d 99 	movabs $0x2b992ddfa233,%rax
  401771:	2b 00 00 
  401774:	eb cb                	jmp    401741 <__security_init_cookie+0xa1>
  401776:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40177d:	00 00 00 

0000000000401780 <__report_gsfailure>:
  401780:	55                   	push   %rbp
  401781:	56                   	push   %rsi
  401782:	53                   	push   %rbx
  401783:	48 89 e5             	mov    %rsp,%rbp
  401786:	48 83 ec 70          	sub    $0x70,%rsp
  40178a:	48 89 ce             	mov    %rcx,%rsi
  40178d:	48 8d 0d cc 58 00 00 	lea    0x58cc(%rip),%rcx        # 407060 <GS_ContextRecord>
  401794:	ff 15 a2 6a 00 00    	callq  *0x6aa2(%rip)        # 40823c <__imp_RtlCaptureContext>
  40179a:	48 8b 1d b7 59 00 00 	mov    0x59b7(%rip),%rbx        # 407158 <GS_ContextRecord+0xf8>
  4017a1:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
  4017a5:	45 31 c0             	xor    %r8d,%r8d
  4017a8:	48 89 d9             	mov    %rbx,%rcx
  4017ab:	ff 15 93 6a 00 00    	callq  *0x6a93(%rip)        # 408244 <__imp_RtlLookupFunctionEntry>
  4017b1:	48 85 c0             	test   %rax,%rax
  4017b4:	0f 84 a3 00 00 00    	je     40185d <__report_gsfailure+0xdd>
  4017ba:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
  4017be:	49 89 c1             	mov    %rax,%r9
  4017c1:	49 89 d8             	mov    %rbx,%r8
  4017c4:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  4017cb:	00 00 
  4017cd:	48 8d 0d 8c 58 00 00 	lea    0x588c(%rip),%rcx        # 407060 <GS_ContextRecord>
  4017d4:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
  4017d9:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
  4017dd:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
  4017e2:	31 c9                	xor    %ecx,%ecx
  4017e4:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  4017e9:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4017ed:	ff 15 59 6a 00 00    	callq  *0x6a59(%rip)        # 40824c <__imp_RtlVirtualUnwind>
  4017f3:	48 8b 05 5e 59 00 00 	mov    0x595e(%rip),%rax        # 407158 <GS_ContextRecord+0xf8>
  4017fa:	31 c9                	xor    %ecx,%ecx
  4017fc:	48 89 35 dd 58 00 00 	mov    %rsi,0x58dd(%rip)        # 4070e0 <GS_ContextRecord+0x80>
  401803:	48 89 05 46 5d 00 00 	mov    %rax,0x5d46(%rip)        # 407550 <GS_ExceptionRecord+0x10>
  40180a:	48 b8 09 04 00 c0 01 	movabs $0x1c0000409,%rax
  401811:	00 00 00 
  401814:	48 89 05 25 5d 00 00 	mov    %rax,0x5d25(%rip)        # 407540 <GS_ExceptionRecord>
  40181b:	48 8b 05 8e 18 00 00 	mov    0x188e(%rip),%rax        # 4030b0 <__security_cookie>
  401822:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  401826:	48 8b 05 93 18 00 00 	mov    0x1893(%rip),%rax        # 4030c0 <__security_cookie_complement>
  40182d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401831:	ff 15 1d 6a 00 00    	callq  *0x6a1d(%rip)        # 408254 <__imp_SetUnhandledExceptionFilter>
  401837:	48 8d 0d e2 27 00 00 	lea    0x27e2(%rip),%rcx        # 404020 <GS_ExceptionPointers>
  40183e:	ff 15 30 6a 00 00    	callq  *0x6a30(%rip)        # 408274 <__imp_UnhandledExceptionFilter>
  401844:	ff 15 9a 69 00 00    	callq  *0x699a(%rip)        # 4081e4 <__imp_GetCurrentProcess>
  40184a:	ba 09 04 00 c0       	mov    $0xc0000409,%edx
  40184f:	48 89 c1             	mov    %rax,%rcx
  401852:	ff 15 0c 6a 00 00    	callq  *0x6a0c(%rip)        # 408264 <__imp_TerminateProcess>
  401858:	e8 73 12 00 00       	callq  402ad0 <abort>
  40185d:	48 8b 45 18          	mov    0x18(%rbp),%rax
  401861:	48 89 05 f0 58 00 00 	mov    %rax,0x58f0(%rip)        # 407158 <GS_ContextRecord+0xf8>
  401868:	48 8d 45 08          	lea    0x8(%rbp),%rax
  40186c:	48 89 05 85 58 00 00 	mov    %rax,0x5885(%rip)        # 4070f8 <GS_ContextRecord+0x98>
  401873:	e9 7b ff ff ff       	jmpq   4017f3 <__report_gsfailure+0x73>
  401878:	90                   	nop
  401879:	90                   	nop
  40187a:	90                   	nop
  40187b:	90                   	nop
  40187c:	90                   	nop
  40187d:	90                   	nop
  40187e:	90                   	nop
  40187f:	90                   	nop

0000000000401880 <__dyn_tls_dtor>:
  401880:	48 83 ec 28          	sub    $0x28,%rsp
  401884:	83 fa 03             	cmp    $0x3,%edx
  401887:	74 17                	je     4018a0 <__dyn_tls_dtor+0x20>
  401889:	85 d2                	test   %edx,%edx
  40188b:	74 13                	je     4018a0 <__dyn_tls_dtor+0x20>
  40188d:	b8 01 00 00 00       	mov    $0x1,%eax
  401892:	48 83 c4 28          	add    $0x28,%rsp
  401896:	c3                   	retq   
  401897:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40189e:	00 00 
  4018a0:	e8 cb 0c 00 00       	callq  402570 <__mingw_TLScallback>
  4018a5:	b8 01 00 00 00       	mov    $0x1,%eax
  4018aa:	48 83 c4 28          	add    $0x28,%rsp
  4018ae:	c3                   	retq   
  4018af:	90                   	nop

00000000004018b0 <__dyn_tls_init>:
  4018b0:	56                   	push   %rsi
  4018b1:	53                   	push   %rbx
  4018b2:	48 83 ec 28          	sub    $0x28,%rsp
  4018b6:	48 8b 05 43 2a 00 00 	mov    0x2a43(%rip),%rax        # 404300 <.refptr._CRT_MT>
  4018bd:	83 38 02             	cmpl   $0x2,(%rax)
  4018c0:	74 06                	je     4018c8 <__dyn_tls_init+0x18>
  4018c2:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
  4018c8:	83 fa 02             	cmp    $0x2,%edx
  4018cb:	74 13                	je     4018e0 <__dyn_tls_init+0x30>
  4018cd:	83 fa 01             	cmp    $0x1,%edx
  4018d0:	74 40                	je     401912 <__dyn_tls_init+0x62>
  4018d2:	b8 01 00 00 00       	mov    $0x1,%eax
  4018d7:	48 83 c4 28          	add    $0x28,%rsp
  4018db:	5b                   	pop    %rbx
  4018dc:	5e                   	pop    %rsi
  4018dd:	c3                   	retq   
  4018de:	66 90                	xchg   %ax,%ax
  4018e0:	48 8d 1d 79 77 00 00 	lea    0x7779(%rip),%rbx        # 409060 <__xd_z>
  4018e7:	48 8d 35 72 77 00 00 	lea    0x7772(%rip),%rsi        # 409060 <__xd_z>
  4018ee:	48 39 de             	cmp    %rbx,%rsi
  4018f1:	74 df                	je     4018d2 <__dyn_tls_init+0x22>
  4018f3:	48 8b 03             	mov    (%rbx),%rax
  4018f6:	48 85 c0             	test   %rax,%rax
  4018f9:	74 02                	je     4018fd <__dyn_tls_init+0x4d>
  4018fb:	ff d0                	callq  *%rax
  4018fd:	48 83 c3 08          	add    $0x8,%rbx
  401901:	48 39 de             	cmp    %rbx,%rsi
  401904:	75 ed                	jne    4018f3 <__dyn_tls_init+0x43>
  401906:	b8 01 00 00 00       	mov    $0x1,%eax
  40190b:	48 83 c4 28          	add    $0x28,%rsp
  40190f:	5b                   	pop    %rbx
  401910:	5e                   	pop    %rsi
  401911:	c3                   	retq   
  401912:	e8 59 0c 00 00       	callq  402570 <__mingw_TLScallback>
  401917:	b8 01 00 00 00       	mov    $0x1,%eax
  40191c:	48 83 c4 28          	add    $0x28,%rsp
  401920:	5b                   	pop    %rbx
  401921:	5e                   	pop    %rsi
  401922:	c3                   	retq   
  401923:	0f 1f 00             	nopl   (%rax)
  401926:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40192d:	00 00 00 

0000000000401930 <__tlregdtor>:
  401930:	31 c0                	xor    %eax,%eax
  401932:	c3                   	retq   
  401933:	90                   	nop
  401934:	90                   	nop
  401935:	90                   	nop
  401936:	90                   	nop
  401937:	90                   	nop
  401938:	90                   	nop
  401939:	90                   	nop
  40193a:	90                   	nop
  40193b:	90                   	nop
  40193c:	90                   	nop
  40193d:	90                   	nop
  40193e:	90                   	nop
  40193f:	90                   	nop

0000000000401940 <__mingw_raise_matherr>:
  401940:	48 83 ec 58          	sub    $0x58,%rsp
  401944:	48 8b 05 b5 5c 00 00 	mov    0x5cb5(%rip),%rax        # 407600 <stUserMathErr>
  40194b:	48 85 c0             	test   %rax,%rax
  40194e:	74 2c                	je     40197c <__mingw_raise_matherr+0x3c>
  401950:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
  401957:	00 00 
  401959:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
  40195d:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  401962:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  401967:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
  40196d:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
  401973:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
  401979:	ff d0                	callq  *%rax
  40197b:	90                   	nop
  40197c:	48 83 c4 58          	add    $0x58,%rsp
  401980:	c3                   	retq   
  401981:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401986:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40198d:	00 00 00 

0000000000401990 <__mingw_setusermatherr>:
  401990:	48 89 0d 69 5c 00 00 	mov    %rcx,0x5c69(%rip)        # 407600 <stUserMathErr>
  401997:	e9 5c 11 00 00       	jmpq   402af8 <__setusermatherr>
  40199c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004019a0 <_matherr>:
  4019a0:	56                   	push   %rsi
  4019a1:	53                   	push   %rbx
  4019a2:	48 83 ec 78          	sub    $0x78,%rsp
  4019a6:	0f 29 74 24 40       	movaps %xmm6,0x40(%rsp)
  4019ab:	0f 29 7c 24 50       	movaps %xmm7,0x50(%rsp)
  4019b0:	44 0f 29 44 24 60    	movaps %xmm8,0x60(%rsp)
  4019b6:	83 39 06             	cmpl   $0x6,(%rcx)
  4019b9:	0f 87 d1 00 00 00    	ja     401a90 <_matherr+0xf0>
  4019bf:	8b 01                	mov    (%rcx),%eax
  4019c1:	48 8d 15 fc 27 00 00 	lea    0x27fc(%rip),%rdx        # 4041c4 <.rdata+0x124>
  4019c8:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  4019cc:	48 01 d0             	add    %rdx,%rax
  4019cf:	ff e0                	jmpq   *%rax
  4019d1:	48 8d 1d c8 26 00 00 	lea    0x26c8(%rip),%rbx        # 4040a0 <.rdata>
  4019d8:	48 8b 71 08          	mov    0x8(%rcx),%rsi
  4019dc:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
  4019e2:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
  4019e7:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
  4019ec:	b9 02 00 00 00       	mov    $0x2,%ecx
  4019f1:	e8 2a 11 00 00       	callq  402b20 <__acrt_iob_func>
  4019f6:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
  4019fd:	49 89 f1             	mov    %rsi,%r9
  401a00:	49 89 d8             	mov    %rbx,%r8
  401a03:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
  401a09:	48 8d 15 88 27 00 00 	lea    0x2788(%rip),%rdx        # 404198 <.rdata+0xf8>
  401a10:	48 89 c1             	mov    %rax,%rcx
  401a13:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
  401a19:	e8 9a 10 00 00       	callq  402ab8 <fprintf>
  401a1e:	90                   	nop
  401a1f:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
  401a24:	31 c0                	xor    %eax,%eax
  401a26:	0f 28 7c 24 50       	movaps 0x50(%rsp),%xmm7
  401a2b:	44 0f 28 44 24 60    	movaps 0x60(%rsp),%xmm8
  401a31:	48 83 c4 78          	add    $0x78,%rsp
  401a35:	5b                   	pop    %rbx
  401a36:	5e                   	pop    %rsi
  401a37:	c3                   	retq   
  401a38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401a3f:	00 
  401a40:	48 8d 1d 78 26 00 00 	lea    0x2678(%rip),%rbx        # 4040bf <.rdata+0x1f>
  401a47:	eb 8f                	jmp    4019d8 <_matherr+0x38>
  401a49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401a50:	48 8d 1d 89 26 00 00 	lea    0x2689(%rip),%rbx        # 4040e0 <.rdata+0x40>
  401a57:	e9 7c ff ff ff       	jmpq   4019d8 <_matherr+0x38>
  401a5c:	0f 1f 40 00          	nopl   0x0(%rax)
  401a60:	48 8d 1d e9 26 00 00 	lea    0x26e9(%rip),%rbx        # 404150 <.rdata+0xb0>
  401a67:	e9 6c ff ff ff       	jmpq   4019d8 <_matherr+0x38>
  401a6c:	0f 1f 40 00          	nopl   0x0(%rax)
  401a70:	48 8d 1d b1 26 00 00 	lea    0x26b1(%rip),%rbx        # 404128 <.rdata+0x88>
  401a77:	e9 5c ff ff ff       	jmpq   4019d8 <_matherr+0x38>
  401a7c:	0f 1f 40 00          	nopl   0x0(%rax)
  401a80:	48 8d 1d 79 26 00 00 	lea    0x2679(%rip),%rbx        # 404100 <.rdata+0x60>
  401a87:	e9 4c ff ff ff       	jmpq   4019d8 <_matherr+0x38>
  401a8c:	0f 1f 40 00          	nopl   0x0(%rax)
  401a90:	48 8d 1d ef 26 00 00 	lea    0x26ef(%rip),%rbx        # 404186 <.rdata+0xe6>
  401a97:	e9 3c ff ff ff       	jmpq   4019d8 <_matherr+0x38>
  401a9c:	90                   	nop
  401a9d:	90                   	nop
  401a9e:	90                   	nop
  401a9f:	90                   	nop

0000000000401aa0 <_fpreset>:
  401aa0:	db e3                	fninit 
  401aa2:	c3                   	retq   
  401aa3:	90                   	nop
  401aa4:	90                   	nop
  401aa5:	90                   	nop
  401aa6:	90                   	nop
  401aa7:	90                   	nop
  401aa8:	90                   	nop
  401aa9:	90                   	nop
  401aaa:	90                   	nop
  401aab:	90                   	nop
  401aac:	90                   	nop
  401aad:	90                   	nop
  401aae:	90                   	nop
  401aaf:	90                   	nop

0000000000401ab0 <_decode_pointer>:
  401ab0:	48 89 c8             	mov    %rcx,%rax
  401ab3:	c3                   	retq   
  401ab4:	66 90                	xchg   %ax,%ax
  401ab6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401abd:	00 00 00 

0000000000401ac0 <_encode_pointer>:
  401ac0:	48 89 c8             	mov    %rcx,%rax
  401ac3:	c3                   	retq   
  401ac4:	90                   	nop
  401ac5:	90                   	nop
  401ac6:	90                   	nop
  401ac7:	90                   	nop
  401ac8:	90                   	nop
  401ac9:	90                   	nop
  401aca:	90                   	nop
  401acb:	90                   	nop
  401acc:	90                   	nop
  401acd:	90                   	nop
  401ace:	90                   	nop
  401acf:	90                   	nop

0000000000401ad0 <__write_memory.part.0>:
  401ad0:	41 54                	push   %r12
  401ad2:	55                   	push   %rbp
  401ad3:	57                   	push   %rdi
  401ad4:	56                   	push   %rsi
  401ad5:	53                   	push   %rbx
  401ad6:	48 83 ec 50          	sub    $0x50,%rsp
  401ada:	48 63 35 43 5b 00 00 	movslq 0x5b43(%rip),%rsi        # 407624 <maxSections>
  401ae1:	85 f6                	test   %esi,%esi
  401ae3:	48 89 cb             	mov    %rcx,%rbx
  401ae6:	48 89 d5             	mov    %rdx,%rbp
  401ae9:	4c 89 c7             	mov    %r8,%rdi
  401aec:	0f 8e 66 01 00 00    	jle    401c58 <__write_memory.part.0+0x188>
  401af2:	48 8b 05 2f 5b 00 00 	mov    0x5b2f(%rip),%rax        # 407628 <the_secs>
  401af9:	31 c9                	xor    %ecx,%ecx
  401afb:	48 83 c0 18          	add    $0x18,%rax
  401aff:	90                   	nop
  401b00:	48 8b 10             	mov    (%rax),%rdx
  401b03:	48 39 d3             	cmp    %rdx,%rbx
  401b06:	72 14                	jb     401b1c <__write_memory.part.0+0x4c>
  401b08:	4c 8b 40 08          	mov    0x8(%rax),%r8
  401b0c:	45 8b 40 08          	mov    0x8(%r8),%r8d
  401b10:	4c 01 c2             	add    %r8,%rdx
  401b13:	48 39 d3             	cmp    %rdx,%rbx
  401b16:	0f 82 89 00 00 00    	jb     401ba5 <__write_memory.part.0+0xd5>
  401b1c:	83 c1 01             	add    $0x1,%ecx
  401b1f:	48 83 c0 28          	add    $0x28,%rax
  401b23:	39 f1                	cmp    %esi,%ecx
  401b25:	75 d9                	jne    401b00 <__write_memory.part.0+0x30>
  401b27:	48 89 d9             	mov    %rbx,%rcx
  401b2a:	e8 41 0c 00 00       	callq  402770 <__mingw_GetSectionForAddress>
  401b2f:	48 85 c0             	test   %rax,%rax
  401b32:	49 89 c4             	mov    %rax,%r12
  401b35:	0f 84 52 01 00 00    	je     401c8d <__write_memory.part.0+0x1bd>
  401b3b:	48 8b 05 e6 5a 00 00 	mov    0x5ae6(%rip),%rax        # 407628 <the_secs>
  401b42:	48 8d 34 b6          	lea    (%rsi,%rsi,4),%rsi
  401b46:	48 c1 e6 03          	shl    $0x3,%rsi
  401b4a:	48 01 f0             	add    %rsi,%rax
  401b4d:	4c 89 60 20          	mov    %r12,0x20(%rax)
  401b51:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  401b57:	e8 44 0d 00 00       	callq  4028a0 <_GetPEImageBase>
  401b5c:	41 8b 4c 24 0c       	mov    0xc(%r12),%ecx
  401b61:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  401b66:	41 b8 30 00 00 00    	mov    $0x30,%r8d
  401b6c:	48 01 c1             	add    %rax,%rcx
  401b6f:	48 8b 05 b2 5a 00 00 	mov    0x5ab2(%rip),%rax        # 407628 <the_secs>
  401b76:	48 89 4c 30 18       	mov    %rcx,0x18(%rax,%rsi,1)
  401b7b:	ff 15 03 67 00 00    	callq  *0x6703(%rip)        # 408284 <__imp_VirtualQuery>
  401b81:	48 85 c0             	test   %rax,%rax
  401b84:	0f 84 e6 00 00 00    	je     401c70 <__write_memory.part.0+0x1a0>
  401b8a:	8b 44 24 44          	mov    0x44(%rsp),%eax
  401b8e:	8d 50 fc             	lea    -0x4(%rax),%edx
  401b91:	83 e2 fb             	and    $0xfffffffb,%edx
  401b94:	74 08                	je     401b9e <__write_memory.part.0+0xce>
  401b96:	83 e8 40             	sub    $0x40,%eax
  401b99:	83 e0 bf             	and    $0xffffffbf,%eax
  401b9c:	75 62                	jne    401c00 <__write_memory.part.0+0x130>
  401b9e:	83 05 7f 5a 00 00 01 	addl   $0x1,0x5a7f(%rip)        # 407624 <maxSections>
  401ba5:	83 ff 08             	cmp    $0x8,%edi
  401ba8:	73 29                	jae    401bd3 <__write_memory.part.0+0x103>
  401baa:	40 f6 c7 04          	test   $0x4,%dil
  401bae:	0f 85 90 00 00 00    	jne    401c44 <__write_memory.part.0+0x174>
  401bb4:	85 ff                	test   %edi,%edi
  401bb6:	74 10                	je     401bc8 <__write_memory.part.0+0xf8>
  401bb8:	0f b6 45 00          	movzbl 0x0(%rbp),%eax
  401bbc:	40 f6 c7 02          	test   $0x2,%dil
  401bc0:	88 03                	mov    %al,(%rbx)
  401bc2:	0f 85 97 00 00 00    	jne    401c5f <__write_memory.part.0+0x18f>
  401bc8:	48 83 c4 50          	add    $0x50,%rsp
  401bcc:	5b                   	pop    %rbx
  401bcd:	5e                   	pop    %rsi
  401bce:	5f                   	pop    %rdi
  401bcf:	5d                   	pop    %rbp
  401bd0:	41 5c                	pop    %r12
  401bd2:	c3                   	retq   
  401bd3:	89 f8                	mov    %edi,%eax
  401bd5:	83 ef 01             	sub    $0x1,%edi
  401bd8:	48 8b 54 05 f8       	mov    -0x8(%rbp,%rax,1),%rdx
  401bdd:	83 ff 08             	cmp    $0x8,%edi
  401be0:	48 89 54 03 f8       	mov    %rdx,-0x8(%rbx,%rax,1)
  401be5:	72 e1                	jb     401bc8 <__write_memory.part.0+0xf8>
  401be7:	83 e7 f8             	and    $0xfffffff8,%edi
  401bea:	31 c0                	xor    %eax,%eax
  401bec:	89 c2                	mov    %eax,%edx
  401bee:	83 c0 08             	add    $0x8,%eax
  401bf1:	48 8b 4c 15 00       	mov    0x0(%rbp,%rdx,1),%rcx
  401bf6:	39 f8                	cmp    %edi,%eax
  401bf8:	48 89 0c 13          	mov    %rcx,(%rbx,%rdx,1)
  401bfc:	72 ee                	jb     401bec <__write_memory.part.0+0x11c>
  401bfe:	eb c8                	jmp    401bc8 <__write_memory.part.0+0xf8>
  401c00:	48 03 35 21 5a 00 00 	add    0x5a21(%rip),%rsi        # 407628 <the_secs>
  401c07:	41 b8 40 00 00 00    	mov    $0x40,%r8d
  401c0d:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  401c12:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  401c17:	49 89 f1             	mov    %rsi,%r9
  401c1a:	48 89 4e 08          	mov    %rcx,0x8(%rsi)
  401c1e:	48 89 56 10          	mov    %rdx,0x10(%rsi)
  401c22:	ff 15 54 66 00 00    	callq  *0x6654(%rip)        # 40827c <__imp_VirtualProtect>
  401c28:	85 c0                	test   %eax,%eax
  401c2a:	0f 85 6e ff ff ff    	jne    401b9e <__write_memory.part.0+0xce>
  401c30:	ff 15 c6 65 00 00    	callq  *0x65c6(%rip)        # 4081fc <__imp_GetLastError>
  401c36:	48 8d 0d 1b 26 00 00 	lea    0x261b(%rip),%rcx        # 404258 <.rdata+0x78>
  401c3d:	89 c2                	mov    %eax,%edx
  401c3f:	e8 0c 10 00 00       	callq  402c50 <__report_error>
  401c44:	8b 45 00             	mov    0x0(%rbp),%eax
  401c47:	89 ff                	mov    %edi,%edi
  401c49:	89 03                	mov    %eax,(%rbx)
  401c4b:	8b 44 3d fc          	mov    -0x4(%rbp,%rdi,1),%eax
  401c4f:	89 44 3b fc          	mov    %eax,-0x4(%rbx,%rdi,1)
  401c53:	e9 70 ff ff ff       	jmpq   401bc8 <__write_memory.part.0+0xf8>
  401c58:	31 f6                	xor    %esi,%esi
  401c5a:	e9 c8 fe ff ff       	jmpq   401b27 <__write_memory.part.0+0x57>
  401c5f:	89 ff                	mov    %edi,%edi
  401c61:	0f b7 44 3d fe       	movzwl -0x2(%rbp,%rdi,1),%eax
  401c66:	66 89 44 3b fe       	mov    %ax,-0x2(%rbx,%rdi,1)
  401c6b:	e9 58 ff ff ff       	jmpq   401bc8 <__write_memory.part.0+0xf8>
  401c70:	48 8b 05 b1 59 00 00 	mov    0x59b1(%rip),%rax        # 407628 <the_secs>
  401c77:	48 8d 0d a2 25 00 00 	lea    0x25a2(%rip),%rcx        # 404220 <.rdata+0x40>
  401c7e:	41 8b 54 24 08       	mov    0x8(%r12),%edx
  401c83:	4c 8b 44 30 18       	mov    0x18(%rax,%rsi,1),%r8
  401c88:	e8 c3 0f 00 00       	callq  402c50 <__report_error>
  401c8d:	48 8d 0d 6c 25 00 00 	lea    0x256c(%rip),%rcx        # 404200 <.rdata+0x20>
  401c94:	48 89 da             	mov    %rbx,%rdx
  401c97:	e8 b4 0f 00 00       	callq  402c50 <__report_error>
  401c9c:	90                   	nop
  401c9d:	0f 1f 00             	nopl   (%rax)

0000000000401ca0 <_pei386_runtime_relocator>:
  401ca0:	55                   	push   %rbp
  401ca1:	41 57                	push   %r15
  401ca3:	41 56                	push   %r14
  401ca5:	41 55                	push   %r13
  401ca7:	41 54                	push   %r12
  401ca9:	57                   	push   %rdi
  401caa:	56                   	push   %rsi
  401cab:	53                   	push   %rbx
  401cac:	48 83 ec 38          	sub    $0x38,%rsp
  401cb0:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  401cb7:	00 
  401cb8:	8b 1d 62 59 00 00    	mov    0x5962(%rip),%ebx        # 407620 <was_init.95174>
  401cbe:	85 db                	test   %ebx,%ebx
  401cc0:	74 11                	je     401cd3 <_pei386_runtime_relocator+0x33>
  401cc2:	48 8d 65 b8          	lea    -0x48(%rbp),%rsp
  401cc6:	5b                   	pop    %rbx
  401cc7:	5e                   	pop    %rsi
  401cc8:	5f                   	pop    %rdi
  401cc9:	41 5c                	pop    %r12
  401ccb:	41 5d                	pop    %r13
  401ccd:	41 5e                	pop    %r14
  401ccf:	41 5f                	pop    %r15
  401cd1:	5d                   	pop    %rbp
  401cd2:	c3                   	retq   
  401cd3:	c7 05 43 59 00 00 01 	movl   $0x1,0x5943(%rip)        # 407620 <was_init.95174>
  401cda:	00 00 00 
  401cdd:	e8 0e 0b 00 00       	callq  4027f0 <__mingw_GetSectionCount>
  401ce2:	48 98                	cltq   
  401ce4:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401ce8:	48 8d 04 c5 1e 00 00 	lea    0x1e(,%rax,8),%rax
  401cef:	00 
  401cf0:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401cf4:	e8 37 0d 00 00       	callq  402a30 <___chkstk_ms>
  401cf9:	4c 8b 25 30 26 00 00 	mov    0x2630(%rip),%r12        # 404330 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
  401d00:	c7 05 1a 59 00 00 00 	movl   $0x0,0x591a(%rip)        # 407624 <maxSections>
  401d07:	00 00 00 
  401d0a:	48 8b 35 2f 26 00 00 	mov    0x262f(%rip),%rsi        # 404340 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
  401d11:	48 29 c4             	sub    %rax,%rsp
  401d14:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  401d19:	48 89 05 08 59 00 00 	mov    %rax,0x5908(%rip)        # 407628 <the_secs>
  401d20:	4c 89 e0             	mov    %r12,%rax
  401d23:	48 29 f0             	sub    %rsi,%rax
  401d26:	48 83 f8 07          	cmp    $0x7,%rax
  401d2a:	7e 96                	jle    401cc2 <_pei386_runtime_relocator+0x22>
  401d2c:	48 83 f8 0b          	cmp    $0xb,%rax
  401d30:	8b 16                	mov    (%rsi),%edx
  401d32:	0f 8e c8 00 00 00    	jle    401e00 <_pei386_runtime_relocator+0x160>
  401d38:	85 d2                	test   %edx,%edx
  401d3a:	0f 84 a4 00 00 00    	je     401de4 <_pei386_runtime_relocator+0x144>
  401d40:	4c 39 e6             	cmp    %r12,%rsi
  401d43:	0f 83 79 ff ff ff    	jae    401cc2 <_pei386_runtime_relocator+0x22>
  401d49:	4c 8d 76 08          	lea    0x8(%rsi),%r14
  401d4d:	49 83 c4 07          	add    $0x7,%r12
  401d51:	4c 8b 2d 08 26 00 00 	mov    0x2608(%rip),%r13        # 404360 <.refptr.__image_base__>
  401d58:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
  401d5c:	4d 29 f4             	sub    %r14,%r12
  401d5f:	49 c1 ec 03          	shr    $0x3,%r12
  401d63:	4e 8d 64 e6 08       	lea    0x8(%rsi,%r12,8),%r12
  401d68:	eb 0a                	jmp    401d74 <_pei386_runtime_relocator+0xd4>
  401d6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401d70:	49 83 c6 08          	add    $0x8,%r14
  401d74:	8b 4e 04             	mov    0x4(%rsi),%ecx
  401d77:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  401d7d:	48 89 fa             	mov    %rdi,%rdx
  401d80:	8b 06                	mov    (%rsi),%eax
  401d82:	4c 89 f6             	mov    %r14,%rsi
  401d85:	4c 01 e9             	add    %r13,%rcx
  401d88:	03 01                	add    (%rcx),%eax
  401d8a:	89 45 a8             	mov    %eax,-0x58(%rbp)
  401d8d:	e8 3e fd ff ff       	callq  401ad0 <__write_memory.part.0>
  401d92:	4d 39 e6             	cmp    %r12,%r14
  401d95:	75 d9                	jne    401d70 <_pei386_runtime_relocator+0xd0>
  401d97:	8b 05 87 58 00 00    	mov    0x5887(%rip),%eax        # 407624 <maxSections>
  401d9d:	31 f6                	xor    %esi,%esi
  401d9f:	4c 8b 25 d6 64 00 00 	mov    0x64d6(%rip),%r12        # 40827c <__imp_VirtualProtect>
  401da6:	85 c0                	test   %eax,%eax
  401da8:	0f 8e 14 ff ff ff    	jle    401cc2 <_pei386_runtime_relocator+0x22>
  401dae:	66 90                	xchg   %ax,%ax
  401db0:	48 8b 05 71 58 00 00 	mov    0x5871(%rip),%rax        # 407628 <the_secs>
  401db7:	48 01 f0             	add    %rsi,%rax
  401dba:	44 8b 00             	mov    (%rax),%r8d
  401dbd:	45 85 c0             	test   %r8d,%r8d
  401dc0:	74 0e                	je     401dd0 <_pei386_runtime_relocator+0x130>
  401dc2:	48 8b 50 10          	mov    0x10(%rax),%rdx
  401dc6:	49 89 f9             	mov    %rdi,%r9
  401dc9:	48 8b 48 08          	mov    0x8(%rax),%rcx
  401dcd:	41 ff d4             	callq  *%r12
  401dd0:	83 c3 01             	add    $0x1,%ebx
  401dd3:	48 83 c6 28          	add    $0x28,%rsi
  401dd7:	3b 1d 47 58 00 00    	cmp    0x5847(%rip),%ebx        # 407624 <maxSections>
  401ddd:	7c d1                	jl     401db0 <_pei386_runtime_relocator+0x110>
  401ddf:	e9 de fe ff ff       	jmpq   401cc2 <_pei386_runtime_relocator+0x22>
  401de4:	8b 4e 04             	mov    0x4(%rsi),%ecx
  401de7:	85 c9                	test   %ecx,%ecx
  401de9:	0f 85 51 ff ff ff    	jne    401d40 <_pei386_runtime_relocator+0xa0>
  401def:	8b 56 08             	mov    0x8(%rsi),%edx
  401df2:	85 d2                	test   %edx,%edx
  401df4:	75 1d                	jne    401e13 <_pei386_runtime_relocator+0x173>
  401df6:	8b 56 0c             	mov    0xc(%rsi),%edx
  401df9:	48 83 c6 0c          	add    $0xc,%rsi
  401dfd:	0f 1f 00             	nopl   (%rax)
  401e00:	85 d2                	test   %edx,%edx
  401e02:	0f 85 38 ff ff ff    	jne    401d40 <_pei386_runtime_relocator+0xa0>
  401e08:	8b 46 04             	mov    0x4(%rsi),%eax
  401e0b:	85 c0                	test   %eax,%eax
  401e0d:	0f 85 2d ff ff ff    	jne    401d40 <_pei386_runtime_relocator+0xa0>
  401e13:	8b 56 08             	mov    0x8(%rsi),%edx
  401e16:	83 fa 01             	cmp    $0x1,%edx
  401e19:	0f 85 2f 01 00 00    	jne    401f4e <_pei386_runtime_relocator+0x2ae>
  401e1f:	4c 8b 2d 3a 25 00 00 	mov    0x253a(%rip),%r13        # 404360 <.refptr.__image_base__>
  401e26:	48 83 c6 0c          	add    $0xc,%rsi
  401e2a:	49 bf 00 00 00 00 ff 	movabs $0xffffffff00000000,%r15
  401e31:	ff ff ff 
  401e34:	4c 8d 75 a8          	lea    -0x58(%rbp),%r14
  401e38:	4c 39 e6             	cmp    %r12,%rsi
  401e3b:	72 48                	jb     401e85 <_pei386_runtime_relocator+0x1e5>
  401e3d:	e9 80 fe ff ff       	jmpq   401cc2 <_pei386_runtime_relocator+0x22>
  401e42:	0f 86 b8 00 00 00    	jbe    401f00 <_pei386_runtime_relocator+0x260>
  401e48:	83 fa 20             	cmp    $0x20,%edx
  401e4b:	0f 84 7f 00 00 00    	je     401ed0 <_pei386_runtime_relocator+0x230>
  401e51:	83 fa 40             	cmp    $0x40,%edx
  401e54:	0f 85 e0 00 00 00    	jne    401f3a <_pei386_runtime_relocator+0x29a>
  401e5a:	48 8b 11             	mov    (%rcx),%rdx
  401e5d:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  401e63:	4c 89 f7             	mov    %r14,%rdi
  401e66:	48 29 c2             	sub    %rax,%rdx
  401e69:	4c 01 ca             	add    %r9,%rdx
  401e6c:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  401e70:	4c 89 f2             	mov    %r14,%rdx
  401e73:	e8 58 fc ff ff       	callq  401ad0 <__write_memory.part.0>
  401e78:	48 83 c6 0c          	add    $0xc,%rsi
  401e7c:	4c 39 e6             	cmp    %r12,%rsi
  401e7f:	0f 83 12 ff ff ff    	jae    401d97 <_pei386_runtime_relocator+0xf7>
  401e85:	8b 4e 04             	mov    0x4(%rsi),%ecx
  401e88:	8b 06                	mov    (%rsi),%eax
  401e8a:	0f b6 56 08          	movzbl 0x8(%rsi),%edx
  401e8e:	4c 01 e9             	add    %r13,%rcx
  401e91:	4c 01 e8             	add    %r13,%rax
  401e94:	83 fa 10             	cmp    $0x10,%edx
  401e97:	4c 8b 08             	mov    (%rax),%r9
  401e9a:	75 a6                	jne    401e42 <_pei386_runtime_relocator+0x1a2>
  401e9c:	44 0f b7 01          	movzwl (%rcx),%r8d
  401ea0:	4c 89 f2             	mov    %r14,%rdx
  401ea3:	4c 89 f7             	mov    %r14,%rdi
  401ea6:	4d 89 c2             	mov    %r8,%r10
  401ea9:	49 81 ca 00 00 ff ff 	or     $0xffffffffffff0000,%r10
  401eb0:	66 45 85 c0          	test   %r8w,%r8w
  401eb4:	4d 0f 48 c2          	cmovs  %r10,%r8
  401eb8:	49 29 c0             	sub    %rax,%r8
  401ebb:	4d 01 c8             	add    %r9,%r8
  401ebe:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  401ec2:	41 b8 02 00 00 00    	mov    $0x2,%r8d
  401ec8:	e8 03 fc ff ff       	callq  401ad0 <__write_memory.part.0>
  401ecd:	eb a9                	jmp    401e78 <_pei386_runtime_relocator+0x1d8>
  401ecf:	90                   	nop
  401ed0:	8b 11                	mov    (%rcx),%edx
  401ed2:	4c 89 f7             	mov    %r14,%rdi
  401ed5:	49 89 d0             	mov    %rdx,%r8
  401ed8:	4c 09 fa             	or     %r15,%rdx
  401edb:	45 85 c0             	test   %r8d,%r8d
  401ede:	49 0f 49 d0          	cmovns %r8,%rdx
  401ee2:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  401ee8:	48 29 c2             	sub    %rax,%rdx
  401eeb:	4c 01 ca             	add    %r9,%rdx
  401eee:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  401ef2:	4c 89 f2             	mov    %r14,%rdx
  401ef5:	e8 d6 fb ff ff       	callq  401ad0 <__write_memory.part.0>
  401efa:	e9 79 ff ff ff       	jmpq   401e78 <_pei386_runtime_relocator+0x1d8>
  401eff:	90                   	nop
  401f00:	83 fa 08             	cmp    $0x8,%edx
  401f03:	75 35                	jne    401f3a <_pei386_runtime_relocator+0x29a>
  401f05:	44 0f b6 01          	movzbl (%rcx),%r8d
  401f09:	4c 89 f2             	mov    %r14,%rdx
  401f0c:	4c 89 f7             	mov    %r14,%rdi
  401f0f:	4d 89 c2             	mov    %r8,%r10
  401f12:	49 81 ca 00 ff ff ff 	or     $0xffffffffffffff00,%r10
  401f19:	45 84 c0             	test   %r8b,%r8b
  401f1c:	4d 0f 48 c2          	cmovs  %r10,%r8
  401f20:	49 29 c0             	sub    %rax,%r8
  401f23:	4d 01 c8             	add    %r9,%r8
  401f26:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  401f2a:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  401f30:	e8 9b fb ff ff       	callq  401ad0 <__write_memory.part.0>
  401f35:	e9 3e ff ff ff       	jmpq   401e78 <_pei386_runtime_relocator+0x1d8>
  401f3a:	48 8d 0d 77 23 00 00 	lea    0x2377(%rip),%rcx        # 4042b8 <.rdata+0xd8>
  401f41:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
  401f48:	00 
  401f49:	e8 02 0d 00 00       	callq  402c50 <__report_error>
  401f4e:	48 8d 0d 2b 23 00 00 	lea    0x232b(%rip),%rcx        # 404280 <.rdata+0xa0>
  401f55:	e8 f6 0c 00 00       	callq  402c50 <__report_error>
  401f5a:	90                   	nop
  401f5b:	90                   	nop
  401f5c:	90                   	nop
  401f5d:	90                   	nop
  401f5e:	90                   	nop
  401f5f:	90                   	nop

0000000000401f60 <__mingw_SEH_error_handler>:
  401f60:	48 83 ec 28          	sub    $0x28,%rsp
  401f64:	8b 01                	mov    (%rcx),%eax
  401f66:	3d 91 00 00 c0       	cmp    $0xc0000091,%eax
  401f6b:	77 63                	ja     401fd0 <__mingw_SEH_error_handler+0x70>
  401f6d:	3d 8d 00 00 c0       	cmp    $0xc000008d,%eax
  401f72:	73 7b                	jae    401fef <__mingw_SEH_error_handler+0x8f>
  401f74:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  401f79:	0f 84 05 01 00 00    	je     402084 <__mingw_SEH_error_handler+0x124>
  401f7f:	0f 87 cb 00 00 00    	ja     402050 <__mingw_SEH_error_handler+0xf0>
  401f85:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  401f8a:	0f 84 f4 00 00 00    	je     402084 <__mingw_SEH_error_handler+0x124>
  401f90:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  401f95:	0f 85 c3 00 00 00    	jne    40205e <__mingw_SEH_error_handler+0xfe>
  401f9b:	31 d2                	xor    %edx,%edx
  401f9d:	b9 0b 00 00 00       	mov    $0xb,%ecx
  401fa2:	e8 e1 0a 00 00       	callq  402a88 <signal>
  401fa7:	48 83 f8 01          	cmp    $0x1,%rax
  401fab:	0f 84 2f 01 00 00    	je     4020e0 <__mingw_SEH_error_handler+0x180>
  401fb1:	48 85 c0             	test   %rax,%rax
  401fb4:	0f 84 3c 01 00 00    	je     4020f6 <__mingw_SEH_error_handler+0x196>
  401fba:	b9 0b 00 00 00       	mov    $0xb,%ecx
  401fbf:	ff d0                	callq  *%rax
  401fc1:	31 c0                	xor    %eax,%eax
  401fc3:	48 83 c4 28          	add    $0x28,%rsp
  401fc7:	c3                   	retq   
  401fc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401fcf:	00 
  401fd0:	3d 94 00 00 c0       	cmp    $0xc0000094,%eax
  401fd5:	0f 84 b5 00 00 00    	je     402090 <__mingw_SEH_error_handler+0x130>
  401fdb:	77 37                	ja     402014 <__mingw_SEH_error_handler+0xb4>
  401fdd:	3d 92 00 00 c0       	cmp    $0xc0000092,%eax
  401fe2:	0f 84 9c 00 00 00    	je     402084 <__mingw_SEH_error_handler+0x124>
  401fe8:	3d 93 00 00 c0       	cmp    $0xc0000093,%eax
  401fed:	75 6f                	jne    40205e <__mingw_SEH_error_handler+0xfe>
  401fef:	31 d2                	xor    %edx,%edx
  401ff1:	b9 08 00 00 00       	mov    $0x8,%ecx
  401ff6:	e8 8d 0a 00 00       	callq  402a88 <signal>
  401ffb:	48 83 f8 01          	cmp    $0x1,%rax
  401fff:	74 6f                	je     402070 <__mingw_SEH_error_handler+0x110>
  402001:	48 85 c0             	test   %rax,%rax
  402004:	74 58                	je     40205e <__mingw_SEH_error_handler+0xfe>
  402006:	b9 08 00 00 00       	mov    $0x8,%ecx
  40200b:	ff d0                	callq  *%rax
  40200d:	31 c0                	xor    %eax,%eax
  40200f:	48 83 c4 28          	add    $0x28,%rsp
  402013:	c3                   	retq   
  402014:	3d 95 00 00 c0       	cmp    $0xc0000095,%eax
  402019:	74 69                	je     402084 <__mingw_SEH_error_handler+0x124>
  40201b:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  402020:	75 3c                	jne    40205e <__mingw_SEH_error_handler+0xfe>
  402022:	31 d2                	xor    %edx,%edx
  402024:	b9 04 00 00 00       	mov    $0x4,%ecx
  402029:	e8 5a 0a 00 00       	callq  402a88 <signal>
  40202e:	48 83 f8 01          	cmp    $0x1,%rax
  402032:	0f 84 88 00 00 00    	je     4020c0 <__mingw_SEH_error_handler+0x160>
  402038:	48 85 c0             	test   %rax,%rax
  40203b:	0f 84 b5 00 00 00    	je     4020f6 <__mingw_SEH_error_handler+0x196>
  402041:	b9 04 00 00 00       	mov    $0x4,%ecx
  402046:	ff d0                	callq  *%rax
  402048:	31 c0                	xor    %eax,%eax
  40204a:	48 83 c4 28          	add    $0x28,%rsp
  40204e:	c3                   	retq   
  40204f:	90                   	nop
  402050:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  402055:	74 cb                	je     402022 <__mingw_SEH_error_handler+0xc2>
  402057:	3d 8c 00 00 c0       	cmp    $0xc000008c,%eax
  40205c:	74 26                	je     402084 <__mingw_SEH_error_handler+0x124>
  40205e:	b8 01 00 00 00       	mov    $0x1,%eax
  402063:	48 83 c4 28          	add    $0x28,%rsp
  402067:	c3                   	retq   
  402068:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40206f:	00 
  402070:	ba 01 00 00 00       	mov    $0x1,%edx
  402075:	b9 08 00 00 00       	mov    $0x8,%ecx
  40207a:	e8 09 0a 00 00       	callq  402a88 <signal>
  40207f:	e8 1c fa ff ff       	callq  401aa0 <_fpreset>
  402084:	31 c0                	xor    %eax,%eax
  402086:	48 83 c4 28          	add    $0x28,%rsp
  40208a:	c3                   	retq   
  40208b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402090:	31 d2                	xor    %edx,%edx
  402092:	b9 08 00 00 00       	mov    $0x8,%ecx
  402097:	e8 ec 09 00 00       	callq  402a88 <signal>
  40209c:	48 83 f8 01          	cmp    $0x1,%rax
  4020a0:	0f 85 5b ff ff ff    	jne    402001 <__mingw_SEH_error_handler+0xa1>
  4020a6:	ba 01 00 00 00       	mov    $0x1,%edx
  4020ab:	b9 08 00 00 00       	mov    $0x8,%ecx
  4020b0:	e8 d3 09 00 00       	callq  402a88 <signal>
  4020b5:	31 c0                	xor    %eax,%eax
  4020b7:	e9 07 ff ff ff       	jmpq   401fc3 <__mingw_SEH_error_handler+0x63>
  4020bc:	0f 1f 40 00          	nopl   0x0(%rax)
  4020c0:	ba 01 00 00 00       	mov    $0x1,%edx
  4020c5:	b9 04 00 00 00       	mov    $0x4,%ecx
  4020ca:	e8 b9 09 00 00       	callq  402a88 <signal>
  4020cf:	31 c0                	xor    %eax,%eax
  4020d1:	e9 ed fe ff ff       	jmpq   401fc3 <__mingw_SEH_error_handler+0x63>
  4020d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4020dd:	00 00 00 
  4020e0:	ba 01 00 00 00       	mov    $0x1,%edx
  4020e5:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4020ea:	e8 99 09 00 00       	callq  402a88 <signal>
  4020ef:	31 c0                	xor    %eax,%eax
  4020f1:	e9 cd fe ff ff       	jmpq   401fc3 <__mingw_SEH_error_handler+0x63>
  4020f6:	b8 04 00 00 00       	mov    $0x4,%eax
  4020fb:	e9 c3 fe ff ff       	jmpq   401fc3 <__mingw_SEH_error_handler+0x63>

0000000000402100 <__mingw_init_ehandler>:
  402100:	41 54                	push   %r12
  402102:	55                   	push   %rbp
  402103:	57                   	push   %rdi
  402104:	56                   	push   %rsi
  402105:	53                   	push   %rbx
  402106:	48 83 ec 20          	sub    $0x20,%rsp
  40210a:	e8 91 07 00 00       	callq  4028a0 <_GetPEImageBase>
  40210f:	48 89 c5             	mov    %rax,%rbp
  402112:	8b 05 30 55 00 00    	mov    0x5530(%rip),%eax        # 407648 <was_here.95013>
  402118:	85 c0                	test   %eax,%eax
  40211a:	75 25                	jne    402141 <__mingw_init_ehandler+0x41>
  40211c:	48 85 ed             	test   %rbp,%rbp
  40211f:	74 20                	je     402141 <__mingw_init_ehandler+0x41>
  402121:	48 8d 0d c8 21 00 00 	lea    0x21c8(%rip),%rcx        # 4042f0 <.rdata>
  402128:	c7 05 16 55 00 00 01 	movl   $0x1,0x5516(%rip)        # 407648 <was_here.95013>
  40212f:	00 00 00 
  402132:	e8 a9 05 00 00       	callq  4026e0 <_FindPESectionByName>
  402137:	48 85 c0             	test   %rax,%rax
  40213a:	74 14                	je     402150 <__mingw_init_ehandler+0x50>
  40213c:	b8 01 00 00 00       	mov    $0x1,%eax
  402141:	48 83 c4 20          	add    $0x20,%rsp
  402145:	5b                   	pop    %rbx
  402146:	5e                   	pop    %rsi
  402147:	5f                   	pop    %rdi
  402148:	5d                   	pop    %rbp
  402149:	41 5c                	pop    %r12
  40214b:	c3                   	retq   
  40214c:	0f 1f 40 00          	nopl   0x0(%rax)
  402150:	48 8d 1d 09 56 00 00 	lea    0x5609(%rip),%rbx        # 407760 <emu_pdata>
  402157:	b9 30 00 00 00       	mov    $0x30,%ecx
  40215c:	31 f6                	xor    %esi,%esi
  40215e:	48 8d 15 fb 54 00 00 	lea    0x54fb(%rip),%rdx        # 407660 <emu_xdata>
  402165:	48 89 df             	mov    %rbx,%rdi
  402168:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  40216b:	4c 8d 25 ee fd ff ff 	lea    -0x212(%rip),%r12        # 401f60 <__mingw_SEH_error_handler>
  402172:	b9 20 00 00 00       	mov    $0x20,%ecx
  402177:	48 89 d7             	mov    %rdx,%rdi
  40217a:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  40217d:	49 29 ec             	sub    %rbp,%r12
  402180:	48 89 d7             	mov    %rdx,%rdi
  402183:	eb 2e                	jmp    4021b3 <__mingw_init_ehandler+0xb3>
  402185:	c6 07 09             	movb   $0x9,(%rdi)
  402188:	48 83 c6 01          	add    $0x1,%rsi
  40218c:	48 83 c3 0c          	add    $0xc,%rbx
  402190:	44 89 67 04          	mov    %r12d,0x4(%rdi)
  402194:	8b 48 0c             	mov    0xc(%rax),%ecx
  402197:	89 4b f4             	mov    %ecx,-0xc(%rbx)
  40219a:	03 48 08             	add    0x8(%rax),%ecx
  40219d:	48 89 f8             	mov    %rdi,%rax
  4021a0:	48 83 c7 08          	add    $0x8,%rdi
  4021a4:	48 29 e8             	sub    %rbp,%rax
  4021a7:	89 43 fc             	mov    %eax,-0x4(%rbx)
  4021aa:	89 4b f8             	mov    %ecx,-0x8(%rbx)
  4021ad:	48 83 fe 20          	cmp    $0x20,%rsi
  4021b1:	74 32                	je     4021e5 <__mingw_init_ehandler+0xe5>
  4021b3:	48 89 f1             	mov    %rsi,%rcx
  4021b6:	e8 75 06 00 00       	callq  402830 <_FindPESectionExec>
  4021bb:	48 85 c0             	test   %rax,%rax
  4021be:	75 c5                	jne    402185 <__mingw_init_ehandler+0x85>
  4021c0:	48 85 f6             	test   %rsi,%rsi
  4021c3:	89 f2                	mov    %esi,%edx
  4021c5:	0f 84 71 ff ff ff    	je     40213c <__mingw_init_ehandler+0x3c>
  4021cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4021d0:	48 8d 0d 89 55 00 00 	lea    0x5589(%rip),%rcx        # 407760 <emu_pdata>
  4021d7:	49 89 e8             	mov    %rbp,%r8
  4021da:	ff 15 54 60 00 00    	callq  *0x6054(%rip)        # 408234 <__imp_RtlAddFunctionTable>
  4021e0:	e9 57 ff ff ff       	jmpq   40213c <__mingw_init_ehandler+0x3c>
  4021e5:	ba 20 00 00 00       	mov    $0x20,%edx
  4021ea:	eb e4                	jmp    4021d0 <__mingw_init_ehandler+0xd0>
  4021ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004021f0 <_gnu_exception_handler>:
  4021f0:	53                   	push   %rbx
  4021f1:	48 83 ec 20          	sub    $0x20,%rsp
  4021f5:	48 8b 11             	mov    (%rcx),%rdx
  4021f8:	8b 02                	mov    (%rdx),%eax
  4021fa:	48 89 cb             	mov    %rcx,%rbx
  4021fd:	89 c1                	mov    %eax,%ecx
  4021ff:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
  402205:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
  40220b:	0f 84 bf 00 00 00    	je     4022d0 <_gnu_exception_handler+0xe0>
  402211:	3d 91 00 00 c0       	cmp    $0xc0000091,%eax
  402216:	77 68                	ja     402280 <_gnu_exception_handler+0x90>
  402218:	3d 8d 00 00 c0       	cmp    $0xc000008d,%eax
  40221d:	73 7c                	jae    40229b <_gnu_exception_handler+0xab>
  40221f:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  402224:	0f 84 b0 00 00 00    	je     4022da <_gnu_exception_handler+0xea>
  40222a:	0f 87 f4 00 00 00    	ja     402324 <_gnu_exception_handler+0x134>
  402230:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  402235:	0f 84 9f 00 00 00    	je     4022da <_gnu_exception_handler+0xea>
  40223b:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  402240:	75 1f                	jne    402261 <_gnu_exception_handler+0x71>
  402242:	31 d2                	xor    %edx,%edx
  402244:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402249:	e8 3a 08 00 00       	callq  402a88 <signal>
  40224e:	48 83 f8 01          	cmp    $0x1,%rax
  402252:	0f 84 51 01 00 00    	je     4023a9 <_gnu_exception_handler+0x1b9>
  402258:	48 85 c0             	test   %rax,%rax
  40225b:	0f 85 0f 01 00 00    	jne    402370 <_gnu_exception_handler+0x180>
  402261:	48 8b 05 d8 53 00 00 	mov    0x53d8(%rip),%rax        # 407640 <__mingw_oldexcpt_handler>
  402268:	48 85 c0             	test   %rax,%rax
  40226b:	0f 84 10 01 00 00    	je     402381 <_gnu_exception_handler+0x191>
  402271:	48 89 d9             	mov    %rbx,%rcx
  402274:	48 83 c4 20          	add    $0x20,%rsp
  402278:	5b                   	pop    %rbx
  402279:	48 ff e0             	rex.W jmpq *%rax
  40227c:	0f 1f 40 00          	nopl   0x0(%rax)
  402280:	3d 94 00 00 c0       	cmp    $0xc0000094,%eax
  402285:	0f 84 b5 00 00 00    	je     402340 <_gnu_exception_handler+0x150>
  40228b:	77 58                	ja     4022e5 <_gnu_exception_handler+0xf5>
  40228d:	3d 92 00 00 c0       	cmp    $0xc0000092,%eax
  402292:	74 46                	je     4022da <_gnu_exception_handler+0xea>
  402294:	3d 93 00 00 c0       	cmp    $0xc0000093,%eax
  402299:	75 c6                	jne    402261 <_gnu_exception_handler+0x71>
  40229b:	31 d2                	xor    %edx,%edx
  40229d:	b9 08 00 00 00       	mov    $0x8,%ecx
  4022a2:	e8 e1 07 00 00       	callq  402a88 <signal>
  4022a7:	48 83 f8 01          	cmp    $0x1,%rax
  4022ab:	0f 84 df 00 00 00    	je     402390 <_gnu_exception_handler+0x1a0>
  4022b1:	48 85 c0             	test   %rax,%rax
  4022b4:	74 ab                	je     402261 <_gnu_exception_handler+0x71>
  4022b6:	b9 08 00 00 00       	mov    $0x8,%ecx
  4022bb:	ff d0                	callq  *%rax
  4022bd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4022c2:	48 83 c4 20          	add    $0x20,%rsp
  4022c6:	5b                   	pop    %rbx
  4022c7:	c3                   	retq   
  4022c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4022cf:	00 
  4022d0:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
  4022d4:	0f 85 37 ff ff ff    	jne    402211 <_gnu_exception_handler+0x21>
  4022da:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4022df:	48 83 c4 20          	add    $0x20,%rsp
  4022e3:	5b                   	pop    %rbx
  4022e4:	c3                   	retq   
  4022e5:	3d 95 00 00 c0       	cmp    $0xc0000095,%eax
  4022ea:	74 ee                	je     4022da <_gnu_exception_handler+0xea>
  4022ec:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  4022f1:	0f 85 6a ff ff ff    	jne    402261 <_gnu_exception_handler+0x71>
  4022f7:	31 d2                	xor    %edx,%edx
  4022f9:	b9 04 00 00 00       	mov    $0x4,%ecx
  4022fe:	e8 85 07 00 00       	callq  402a88 <signal>
  402303:	48 83 f8 01          	cmp    $0x1,%rax
  402307:	0f 84 b3 00 00 00    	je     4023c0 <_gnu_exception_handler+0x1d0>
  40230d:	48 85 c0             	test   %rax,%rax
  402310:	0f 84 4b ff ff ff    	je     402261 <_gnu_exception_handler+0x71>
  402316:	b9 04 00 00 00       	mov    $0x4,%ecx
  40231b:	ff d0                	callq  *%rax
  40231d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402322:	eb 9e                	jmp    4022c2 <_gnu_exception_handler+0xd2>
  402324:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  402329:	74 cc                	je     4022f7 <_gnu_exception_handler+0x107>
  40232b:	3d 8c 00 00 c0       	cmp    $0xc000008c,%eax
  402330:	0f 85 2b ff ff ff    	jne    402261 <_gnu_exception_handler+0x71>
  402336:	eb a2                	jmp    4022da <_gnu_exception_handler+0xea>
  402338:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40233f:	00 
  402340:	31 d2                	xor    %edx,%edx
  402342:	b9 08 00 00 00       	mov    $0x8,%ecx
  402347:	e8 3c 07 00 00       	callq  402a88 <signal>
  40234c:	48 83 f8 01          	cmp    $0x1,%rax
  402350:	0f 85 5b ff ff ff    	jne    4022b1 <_gnu_exception_handler+0xc1>
  402356:	ba 01 00 00 00       	mov    $0x1,%edx
  40235b:	b9 08 00 00 00       	mov    $0x8,%ecx
  402360:	e8 23 07 00 00       	callq  402a88 <signal>
  402365:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40236a:	e9 53 ff ff ff       	jmpq   4022c2 <_gnu_exception_handler+0xd2>
  40236f:	90                   	nop
  402370:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402375:	ff d0                	callq  *%rax
  402377:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40237c:	e9 41 ff ff ff       	jmpq   4022c2 <_gnu_exception_handler+0xd2>
  402381:	31 c0                	xor    %eax,%eax
  402383:	e9 3a ff ff ff       	jmpq   4022c2 <_gnu_exception_handler+0xd2>
  402388:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40238f:	00 
  402390:	ba 01 00 00 00       	mov    $0x1,%edx
  402395:	b9 08 00 00 00       	mov    $0x8,%ecx
  40239a:	e8 e9 06 00 00       	callq  402a88 <signal>
  40239f:	e8 fc f6 ff ff       	callq  401aa0 <_fpreset>
  4023a4:	e9 31 ff ff ff       	jmpq   4022da <_gnu_exception_handler+0xea>
  4023a9:	ba 01 00 00 00       	mov    $0x1,%edx
  4023ae:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4023b3:	e8 d0 06 00 00       	callq  402a88 <signal>
  4023b8:	83 c8 ff             	or     $0xffffffff,%eax
  4023bb:	e9 02 ff ff ff       	jmpq   4022c2 <_gnu_exception_handler+0xd2>
  4023c0:	ba 01 00 00 00       	mov    $0x1,%edx
  4023c5:	b9 04 00 00 00       	mov    $0x4,%ecx
  4023ca:	e8 b9 06 00 00       	callq  402a88 <signal>
  4023cf:	83 c8 ff             	or     $0xffffffff,%eax
  4023d2:	e9 eb fe ff ff       	jmpq   4022c2 <_gnu_exception_handler+0xd2>
  4023d7:	90                   	nop
  4023d8:	90                   	nop
  4023d9:	90                   	nop
  4023da:	90                   	nop
  4023db:	90                   	nop
  4023dc:	90                   	nop
  4023dd:	90                   	nop
  4023de:	90                   	nop
  4023df:	90                   	nop

00000000004023e0 <__mingwthr_run_key_dtors.part.0>:
  4023e0:	55                   	push   %rbp
  4023e1:	57                   	push   %rdi
  4023e2:	56                   	push   %rsi
  4023e3:	53                   	push   %rbx
  4023e4:	48 83 ec 28          	sub    $0x28,%rsp
  4023e8:	48 8d 0d 11 55 00 00 	lea    0x5511(%rip),%rcx        # 407900 <__mingwthr_cs>
  4023ef:	ff 15 e7 5d 00 00    	callq  *0x5de7(%rip)        # 4081dc <__imp_EnterCriticalSection>
  4023f5:	48 8b 1d e4 54 00 00 	mov    0x54e4(%rip),%rbx        # 4078e0 <key_dtor_list>
  4023fc:	48 85 db             	test   %rbx,%rbx
  4023ff:	74 33                	je     402434 <__mingwthr_run_key_dtors.part.0+0x54>
  402401:	48 8b 2d 64 5e 00 00 	mov    0x5e64(%rip),%rbp        # 40826c <__imp_TlsGetValue>
  402408:	48 8b 3d ed 5d 00 00 	mov    0x5ded(%rip),%rdi        # 4081fc <__imp_GetLastError>
  40240f:	90                   	nop
  402410:	8b 0b                	mov    (%rbx),%ecx
  402412:	ff d5                	callq  *%rbp
  402414:	48 89 c6             	mov    %rax,%rsi
  402417:	ff d7                	callq  *%rdi
  402419:	85 c0                	test   %eax,%eax
  40241b:	75 0e                	jne    40242b <__mingwthr_run_key_dtors.part.0+0x4b>
  40241d:	48 85 f6             	test   %rsi,%rsi
  402420:	74 09                	je     40242b <__mingwthr_run_key_dtors.part.0+0x4b>
  402422:	48 8b 43 08          	mov    0x8(%rbx),%rax
  402426:	48 89 f1             	mov    %rsi,%rcx
  402429:	ff d0                	callq  *%rax
  40242b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40242f:	48 85 db             	test   %rbx,%rbx
  402432:	75 dc                	jne    402410 <__mingwthr_run_key_dtors.part.0+0x30>
  402434:	48 8d 0d c5 54 00 00 	lea    0x54c5(%rip),%rcx        # 407900 <__mingwthr_cs>
  40243b:	48 83 c4 28          	add    $0x28,%rsp
  40243f:	5b                   	pop    %rbx
  402440:	5e                   	pop    %rsi
  402441:	5f                   	pop    %rdi
  402442:	5d                   	pop    %rbp
  402443:	48 ff 25 da 5d 00 00 	rex.W jmpq *0x5dda(%rip)        # 408224 <__imp_LeaveCriticalSection>
  40244a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000402450 <___w64_mingwthr_add_key_dtor>:
  402450:	55                   	push   %rbp
  402451:	57                   	push   %rdi
  402452:	56                   	push   %rsi
  402453:	53                   	push   %rbx
  402454:	48 83 ec 28          	sub    $0x28,%rsp
  402458:	8b 05 8a 54 00 00    	mov    0x548a(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  40245e:	31 f6                	xor    %esi,%esi
  402460:	85 c0                	test   %eax,%eax
  402462:	89 cd                	mov    %ecx,%ebp
  402464:	48 89 d7             	mov    %rdx,%rdi
  402467:	75 0b                	jne    402474 <___w64_mingwthr_add_key_dtor+0x24>
  402469:	89 f0                	mov    %esi,%eax
  40246b:	48 83 c4 28          	add    $0x28,%rsp
  40246f:	5b                   	pop    %rbx
  402470:	5e                   	pop    %rsi
  402471:	5f                   	pop    %rdi
  402472:	5d                   	pop    %rbp
  402473:	c3                   	retq   
  402474:	ba 18 00 00 00       	mov    $0x18,%edx
  402479:	b9 01 00 00 00       	mov    $0x1,%ecx
  40247e:	e8 45 06 00 00       	callq  402ac8 <calloc>
  402483:	48 85 c0             	test   %rax,%rax
  402486:	48 89 c3             	mov    %rax,%rbx
  402489:	74 3d                	je     4024c8 <___w64_mingwthr_add_key_dtor+0x78>
  40248b:	89 28                	mov    %ebp,(%rax)
  40248d:	48 8d 0d 6c 54 00 00 	lea    0x546c(%rip),%rcx        # 407900 <__mingwthr_cs>
  402494:	48 89 78 08          	mov    %rdi,0x8(%rax)
  402498:	ff 15 3e 5d 00 00    	callq  *0x5d3e(%rip)        # 4081dc <__imp_EnterCriticalSection>
  40249e:	48 8b 05 3b 54 00 00 	mov    0x543b(%rip),%rax        # 4078e0 <key_dtor_list>
  4024a5:	48 8d 0d 54 54 00 00 	lea    0x5454(%rip),%rcx        # 407900 <__mingwthr_cs>
  4024ac:	48 89 1d 2d 54 00 00 	mov    %rbx,0x542d(%rip)        # 4078e0 <key_dtor_list>
  4024b3:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4024b7:	ff 15 67 5d 00 00    	callq  *0x5d67(%rip)        # 408224 <__imp_LeaveCriticalSection>
  4024bd:	89 f0                	mov    %esi,%eax
  4024bf:	48 83 c4 28          	add    $0x28,%rsp
  4024c3:	5b                   	pop    %rbx
  4024c4:	5e                   	pop    %rsi
  4024c5:	5f                   	pop    %rdi
  4024c6:	5d                   	pop    %rbp
  4024c7:	c3                   	retq   
  4024c8:	be ff ff ff ff       	mov    $0xffffffff,%esi
  4024cd:	eb 9a                	jmp    402469 <___w64_mingwthr_add_key_dtor+0x19>
  4024cf:	90                   	nop

00000000004024d0 <___w64_mingwthr_remove_key_dtor>:
  4024d0:	53                   	push   %rbx
  4024d1:	48 83 ec 20          	sub    $0x20,%rsp
  4024d5:	8b 05 0d 54 00 00    	mov    0x540d(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  4024db:	85 c0                	test   %eax,%eax
  4024dd:	89 cb                	mov    %ecx,%ebx
  4024df:	75 0f                	jne    4024f0 <___w64_mingwthr_remove_key_dtor+0x20>
  4024e1:	31 c0                	xor    %eax,%eax
  4024e3:	48 83 c4 20          	add    $0x20,%rsp
  4024e7:	5b                   	pop    %rbx
  4024e8:	c3                   	retq   
  4024e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4024f0:	48 8d 0d 09 54 00 00 	lea    0x5409(%rip),%rcx        # 407900 <__mingwthr_cs>
  4024f7:	ff 15 df 5c 00 00    	callq  *0x5cdf(%rip)        # 4081dc <__imp_EnterCriticalSection>
  4024fd:	48 8b 05 dc 53 00 00 	mov    0x53dc(%rip),%rax        # 4078e0 <key_dtor_list>
  402504:	48 85 c0             	test   %rax,%rax
  402507:	74 1a                	je     402523 <___w64_mingwthr_remove_key_dtor+0x53>
  402509:	8b 10                	mov    (%rax),%edx
  40250b:	39 d3                	cmp    %edx,%ebx
  40250d:	75 0b                	jne    40251a <___w64_mingwthr_remove_key_dtor+0x4a>
  40250f:	eb 4f                	jmp    402560 <___w64_mingwthr_remove_key_dtor+0x90>
  402511:	8b 11                	mov    (%rcx),%edx
  402513:	39 da                	cmp    %ebx,%edx
  402515:	74 29                	je     402540 <___w64_mingwthr_remove_key_dtor+0x70>
  402517:	48 89 c8             	mov    %rcx,%rax
  40251a:	48 8b 48 10          	mov    0x10(%rax),%rcx
  40251e:	48 85 c9             	test   %rcx,%rcx
  402521:	75 ee                	jne    402511 <___w64_mingwthr_remove_key_dtor+0x41>
  402523:	48 8d 0d d6 53 00 00 	lea    0x53d6(%rip),%rcx        # 407900 <__mingwthr_cs>
  40252a:	ff 15 f4 5c 00 00    	callq  *0x5cf4(%rip)        # 408224 <__imp_LeaveCriticalSection>
  402530:	31 c0                	xor    %eax,%eax
  402532:	48 83 c4 20          	add    $0x20,%rsp
  402536:	5b                   	pop    %rbx
  402537:	c3                   	retq   
  402538:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40253f:	00 
  402540:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  402544:	48 89 50 10          	mov    %rdx,0x10(%rax)
  402548:	e8 63 05 00 00       	callq  402ab0 <free>
  40254d:	48 8d 0d ac 53 00 00 	lea    0x53ac(%rip),%rcx        # 407900 <__mingwthr_cs>
  402554:	ff 15 ca 5c 00 00    	callq  *0x5cca(%rip)        # 408224 <__imp_LeaveCriticalSection>
  40255a:	eb d4                	jmp    402530 <___w64_mingwthr_remove_key_dtor+0x60>
  40255c:	0f 1f 40 00          	nopl   0x0(%rax)
  402560:	48 8b 50 10          	mov    0x10(%rax),%rdx
  402564:	48 89 c1             	mov    %rax,%rcx
  402567:	48 89 15 72 53 00 00 	mov    %rdx,0x5372(%rip)        # 4078e0 <key_dtor_list>
  40256e:	eb d8                	jmp    402548 <___w64_mingwthr_remove_key_dtor+0x78>

0000000000402570 <__mingw_TLScallback>:
  402570:	53                   	push   %rbx
  402571:	48 83 ec 20          	sub    $0x20,%rsp
  402575:	83 fa 01             	cmp    $0x1,%edx
  402578:	0f 84 92 00 00 00    	je     402610 <__mingw_TLScallback+0xa0>
  40257e:	72 30                	jb     4025b0 <__mingw_TLScallback+0x40>
  402580:	83 fa 02             	cmp    $0x2,%edx
  402583:	74 1b                	je     4025a0 <__mingw_TLScallback+0x30>
  402585:	83 fa 03             	cmp    $0x3,%edx
  402588:	75 1b                	jne    4025a5 <__mingw_TLScallback+0x35>
  40258a:	8b 05 58 53 00 00    	mov    0x5358(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  402590:	85 c0                	test   %eax,%eax
  402592:	74 11                	je     4025a5 <__mingw_TLScallback+0x35>
  402594:	e8 47 fe ff ff       	callq  4023e0 <__mingwthr_run_key_dtors.part.0>
  402599:	eb 0a                	jmp    4025a5 <__mingw_TLScallback+0x35>
  40259b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4025a0:	e8 fb f4 ff ff       	callq  401aa0 <_fpreset>
  4025a5:	b8 01 00 00 00       	mov    $0x1,%eax
  4025aa:	48 83 c4 20          	add    $0x20,%rsp
  4025ae:	5b                   	pop    %rbx
  4025af:	c3                   	retq   
  4025b0:	8b 05 32 53 00 00    	mov    0x5332(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  4025b6:	85 c0                	test   %eax,%eax
  4025b8:	0f 85 82 00 00 00    	jne    402640 <__mingw_TLScallback+0xd0>
  4025be:	8b 05 24 53 00 00    	mov    0x5324(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  4025c4:	83 f8 01             	cmp    $0x1,%eax
  4025c7:	75 dc                	jne    4025a5 <__mingw_TLScallback+0x35>
  4025c9:	48 8b 0d 10 53 00 00 	mov    0x5310(%rip),%rcx        # 4078e0 <key_dtor_list>
  4025d0:	48 85 c9             	test   %rcx,%rcx
  4025d3:	74 11                	je     4025e6 <__mingw_TLScallback+0x76>
  4025d5:	48 8b 59 10          	mov    0x10(%rcx),%rbx
  4025d9:	e8 d2 04 00 00       	callq  402ab0 <free>
  4025de:	48 85 db             	test   %rbx,%rbx
  4025e1:	48 89 d9             	mov    %rbx,%rcx
  4025e4:	75 ef                	jne    4025d5 <__mingw_TLScallback+0x65>
  4025e6:	48 8d 0d 13 53 00 00 	lea    0x5313(%rip),%rcx        # 407900 <__mingwthr_cs>
  4025ed:	48 c7 05 e8 52 00 00 	movq   $0x0,0x52e8(%rip)        # 4078e0 <key_dtor_list>
  4025f4:	00 00 00 00 
  4025f8:	c7 05 e6 52 00 00 00 	movl   $0x0,0x52e6(%rip)        # 4078e8 <__mingwthr_cs_init>
  4025ff:	00 00 00 
  402602:	ff 15 cc 5b 00 00    	callq  *0x5bcc(%rip)        # 4081d4 <__IAT_start__>
  402608:	eb 9b                	jmp    4025a5 <__mingw_TLScallback+0x35>
  40260a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402610:	8b 05 d2 52 00 00    	mov    0x52d2(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  402616:	85 c0                	test   %eax,%eax
  402618:	74 16                	je     402630 <__mingw_TLScallback+0xc0>
  40261a:	c7 05 c4 52 00 00 01 	movl   $0x1,0x52c4(%rip)        # 4078e8 <__mingwthr_cs_init>
  402621:	00 00 00 
  402624:	b8 01 00 00 00       	mov    $0x1,%eax
  402629:	48 83 c4 20          	add    $0x20,%rsp
  40262d:	5b                   	pop    %rbx
  40262e:	c3                   	retq   
  40262f:	90                   	nop
  402630:	48 8d 0d c9 52 00 00 	lea    0x52c9(%rip),%rcx        # 407900 <__mingwthr_cs>
  402637:	ff 15 df 5b 00 00    	callq  *0x5bdf(%rip)        # 40821c <__imp_InitializeCriticalSection>
  40263d:	eb db                	jmp    40261a <__mingw_TLScallback+0xaa>
  40263f:	90                   	nop
  402640:	e8 9b fd ff ff       	callq  4023e0 <__mingwthr_run_key_dtors.part.0>
  402645:	e9 74 ff ff ff       	jmpq   4025be <__mingw_TLScallback+0x4e>
  40264a:	90                   	nop
  40264b:	90                   	nop
  40264c:	90                   	nop
  40264d:	90                   	nop
  40264e:	90                   	nop
  40264f:	90                   	nop

0000000000402650 <_ValidateImageBase.part.0>:
  402650:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  402654:	48 01 c1             	add    %rax,%rcx
  402657:	31 c0                	xor    %eax,%eax
  402659:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
  40265f:	74 01                	je     402662 <_ValidateImageBase.part.0+0x12>
  402661:	c3                   	retq   
  402662:	31 c0                	xor    %eax,%eax
  402664:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
  40266a:	0f 94 c0             	sete   %al
  40266d:	c3                   	retq   
  40266e:	66 90                	xchg   %ax,%ax

0000000000402670 <_ValidateImageBase>:
  402670:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  402675:	74 09                	je     402680 <_ValidateImageBase+0x10>
  402677:	31 c0                	xor    %eax,%eax
  402679:	c3                   	retq   
  40267a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402680:	eb ce                	jmp    402650 <_ValidateImageBase.part.0>
  402682:	0f 1f 40 00          	nopl   0x0(%rax)
  402686:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40268d:	00 00 00 

0000000000402690 <_FindPESection>:
  402690:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  402694:	48 01 c1             	add    %rax,%rcx
  402697:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  40269b:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
  4026a0:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  4026a4:	85 c9                	test   %ecx,%ecx
  4026a6:	74 29                	je     4026d1 <_FindPESection+0x41>
  4026a8:	83 e9 01             	sub    $0x1,%ecx
  4026ab:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  4026af:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
  4026b4:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  4026b8:	49 39 d0             	cmp    %rdx,%r8
  4026bb:	4c 89 c1             	mov    %r8,%rcx
  4026be:	77 08                	ja     4026c8 <_FindPESection+0x38>
  4026c0:	03 48 08             	add    0x8(%rax),%ecx
  4026c3:	48 39 d1             	cmp    %rdx,%rcx
  4026c6:	77 0b                	ja     4026d3 <_FindPESection+0x43>
  4026c8:	48 83 c0 28          	add    $0x28,%rax
  4026cc:	4c 39 c8             	cmp    %r9,%rax
  4026cf:	75 e3                	jne    4026b4 <_FindPESection+0x24>
  4026d1:	31 c0                	xor    %eax,%eax
  4026d3:	c3                   	retq   
  4026d4:	66 90                	xchg   %ax,%ax
  4026d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4026dd:	00 00 00 

00000000004026e0 <_FindPESectionByName>:
  4026e0:	57                   	push   %rdi
  4026e1:	56                   	push   %rsi
  4026e2:	53                   	push   %rbx
  4026e3:	48 83 ec 20          	sub    $0x20,%rsp
  4026e7:	48 89 ce             	mov    %rcx,%rsi
  4026ea:	e8 91 03 00 00       	callq  402a80 <strlen>
  4026ef:	48 83 f8 08          	cmp    $0x8,%rax
  4026f3:	77 6b                	ja     402760 <_FindPESectionByName+0x80>
  4026f5:	48 8b 15 64 1c 00 00 	mov    0x1c64(%rip),%rdx        # 404360 <.refptr.__image_base__>
  4026fc:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  402701:	75 5d                	jne    402760 <_FindPESectionByName+0x80>
  402703:	48 89 d1             	mov    %rdx,%rcx
  402706:	e8 45 ff ff ff       	callq  402650 <_ValidateImageBase.part.0>
  40270b:	85 c0                	test   %eax,%eax
  40270d:	74 51                	je     402760 <_FindPESectionByName+0x80>
  40270f:	48 63 4a 3c          	movslq 0x3c(%rdx),%rcx
  402713:	48 01 d1             	add    %rdx,%rcx
  402716:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  40271a:	48 8d 5c 01 18       	lea    0x18(%rcx,%rax,1),%rbx
  40271f:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
  402723:	85 c0                	test   %eax,%eax
  402725:	74 39                	je     402760 <_FindPESectionByName+0x80>
  402727:	83 e8 01             	sub    $0x1,%eax
  40272a:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40272e:	48 8d 7c c3 28       	lea    0x28(%rbx,%rax,8),%rdi
  402733:	eb 09                	jmp    40273e <_FindPESectionByName+0x5e>
  402735:	48 83 c3 28          	add    $0x28,%rbx
  402739:	48 39 fb             	cmp    %rdi,%rbx
  40273c:	74 22                	je     402760 <_FindPESectionByName+0x80>
  40273e:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  402744:	48 89 f2             	mov    %rsi,%rdx
  402747:	48 89 d9             	mov    %rbx,%rcx
  40274a:	e8 29 03 00 00       	callq  402a78 <strncmp>
  40274f:	85 c0                	test   %eax,%eax
  402751:	75 e2                	jne    402735 <_FindPESectionByName+0x55>
  402753:	48 89 d8             	mov    %rbx,%rax
  402756:	48 83 c4 20          	add    $0x20,%rsp
  40275a:	5b                   	pop    %rbx
  40275b:	5e                   	pop    %rsi
  40275c:	5f                   	pop    %rdi
  40275d:	c3                   	retq   
  40275e:	66 90                	xchg   %ax,%ax
  402760:	31 db                	xor    %ebx,%ebx
  402762:	48 89 d8             	mov    %rbx,%rax
  402765:	48 83 c4 20          	add    $0x20,%rsp
  402769:	5b                   	pop    %rbx
  40276a:	5e                   	pop    %rsi
  40276b:	5f                   	pop    %rdi
  40276c:	c3                   	retq   
  40276d:	0f 1f 00             	nopl   (%rax)

0000000000402770 <__mingw_GetSectionForAddress>:
  402770:	48 83 ec 28          	sub    $0x28,%rsp
  402774:	4c 8b 05 e5 1b 00 00 	mov    0x1be5(%rip),%r8        # 404360 <.refptr.__image_base__>
  40277b:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  402781:	48 89 ca             	mov    %rcx,%rdx
  402784:	75 57                	jne    4027dd <__mingw_GetSectionForAddress+0x6d>
  402786:	4c 89 c1             	mov    %r8,%rcx
  402789:	e8 c2 fe ff ff       	callq  402650 <_ValidateImageBase.part.0>
  40278e:	85 c0                	test   %eax,%eax
  402790:	74 4b                	je     4027dd <__mingw_GetSectionForAddress+0x6d>
  402792:	49 63 40 3c          	movslq 0x3c(%r8),%rax
  402796:	48 89 d1             	mov    %rdx,%rcx
  402799:	4c 29 c1             	sub    %r8,%rcx
  40279c:	49 01 c0             	add    %rax,%r8
  40279f:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
  4027a4:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
  4027a9:	85 d2                	test   %edx,%edx
  4027ab:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
  4027b0:	74 2b                	je     4027dd <__mingw_GetSectionForAddress+0x6d>
  4027b2:	83 ea 01             	sub    $0x1,%edx
  4027b5:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  4027b9:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  4027be:	66 90                	xchg   %ax,%ax
  4027c0:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  4027c4:	4c 39 c1             	cmp    %r8,%rcx
  4027c7:	4c 89 c2             	mov    %r8,%rdx
  4027ca:	72 08                	jb     4027d4 <__mingw_GetSectionForAddress+0x64>
  4027cc:	03 50 08             	add    0x8(%rax),%edx
  4027cf:	48 39 d1             	cmp    %rdx,%rcx
  4027d2:	72 0b                	jb     4027df <__mingw_GetSectionForAddress+0x6f>
  4027d4:	48 83 c0 28          	add    $0x28,%rax
  4027d8:	4c 39 c8             	cmp    %r9,%rax
  4027db:	75 e3                	jne    4027c0 <__mingw_GetSectionForAddress+0x50>
  4027dd:	31 c0                	xor    %eax,%eax
  4027df:	48 83 c4 28          	add    $0x28,%rsp
  4027e3:	c3                   	retq   
  4027e4:	66 90                	xchg   %ax,%ax
  4027e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4027ed:	00 00 00 

00000000004027f0 <__mingw_GetSectionCount>:
  4027f0:	48 83 ec 28          	sub    $0x28,%rsp
  4027f4:	48 8b 15 65 1b 00 00 	mov    0x1b65(%rip),%rdx        # 404360 <.refptr.__image_base__>
  4027fb:	45 31 c0             	xor    %r8d,%r8d
  4027fe:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  402803:	74 0b                	je     402810 <__mingw_GetSectionCount+0x20>
  402805:	44 89 c0             	mov    %r8d,%eax
  402808:	48 83 c4 28          	add    $0x28,%rsp
  40280c:	c3                   	retq   
  40280d:	0f 1f 00             	nopl   (%rax)
  402810:	48 89 d1             	mov    %rdx,%rcx
  402813:	e8 38 fe ff ff       	callq  402650 <_ValidateImageBase.part.0>
  402818:	85 c0                	test   %eax,%eax
  40281a:	74 e9                	je     402805 <__mingw_GetSectionCount+0x15>
  40281c:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
  402820:	44 0f b7 44 10 06    	movzwl 0x6(%rax,%rdx,1),%r8d
  402826:	44 89 c0             	mov    %r8d,%eax
  402829:	48 83 c4 28          	add    $0x28,%rsp
  40282d:	c3                   	retq   
  40282e:	66 90                	xchg   %ax,%ax

0000000000402830 <_FindPESectionExec>:
  402830:	48 83 ec 28          	sub    $0x28,%rsp
  402834:	4c 8b 05 25 1b 00 00 	mov    0x1b25(%rip),%r8        # 404360 <.refptr.__image_base__>
  40283b:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  402841:	48 89 ca             	mov    %rcx,%rdx
  402844:	75 52                	jne    402898 <_FindPESectionExec+0x68>
  402846:	4c 89 c1             	mov    %r8,%rcx
  402849:	e8 02 fe ff ff       	callq  402650 <_ValidateImageBase.part.0>
  40284e:	85 c0                	test   %eax,%eax
  402850:	74 46                	je     402898 <_FindPESectionExec+0x68>
  402852:	49 63 48 3c          	movslq 0x3c(%r8),%rcx
  402856:	4c 01 c1             	add    %r8,%rcx
  402859:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  40285d:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
  402862:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  402866:	85 c9                	test   %ecx,%ecx
  402868:	74 2e                	je     402898 <_FindPESectionExec+0x68>
  40286a:	83 e9 01             	sub    $0x1,%ecx
  40286d:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  402871:	48 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%rcx
  402876:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40287d:	00 00 00 
  402880:	f6 40 27 20          	testb  $0x20,0x27(%rax)
  402884:	74 09                	je     40288f <_FindPESectionExec+0x5f>
  402886:	48 85 d2             	test   %rdx,%rdx
  402889:	74 0f                	je     40289a <_FindPESectionExec+0x6a>
  40288b:	48 83 ea 01          	sub    $0x1,%rdx
  40288f:	48 83 c0 28          	add    $0x28,%rax
  402893:	48 39 c8             	cmp    %rcx,%rax
  402896:	75 e8                	jne    402880 <_FindPESectionExec+0x50>
  402898:	31 c0                	xor    %eax,%eax
  40289a:	48 83 c4 28          	add    $0x28,%rsp
  40289e:	c3                   	retq   
  40289f:	90                   	nop

00000000004028a0 <_GetPEImageBase>:
  4028a0:	48 83 ec 28          	sub    $0x28,%rsp
  4028a4:	48 8b 15 b5 1a 00 00 	mov    0x1ab5(%rip),%rdx        # 404360 <.refptr.__image_base__>
  4028ab:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  4028b0:	75 1e                	jne    4028d0 <_GetPEImageBase+0x30>
  4028b2:	48 89 d1             	mov    %rdx,%rcx
  4028b5:	e8 96 fd ff ff       	callq  402650 <_ValidateImageBase.part.0>
  4028ba:	85 c0                	test   %eax,%eax
  4028bc:	b8 00 00 00 00       	mov    $0x0,%eax
  4028c1:	48 0f 45 c2          	cmovne %rdx,%rax
  4028c5:	48 83 c4 28          	add    $0x28,%rsp
  4028c9:	c3                   	retq   
  4028ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4028d0:	31 c0                	xor    %eax,%eax
  4028d2:	48 83 c4 28          	add    $0x28,%rsp
  4028d6:	c3                   	retq   
  4028d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4028de:	00 00 

00000000004028e0 <_IsNonwritableInCurrentImage>:
  4028e0:	48 83 ec 28          	sub    $0x28,%rsp
  4028e4:	4c 8b 05 75 1a 00 00 	mov    0x1a75(%rip),%r8        # 404360 <.refptr.__image_base__>
  4028eb:	31 c0                	xor    %eax,%eax
  4028ed:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  4028f3:	48 89 ca             	mov    %rcx,%rdx
  4028f6:	74 08                	je     402900 <_IsNonwritableInCurrentImage+0x20>
  4028f8:	48 83 c4 28          	add    $0x28,%rsp
  4028fc:	c3                   	retq   
  4028fd:	0f 1f 00             	nopl   (%rax)
  402900:	4c 89 c1             	mov    %r8,%rcx
  402903:	e8 48 fd ff ff       	callq  402650 <_ValidateImageBase.part.0>
  402908:	85 c0                	test   %eax,%eax
  40290a:	74 ec                	je     4028f8 <_IsNonwritableInCurrentImage+0x18>
  40290c:	49 63 40 3c          	movslq 0x3c(%r8),%rax
  402910:	48 89 d1             	mov    %rdx,%rcx
  402913:	4c 29 c1             	sub    %r8,%rcx
  402916:	49 01 c0             	add    %rax,%r8
  402919:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
  40291e:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
  402923:	85 d2                	test   %edx,%edx
  402925:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
  40292a:	74 31                	je     40295d <_IsNonwritableInCurrentImage+0x7d>
  40292c:	83 ea 01             	sub    $0x1,%edx
  40292f:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  402933:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  402938:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40293f:	00 
  402940:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  402944:	4c 39 c1             	cmp    %r8,%rcx
  402947:	4c 89 c2             	mov    %r8,%rdx
  40294a:	72 08                	jb     402954 <_IsNonwritableInCurrentImage+0x74>
  40294c:	03 50 08             	add    0x8(%rax),%edx
  40294f:	48 39 d1             	cmp    %rdx,%rcx
  402952:	72 10                	jb     402964 <_IsNonwritableInCurrentImage+0x84>
  402954:	48 83 c0 28          	add    $0x28,%rax
  402958:	4c 39 c8             	cmp    %r9,%rax
  40295b:	75 e3                	jne    402940 <_IsNonwritableInCurrentImage+0x60>
  40295d:	31 c0                	xor    %eax,%eax
  40295f:	48 83 c4 28          	add    $0x28,%rsp
  402963:	c3                   	retq   
  402964:	8b 40 24             	mov    0x24(%rax),%eax
  402967:	f7 d0                	not    %eax
  402969:	c1 e8 1f             	shr    $0x1f,%eax
  40296c:	48 83 c4 28          	add    $0x28,%rsp
  402970:	c3                   	retq   
  402971:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402976:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40297d:	00 00 00 

0000000000402980 <__mingw_enum_import_library_names>:
  402980:	48 83 ec 28          	sub    $0x28,%rsp
  402984:	4c 8b 1d d5 19 00 00 	mov    0x19d5(%rip),%r11        # 404360 <.refptr.__image_base__>
  40298b:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
  402991:	41 89 c9             	mov    %ecx,%r9d
  402994:	75 58                	jne    4029ee <__mingw_enum_import_library_names+0x6e>
  402996:	4c 89 d9             	mov    %r11,%rcx
  402999:	e8 b2 fc ff ff       	callq  402650 <_ValidateImageBase.part.0>
  40299e:	85 c0                	test   %eax,%eax
  4029a0:	74 4c                	je     4029ee <__mingw_enum_import_library_names+0x6e>
  4029a2:	49 63 43 3c          	movslq 0x3c(%r11),%rax
  4029a6:	4c 01 d8             	add    %r11,%rax
  4029a9:	8b 90 90 00 00 00    	mov    0x90(%rax),%edx
  4029af:	85 d2                	test   %edx,%edx
  4029b1:	74 3b                	je     4029ee <__mingw_enum_import_library_names+0x6e>
  4029b3:	0f b7 48 14          	movzwl 0x14(%rax),%ecx
  4029b7:	48 8d 4c 08 18       	lea    0x18(%rax,%rcx,1),%rcx
  4029bc:	0f b7 40 06          	movzwl 0x6(%rax),%eax
  4029c0:	85 c0                	test   %eax,%eax
  4029c2:	74 2a                	je     4029ee <__mingw_enum_import_library_names+0x6e>
  4029c4:	83 e8 01             	sub    $0x1,%eax
  4029c7:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4029cb:	48 8d 44 c1 28       	lea    0x28(%rcx,%rax,8),%rax
  4029d0:	44 8b 51 0c          	mov    0xc(%rcx),%r10d
  4029d4:	4c 39 d2             	cmp    %r10,%rdx
  4029d7:	4d 89 d0             	mov    %r10,%r8
  4029da:	72 09                	jb     4029e5 <__mingw_enum_import_library_names+0x65>
  4029dc:	44 03 41 08          	add    0x8(%rcx),%r8d
  4029e0:	4c 39 c2             	cmp    %r8,%rdx
  4029e3:	72 10                	jb     4029f5 <__mingw_enum_import_library_names+0x75>
  4029e5:	48 83 c1 28          	add    $0x28,%rcx
  4029e9:	48 39 c1             	cmp    %rax,%rcx
  4029ec:	75 e2                	jne    4029d0 <__mingw_enum_import_library_names+0x50>
  4029ee:	31 c0                	xor    %eax,%eax
  4029f0:	48 83 c4 28          	add    $0x28,%rsp
  4029f4:	c3                   	retq   
  4029f5:	4c 01 da             	add    %r11,%rdx
  4029f8:	75 0e                	jne    402a08 <__mingw_enum_import_library_names+0x88>
  4029fa:	eb f2                	jmp    4029ee <__mingw_enum_import_library_names+0x6e>
  4029fc:	0f 1f 40 00          	nopl   0x0(%rax)
  402a00:	41 83 e9 01          	sub    $0x1,%r9d
  402a04:	48 83 c2 14          	add    $0x14,%rdx
  402a08:	8b 4a 04             	mov    0x4(%rdx),%ecx
  402a0b:	85 c9                	test   %ecx,%ecx
  402a0d:	75 07                	jne    402a16 <__mingw_enum_import_library_names+0x96>
  402a0f:	8b 42 0c             	mov    0xc(%rdx),%eax
  402a12:	85 c0                	test   %eax,%eax
  402a14:	74 d8                	je     4029ee <__mingw_enum_import_library_names+0x6e>
  402a16:	45 85 c9             	test   %r9d,%r9d
  402a19:	7f e5                	jg     402a00 <__mingw_enum_import_library_names+0x80>
  402a1b:	8b 42 0c             	mov    0xc(%rdx),%eax
  402a1e:	4c 01 d8             	add    %r11,%rax
  402a21:	48 83 c4 28          	add    $0x28,%rsp
  402a25:	c3                   	retq   
  402a26:	90                   	nop
  402a27:	90                   	nop
  402a28:	90                   	nop
  402a29:	90                   	nop
  402a2a:	90                   	nop
  402a2b:	90                   	nop
  402a2c:	90                   	nop
  402a2d:	90                   	nop
  402a2e:	90                   	nop
  402a2f:	90                   	nop

0000000000402a30 <___chkstk_ms>:
  402a30:	51                   	push   %rcx
  402a31:	50                   	push   %rax
  402a32:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402a38:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
  402a3d:	72 19                	jb     402a58 <___chkstk_ms+0x28>
  402a3f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
  402a46:	48 83 09 00          	orq    $0x0,(%rcx)
  402a4a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
  402a50:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402a56:	77 e7                	ja     402a3f <___chkstk_ms+0xf>
  402a58:	48 29 c1             	sub    %rax,%rcx
  402a5b:	48 83 09 00          	orq    $0x0,(%rcx)
  402a5f:	58                   	pop    %rax
  402a60:	59                   	pop    %rcx
  402a61:	c3                   	retq   
  402a62:	90                   	nop
  402a63:	90                   	nop
  402a64:	90                   	nop
  402a65:	90                   	nop
  402a66:	90                   	nop
  402a67:	90                   	nop
  402a68:	90                   	nop
  402a69:	90                   	nop
  402a6a:	90                   	nop
  402a6b:	90                   	nop
  402a6c:	90                   	nop
  402a6d:	90                   	nop
  402a6e:	90                   	nop
  402a6f:	90                   	nop

0000000000402a70 <vfprintf>:
  402a70:	ff 25 e6 58 00 00    	jmpq   *0x58e6(%rip)        # 40835c <__imp_vfprintf>
  402a76:	90                   	nop
  402a77:	90                   	nop

0000000000402a78 <strncmp>:
  402a78:	ff 25 d6 58 00 00    	jmpq   *0x58d6(%rip)        # 408354 <__imp_strncmp>
  402a7e:	90                   	nop
  402a7f:	90                   	nop

0000000000402a80 <strlen>:
  402a80:	ff 25 c6 58 00 00    	jmpq   *0x58c6(%rip)        # 40834c <__imp_strlen>
  402a86:	90                   	nop
  402a87:	90                   	nop

0000000000402a88 <signal>:
  402a88:	ff 25 b6 58 00 00    	jmpq   *0x58b6(%rip)        # 408344 <__imp_signal>
  402a8e:	90                   	nop
  402a8f:	90                   	nop

0000000000402a90 <printf>:
  402a90:	ff 25 a6 58 00 00    	jmpq   *0x58a6(%rip)        # 40833c <__imp_printf>
  402a96:	90                   	nop
  402a97:	90                   	nop

0000000000402a98 <memcpy>:
  402a98:	ff 25 96 58 00 00    	jmpq   *0x5896(%rip)        # 408334 <__imp_memcpy>
  402a9e:	90                   	nop
  402a9f:	90                   	nop

0000000000402aa0 <malloc>:
  402aa0:	ff 25 86 58 00 00    	jmpq   *0x5886(%rip)        # 40832c <__imp_malloc>
  402aa6:	90                   	nop
  402aa7:	90                   	nop

0000000000402aa8 <fwrite>:
  402aa8:	ff 25 76 58 00 00    	jmpq   *0x5876(%rip)        # 408324 <__imp_fwrite>
  402aae:	90                   	nop
  402aaf:	90                   	nop

0000000000402ab0 <free>:
  402ab0:	ff 25 66 58 00 00    	jmpq   *0x5866(%rip)        # 40831c <__imp_free>
  402ab6:	90                   	nop
  402ab7:	90                   	nop

0000000000402ab8 <fprintf>:
  402ab8:	ff 25 56 58 00 00    	jmpq   *0x5856(%rip)        # 408314 <__imp_fprintf>
  402abe:	90                   	nop
  402abf:	90                   	nop

0000000000402ac0 <exit>:
  402ac0:	ff 25 46 58 00 00    	jmpq   *0x5846(%rip)        # 40830c <__imp_exit>
  402ac6:	90                   	nop
  402ac7:	90                   	nop

0000000000402ac8 <calloc>:
  402ac8:	ff 25 36 58 00 00    	jmpq   *0x5836(%rip)        # 408304 <__imp_calloc>
  402ace:	90                   	nop
  402acf:	90                   	nop

0000000000402ad0 <abort>:
  402ad0:	ff 25 26 58 00 00    	jmpq   *0x5826(%rip)        # 4082fc <__imp_abort>
  402ad6:	90                   	nop
  402ad7:	90                   	nop

0000000000402ad8 <_onexit>:
  402ad8:	ff 25 16 58 00 00    	jmpq   *0x5816(%rip)        # 4082f4 <__imp__onexit>
  402ade:	90                   	nop
  402adf:	90                   	nop

0000000000402ae0 <_initterm>:
  402ae0:	ff 25 06 58 00 00    	jmpq   *0x5806(%rip)        # 4082ec <__imp__initterm>
  402ae6:	90                   	nop
  402ae7:	90                   	nop

0000000000402ae8 <_cexit>:
  402ae8:	ff 25 ee 57 00 00    	jmpq   *0x57ee(%rip)        # 4082dc <__imp__cexit>
  402aee:	90                   	nop
  402aef:	90                   	nop

0000000000402af0 <_amsg_exit>:
  402af0:	ff 25 de 57 00 00    	jmpq   *0x57de(%rip)        # 4082d4 <__imp__amsg_exit>
  402af6:	90                   	nop
  402af7:	90                   	nop

0000000000402af8 <__setusermatherr>:
  402af8:	ff 25 c6 57 00 00    	jmpq   *0x57c6(%rip)        # 4082c4 <__imp___setusermatherr>
  402afe:	90                   	nop
  402aff:	90                   	nop

0000000000402b00 <__set_app_type>:
  402b00:	ff 25 b6 57 00 00    	jmpq   *0x57b6(%rip)        # 4082bc <__imp___set_app_type>
  402b06:	90                   	nop
  402b07:	90                   	nop

0000000000402b08 <__lconv_init>:
  402b08:	ff 25 a6 57 00 00    	jmpq   *0x57a6(%rip)        # 4082b4 <__imp___lconv_init>
  402b0e:	90                   	nop
  402b0f:	90                   	nop

0000000000402b10 <__getmainargs>:
  402b10:	ff 25 86 57 00 00    	jmpq   *0x5786(%rip)        # 40829c <__imp___getmainargs>
  402b16:	90                   	nop
  402b17:	90                   	nop

0000000000402b18 <__C_specific_handler>:
  402b18:	ff 25 76 57 00 00    	jmpq   *0x5776(%rip)        # 408294 <__imp___C_specific_handler>
  402b1e:	90                   	nop
  402b1f:	90                   	nop

0000000000402b20 <__acrt_iob_func>:
  402b20:	53                   	push   %rbx
  402b21:	48 83 ec 20          	sub    $0x20,%rsp
  402b25:	89 cb                	mov    %ecx,%ebx
  402b27:	e8 54 00 00 00       	callq  402b80 <__iob_func>
  402b2c:	89 d9                	mov    %ebx,%ecx
  402b2e:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
  402b32:	48 c1 e2 04          	shl    $0x4,%rdx
  402b36:	48 01 d0             	add    %rdx,%rax
  402b39:	48 83 c4 20          	add    $0x20,%rsp
  402b3d:	5b                   	pop    %rbx
  402b3e:	c3                   	retq   
  402b3f:	90                   	nop

0000000000402b40 <_get_invalid_parameter_handler>:
  402b40:	48 8b 05 09 4e 00 00 	mov    0x4e09(%rip),%rax        # 407950 <handler>
  402b47:	c3                   	retq   
  402b48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402b4f:	00 

0000000000402b50 <_set_invalid_parameter_handler>:
  402b50:	48 89 c8             	mov    %rcx,%rax
  402b53:	48 87 05 f6 4d 00 00 	xchg   %rax,0x4df6(%rip)        # 407950 <handler>
  402b5a:	c3                   	retq   
  402b5b:	90                   	nop
  402b5c:	90                   	nop
  402b5d:	90                   	nop
  402b5e:	90                   	nop
  402b5f:	90                   	nop

0000000000402b60 <__p__acmdln>:
  402b60:	48 8b 05 19 18 00 00 	mov    0x1819(%rip),%rax        # 404380 <.refptr.__imp__acmdln>
  402b67:	48 8b 00             	mov    (%rax),%rax
  402b6a:	c3                   	retq   
  402b6b:	90                   	nop
  402b6c:	90                   	nop
  402b6d:	90                   	nop
  402b6e:	90                   	nop
  402b6f:	90                   	nop

0000000000402b70 <__p__fmode>:
  402b70:	48 8b 05 19 18 00 00 	mov    0x1819(%rip),%rax        # 404390 <.refptr.__imp__fmode>
  402b77:	48 8b 00             	mov    (%rax),%rax
  402b7a:	c3                   	retq   
  402b7b:	90                   	nop
  402b7c:	90                   	nop
  402b7d:	90                   	nop
  402b7e:	90                   	nop
  402b7f:	90                   	nop

0000000000402b80 <__iob_func>:
  402b80:	ff 25 26 57 00 00    	jmpq   *0x5726(%rip)        # 4082ac <__imp___iob_func>
  402b86:	90                   	nop
  402b87:	90                   	nop
  402b88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402b8f:	00 

0000000000402b90 <VirtualQuery>:
  402b90:	ff 25 ee 56 00 00    	jmpq   *0x56ee(%rip)        # 408284 <__imp_VirtualQuery>
  402b96:	90                   	nop
  402b97:	90                   	nop

0000000000402b98 <VirtualProtect>:
  402b98:	ff 25 de 56 00 00    	jmpq   *0x56de(%rip)        # 40827c <__imp_VirtualProtect>
  402b9e:	90                   	nop
  402b9f:	90                   	nop

0000000000402ba0 <UnhandledExceptionFilter>:
  402ba0:	ff 25 ce 56 00 00    	jmpq   *0x56ce(%rip)        # 408274 <__imp_UnhandledExceptionFilter>
  402ba6:	90                   	nop
  402ba7:	90                   	nop

0000000000402ba8 <TlsGetValue>:
  402ba8:	ff 25 be 56 00 00    	jmpq   *0x56be(%rip)        # 40826c <__imp_TlsGetValue>
  402bae:	90                   	nop
  402baf:	90                   	nop

0000000000402bb0 <TerminateProcess>:
  402bb0:	ff 25 ae 56 00 00    	jmpq   *0x56ae(%rip)        # 408264 <__imp_TerminateProcess>
  402bb6:	90                   	nop
  402bb7:	90                   	nop

0000000000402bb8 <Sleep>:
  402bb8:	ff 25 9e 56 00 00    	jmpq   *0x569e(%rip)        # 40825c <__imp_Sleep>
  402bbe:	90                   	nop
  402bbf:	90                   	nop

0000000000402bc0 <SetUnhandledExceptionFilter>:
  402bc0:	ff 25 8e 56 00 00    	jmpq   *0x568e(%rip)        # 408254 <__imp_SetUnhandledExceptionFilter>
  402bc6:	90                   	nop
  402bc7:	90                   	nop

0000000000402bc8 <RtlVirtualUnwind>:
  402bc8:	ff 25 7e 56 00 00    	jmpq   *0x567e(%rip)        # 40824c <__imp_RtlVirtualUnwind>
  402bce:	90                   	nop
  402bcf:	90                   	nop

0000000000402bd0 <RtlLookupFunctionEntry>:
  402bd0:	ff 25 6e 56 00 00    	jmpq   *0x566e(%rip)        # 408244 <__imp_RtlLookupFunctionEntry>
  402bd6:	90                   	nop
  402bd7:	90                   	nop

0000000000402bd8 <RtlCaptureContext>:
  402bd8:	ff 25 5e 56 00 00    	jmpq   *0x565e(%rip)        # 40823c <__imp_RtlCaptureContext>
  402bde:	90                   	nop
  402bdf:	90                   	nop

0000000000402be0 <RtlAddFunctionTable>:
  402be0:	ff 25 4e 56 00 00    	jmpq   *0x564e(%rip)        # 408234 <__imp_RtlAddFunctionTable>
  402be6:	90                   	nop
  402be7:	90                   	nop

0000000000402be8 <QueryPerformanceCounter>:
  402be8:	ff 25 3e 56 00 00    	jmpq   *0x563e(%rip)        # 40822c <__imp_QueryPerformanceCounter>
  402bee:	90                   	nop
  402bef:	90                   	nop

0000000000402bf0 <LeaveCriticalSection>:
  402bf0:	ff 25 2e 56 00 00    	jmpq   *0x562e(%rip)        # 408224 <__imp_LeaveCriticalSection>
  402bf6:	90                   	nop
  402bf7:	90                   	nop

0000000000402bf8 <InitializeCriticalSection>:
  402bf8:	ff 25 1e 56 00 00    	jmpq   *0x561e(%rip)        # 40821c <__imp_InitializeCriticalSection>
  402bfe:	90                   	nop
  402bff:	90                   	nop

0000000000402c00 <GetTickCount>:
  402c00:	ff 25 0e 56 00 00    	jmpq   *0x560e(%rip)        # 408214 <__imp_GetTickCount>
  402c06:	90                   	nop
  402c07:	90                   	nop

0000000000402c08 <GetSystemTimeAsFileTime>:
  402c08:	ff 25 fe 55 00 00    	jmpq   *0x55fe(%rip)        # 40820c <__imp_GetSystemTimeAsFileTime>
  402c0e:	90                   	nop
  402c0f:	90                   	nop

0000000000402c10 <GetStartupInfoA>:
  402c10:	ff 25 ee 55 00 00    	jmpq   *0x55ee(%rip)        # 408204 <__imp_GetStartupInfoA>
  402c16:	90                   	nop
  402c17:	90                   	nop

0000000000402c18 <GetLastError>:
  402c18:	ff 25 de 55 00 00    	jmpq   *0x55de(%rip)        # 4081fc <__imp_GetLastError>
  402c1e:	90                   	nop
  402c1f:	90                   	nop

0000000000402c20 <GetCurrentThreadId>:
  402c20:	ff 25 ce 55 00 00    	jmpq   *0x55ce(%rip)        # 4081f4 <__imp_GetCurrentThreadId>
  402c26:	90                   	nop
  402c27:	90                   	nop

0000000000402c28 <GetCurrentProcessId>:
  402c28:	ff 25 be 55 00 00    	jmpq   *0x55be(%rip)        # 4081ec <__imp_GetCurrentProcessId>
  402c2e:	90                   	nop
  402c2f:	90                   	nop

0000000000402c30 <GetCurrentProcess>:
  402c30:	ff 25 ae 55 00 00    	jmpq   *0x55ae(%rip)        # 4081e4 <__imp_GetCurrentProcess>
  402c36:	90                   	nop
  402c37:	90                   	nop

0000000000402c38 <EnterCriticalSection>:
  402c38:	ff 25 9e 55 00 00    	jmpq   *0x559e(%rip)        # 4081dc <__imp_EnterCriticalSection>
  402c3e:	90                   	nop
  402c3f:	90                   	nop

0000000000402c40 <DeleteCriticalSection>:
  402c40:	ff 25 8e 55 00 00    	jmpq   *0x558e(%rip)        # 4081d4 <__IAT_start__>
  402c46:	90                   	nop
  402c47:	90                   	nop
  402c48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402c4f:	00 

0000000000402c50 <__report_error>:
  402c50:	56                   	push   %rsi
  402c51:	53                   	push   %rbx
  402c52:	48 83 ec 38          	sub    $0x38,%rsp
  402c56:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
  402c5b:	48 89 cb             	mov    %rcx,%rbx
  402c5e:	b9 02 00 00 00       	mov    $0x2,%ecx
  402c63:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
  402c68:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
  402c6d:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
  402c72:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  402c77:	e8 a4 fe ff ff       	callq  402b20 <__acrt_iob_func>
  402c7c:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
  402c82:	ba 01 00 00 00       	mov    $0x1,%edx
  402c87:	48 8d 0d 52 15 00 00 	lea    0x1552(%rip),%rcx        # 4041e0 <.rdata>
  402c8e:	49 89 c1             	mov    %rax,%r9
  402c91:	e8 12 fe ff ff       	callq  402aa8 <fwrite>
  402c96:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  402c9b:	b9 02 00 00 00       	mov    $0x2,%ecx
  402ca0:	e8 7b fe ff ff       	callq  402b20 <__acrt_iob_func>
  402ca5:	48 89 da             	mov    %rbx,%rdx
  402ca8:	48 89 c1             	mov    %rax,%rcx
  402cab:	49 89 f0             	mov    %rsi,%r8
  402cae:	e8 bd fd ff ff       	callq  402a70 <vfprintf>
  402cb3:	e8 18 fe ff ff       	callq  402ad0 <abort>
  402cb8:	90                   	nop
  402cb9:	90                   	nop
  402cba:	90                   	nop
  402cbb:	90                   	nop
  402cbc:	90                   	nop
  402cbd:	90                   	nop
  402cbe:	90                   	nop
  402cbf:	90                   	nop

0000000000402cc0 <register_frame_ctor>:
  402cc0:	e9 6b e8 ff ff       	jmpq   401530 <__gcc_register_frame>
  402cc5:	90                   	nop
  402cc6:	90                   	nop
  402cc7:	90                   	nop
  402cc8:	90                   	nop
  402cc9:	90                   	nop
  402cca:	90                   	nop
  402ccb:	90                   	nop
  402ccc:	90                   	nop
  402ccd:	90                   	nop
  402cce:	90                   	nop
  402ccf:	90                   	nop

0000000000402cd0 <__CTOR_LIST__>:
  402cd0:	ff                   	(bad)  
  402cd1:	ff                   	(bad)  
  402cd2:	ff                   	(bad)  
  402cd3:	ff                   	(bad)  
  402cd4:	ff                   	(bad)  
  402cd5:	ff                   	(bad)  
  402cd6:	ff                   	(bad)  
  402cd7:	ff                   	.byte 0xff

0000000000402cd8 <.ctors.65535>:
  402cd8:	c0 2c 40 00          	shrb   $0x0,(%rax,%rax,2)
	...

0000000000402ce8 <__DTOR_LIST__>:
  402ce8:	ff                   	(bad)  
  402ce9:	ff                   	(bad)  
  402cea:	ff                   	(bad)  
  402ceb:	ff                   	(bad)  
  402cec:	ff                   	(bad)  
  402ced:	ff                   	(bad)  
  402cee:	ff                   	(bad)  
  402cef:	ff 00                	incl   (%rax)
  402cf1:	00 00                	add    %al,(%rax)
  402cf3:	00 00                	add    %al,(%rax)
  402cf5:	00 00                	add    %al,(%rax)
	...
