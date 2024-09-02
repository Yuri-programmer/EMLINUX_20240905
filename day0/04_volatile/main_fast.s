
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
  401070:	e8 2b 1a 00 00       	callq  402aa0 <__set_app_type>
  401075:	e8 96 1a 00 00       	callq  402b10 <__p__fmode>
  40107a:	48 8b 15 9f 33 00 00 	mov    0x339f(%rip),%rdx        # 404420 <.refptr._fmode>
  401081:	8b 12                	mov    (%rdx),%edx
  401083:	89 10                	mov    %edx,(%rax)
  401085:	e8 a6 05 00 00       	callq  401630 <_setargv>
  40108a:	48 8b 05 7f 32 00 00 	mov    0x327f(%rip),%rax        # 404310 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
  401091:	83 38 01             	cmpl   $0x1,(%rax)
  401094:	74 5a                	je     4010f0 <pre_c_init+0xe0>
  401096:	31 c0                	xor    %eax,%eax
  401098:	48 83 c4 28          	add    $0x28,%rsp
  40109c:	c3                   	retq   
  40109d:	0f 1f 00             	nopl   (%rax)
  4010a0:	b9 01 00 00 00       	mov    $0x1,%ecx
  4010a5:	e8 f6 19 00 00       	callq  402aa0 <__set_app_type>
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
  4010f0:	48 8d 0d 49 08 00 00 	lea    0x849(%rip),%rcx        # 401940 <_matherr>
  4010f7:	e8 34 08 00 00       	callq  401930 <__mingw_setusermatherr>
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
  40116e:	e8 3d 19 00 00       	callq  402ab0 <__getmainargs>
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
  401247:	e8 f4 09 00 00       	callq  401c40 <_pei386_runtime_relocator>
  40124c:	48 8d 0d 3d 0f 00 00 	lea    0xf3d(%rip),%rcx        # 402190 <_gnu_exception_handler>
  401253:	ff 15 fb 6f 00 00    	callq  *0x6ffb(%rip)        # 408254 <__imp_SetUnhandledExceptionFilter>
  401259:	48 8b 15 40 31 00 00 	mov    0x3140(%rip),%rdx        # 4043a0 <.refptr.__mingw_oldexcpt_handler>
  401260:	48 89 02             	mov    %rax,(%rdx)
  401263:	e8 38 0e 00 00       	callq  4020a0 <__mingw_init_ehandler>
  401268:	48 8d 0d 91 fd ff ff 	lea    -0x26f(%rip),%rcx        # 401000 <__mingw_invalidParameterHandler>
  40126f:	e8 7c 18 00 00       	callq  402af0 <_set_invalid_parameter_handler>
  401274:	e8 c7 07 00 00       	callq  401a40 <_fpreset>
  401279:	48 8b 05 e0 30 00 00 	mov    0x30e0(%rip),%rax        # 404360 <.refptr.__image_base__>
  401280:	48 89 05 e1 66 00 00 	mov    %rax,0x66e1(%rip)        # 407968 <__mingw_winmain_hInstance>
  401287:	e8 74 18 00 00       	callq  402b00 <__p__acmdln>
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
  401329:	e8 12 17 00 00       	callq  402a40 <malloc>
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
  401354:	e8 c7 16 00 00       	callq  402a20 <strlen>
  401359:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40135d:	48 89 f1             	mov    %rsi,%rcx
  401360:	e8 db 16 00 00       	callq  402a40 <malloc>
  401365:	49 89 f0             	mov    %rsi,%r8
  401368:	48 89 44 1d 00       	mov    %rax,0x0(%rbp,%rbx,1)
  40136d:	48 8b 14 1f          	mov    (%rdi,%rbx,1),%rdx
  401371:	48 89 c1             	mov    %rax,%rcx
  401374:	48 83 c3 08          	add    $0x8,%rbx
  401378:	e8 bb 16 00 00       	callq  402a38 <memcpy>
  40137d:	49 39 dd             	cmp    %rbx,%r13
  401380:	75 ce                	jne    401350 <__tmainCRTStartup+0x1d0>
  401382:	4a 8d 44 25 f8       	lea    -0x8(%rbp,%r12,1),%rax
  401387:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  40138e:	48 89 2d 83 5c 00 00 	mov    %rbp,0x5c83(%rip)        # 407018 <argv>
  401395:	e8 66 02 00 00       	callq  401600 <__main>
  40139a:	48 8b 05 cf 2f 00 00 	mov    0x2fcf(%rip),%rax        # 404370 <.refptr.__imp___initenv>
  4013a1:	48 8b 15 68 5c 00 00 	mov    0x5c68(%rip),%rdx        # 407010 <envp>
  4013a8:	8b 0d 72 5c 00 00    	mov    0x5c72(%rip),%ecx        # 407020 <argc>
  4013ae:	48 8b 00             	mov    (%rax),%rax
  4013b1:	48 89 10             	mov    %rdx,(%rax)
  4013b4:	4c 8b 05 55 5c 00 00 	mov    0x5c55(%rip),%r8        # 407010 <envp>
  4013bb:	48 8b 15 56 5c 00 00 	mov    0x5c56(%rip),%rdx        # 407018 <argv>
  4013c2:	e8 29 18 00 00       	callq  402bf0 <main>
  4013c7:	8b 0d 3b 5c 00 00    	mov    0x5c3b(%rip),%ecx        # 407008 <managedapp>
  4013cd:	89 05 39 5c 00 00    	mov    %eax,0x5c39(%rip)        # 40700c <mainret>
  4013d3:	85 c9                	test   %ecx,%ecx
  4013d5:	0f 84 c3 00 00 00    	je     40149e <__tmainCRTStartup+0x31e>
  4013db:	8b 15 23 5c 00 00    	mov    0x5c23(%rip),%edx        # 407004 <has_cctor>
  4013e1:	85 d2                	test   %edx,%edx
  4013e3:	75 0b                	jne    4013f0 <__tmainCRTStartup+0x270>
  4013e5:	e8 9e 16 00 00       	callq  402a88 <_cexit>
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
  40142c:	e8 5f 16 00 00       	callq  402a90 <_amsg_exit>
  401431:	8b 06                	mov    (%rsi),%eax
  401433:	83 f8 01             	cmp    $0x1,%eax
  401436:	0f 85 e8 fd ff ff    	jne    401224 <__tmainCRTStartup+0xa4>
  40143c:	48 8b 15 9d 2f 00 00 	mov    0x2f9d(%rip),%rdx        # 4043e0 <.refptr.__xc_z>
  401443:	48 8b 0d 86 2f 00 00 	mov    0x2f86(%rip),%rcx        # 4043d0 <.refptr.__xc_a>
  40144a:	e8 31 16 00 00       	callq  402a80 <_initterm>
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
  401494:	e8 e7 15 00 00       	callq  402a80 <_initterm>
  401499:	e9 7b fd ff ff       	jmpq   401219 <__tmainCRTStartup+0x99>
  40149e:	89 c1                	mov    %eax,%ecx
  4014a0:	e8 bb 15 00 00       	callq  402a60 <exit>
  4014a5:	90                   	nop
  4014a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4014ad:	00 00 00 

00000000004014b0 <WinMainCRTStartup>:
  4014b0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014b4 <.l_startw>:
  4014b4:	48 8b 05 a5 2f 00 00 	mov    0x2fa5(%rip),%rax        # 404460 <.refptr.mingw_app_type>
  4014bb:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  4014c1:	e8 7a 01 00 00       	callq  401640 <__security_init_cookie>
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
  4014f1:	e8 4a 01 00 00       	callq  401640 <__security_init_cookie>
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
  401514:	e8 5f 15 00 00       	callq  402a78 <_onexit>
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

0000000000401550 <__do_global_dtors>:
  401550:	48 83 ec 28          	sub    $0x28,%rsp
  401554:	48 8b 05 b5 1a 00 00 	mov    0x1ab5(%rip),%rax        # 403010 <p.93846>
  40155b:	48 8b 00             	mov    (%rax),%rax
  40155e:	48 85 c0             	test   %rax,%rax
  401561:	74 1d                	je     401580 <__do_global_dtors+0x30>
  401563:	ff d0                	callq  *%rax
  401565:	48 8b 05 a4 1a 00 00 	mov    0x1aa4(%rip),%rax        # 403010 <p.93846>
  40156c:	48 8d 50 08          	lea    0x8(%rax),%rdx
  401570:	48 8b 40 08          	mov    0x8(%rax),%rax
  401574:	48 89 15 95 1a 00 00 	mov    %rdx,0x1a95(%rip)        # 403010 <p.93846>
  40157b:	48 85 c0             	test   %rax,%rax
  40157e:	75 e3                	jne    401563 <__do_global_dtors+0x13>
  401580:	48 83 c4 28          	add    $0x28,%rsp
  401584:	c3                   	retq   
  401585:	90                   	nop
  401586:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40158d:	00 00 00 

0000000000401590 <__do_global_ctors>:
  401590:	56                   	push   %rsi
  401591:	53                   	push   %rbx
  401592:	48 83 ec 28          	sub    $0x28,%rsp
  401596:	48 8b 0d 83 2d 00 00 	mov    0x2d83(%rip),%rcx        # 404320 <.refptr.__CTOR_LIST__>
  40159d:	48 8b 11             	mov    (%rcx),%rdx
  4015a0:	83 fa ff             	cmp    $0xffffffff,%edx
  4015a3:	89 d0                	mov    %edx,%eax
  4015a5:	74 39                	je     4015e0 <__do_global_ctors+0x50>
  4015a7:	85 c0                	test   %eax,%eax
  4015a9:	74 20                	je     4015cb <__do_global_ctors+0x3b>
  4015ab:	89 c2                	mov    %eax,%edx
  4015ad:	83 e8 01             	sub    $0x1,%eax
  4015b0:	48 8d 1c d1          	lea    (%rcx,%rdx,8),%rbx
  4015b4:	48 29 c2             	sub    %rax,%rdx
  4015b7:	48 8d 74 d1 f8       	lea    -0x8(%rcx,%rdx,8),%rsi
  4015bc:	0f 1f 40 00          	nopl   0x0(%rax)
  4015c0:	ff 13                	callq  *(%rbx)
  4015c2:	48 83 eb 08          	sub    $0x8,%rbx
  4015c6:	48 39 f3             	cmp    %rsi,%rbx
  4015c9:	75 f5                	jne    4015c0 <__do_global_ctors+0x30>
  4015cb:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 401550 <__do_global_dtors>
  4015d2:	48 83 c4 28          	add    $0x28,%rsp
  4015d6:	5b                   	pop    %rbx
  4015d7:	5e                   	pop    %rsi
  4015d8:	e9 33 ff ff ff       	jmpq   401510 <atexit>
  4015dd:	0f 1f 00             	nopl   (%rax)
  4015e0:	31 c0                	xor    %eax,%eax
  4015e2:	eb 02                	jmp    4015e6 <__do_global_ctors+0x56>
  4015e4:	89 d0                	mov    %edx,%eax
  4015e6:	44 8d 40 01          	lea    0x1(%rax),%r8d
  4015ea:	4a 83 3c c1 00       	cmpq   $0x0,(%rcx,%r8,8)
  4015ef:	4c 89 c2             	mov    %r8,%rdx
  4015f2:	75 f0                	jne    4015e4 <__do_global_ctors+0x54>
  4015f4:	eb b1                	jmp    4015a7 <__do_global_ctors+0x17>
  4015f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4015fd:	00 00 00 

0000000000401600 <__main>:
  401600:	8b 05 2a 5a 00 00    	mov    0x5a2a(%rip),%eax        # 407030 <initialized>
  401606:	85 c0                	test   %eax,%eax
  401608:	74 06                	je     401610 <__main+0x10>
  40160a:	c3                   	retq   
  40160b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401610:	c7 05 16 5a 00 00 01 	movl   $0x1,0x5a16(%rip)        # 407030 <initialized>
  401617:	00 00 00 
  40161a:	e9 71 ff ff ff       	jmpq   401590 <__do_global_ctors>
  40161f:	90                   	nop

0000000000401620 <my_lconv_init>:
  401620:	48 ff 25 8d 6c 00 00 	rex.W jmpq *0x6c8d(%rip)        # 4082b4 <__imp___lconv_init>
  401627:	90                   	nop
  401628:	90                   	nop
  401629:	90                   	nop
  40162a:	90                   	nop
  40162b:	90                   	nop
  40162c:	90                   	nop
  40162d:	90                   	nop
  40162e:	90                   	nop
  40162f:	90                   	nop

0000000000401630 <_setargv>:
  401630:	31 c0                	xor    %eax,%eax
  401632:	c3                   	retq   
  401633:	90                   	nop
  401634:	90                   	nop
  401635:	90                   	nop
  401636:	90                   	nop
  401637:	90                   	nop
  401638:	90                   	nop
  401639:	90                   	nop
  40163a:	90                   	nop
  40163b:	90                   	nop
  40163c:	90                   	nop
  40163d:	90                   	nop
  40163e:	90                   	nop
  40163f:	90                   	nop

0000000000401640 <__security_init_cookie>:
  401640:	41 54                	push   %r12
  401642:	55                   	push   %rbp
  401643:	57                   	push   %rdi
  401644:	56                   	push   %rsi
  401645:	53                   	push   %rbx
  401646:	48 83 ec 30          	sub    $0x30,%rsp
  40164a:	48 8b 1d 5f 1a 00 00 	mov    0x1a5f(%rip),%rbx        # 4030b0 <__security_cookie>
  401651:	48 b8 32 a2 df 2d 99 	movabs $0x2b992ddfa232,%rax
  401658:	2b 00 00 
  40165b:	48 39 c3             	cmp    %rax,%rbx
  40165e:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  401665:	00 00 
  401667:	74 17                	je     401680 <__security_init_cookie+0x40>
  401669:	48 f7 d3             	not    %rbx
  40166c:	48 89 1d 4d 1a 00 00 	mov    %rbx,0x1a4d(%rip)        # 4030c0 <__security_cookie_complement>
  401673:	48 83 c4 30          	add    $0x30,%rsp
  401677:	5b                   	pop    %rbx
  401678:	5e                   	pop    %rsi
  401679:	5f                   	pop    %rdi
  40167a:	5d                   	pop    %rbp
  40167b:	41 5c                	pop    %r12
  40167d:	c3                   	retq   
  40167e:	66 90                	xchg   %ax,%ax
  401680:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  401685:	ff 15 81 6b 00 00    	callq  *0x6b81(%rip)        # 40820c <__imp_GetSystemTimeAsFileTime>
  40168b:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
  401690:	ff 15 56 6b 00 00    	callq  *0x6b56(%rip)        # 4081ec <__imp_GetCurrentProcessId>
  401696:	41 89 c4             	mov    %eax,%r12d
  401699:	ff 15 55 6b 00 00    	callq  *0x6b55(%rip)        # 4081f4 <__imp_GetCurrentThreadId>
  40169f:	89 c5                	mov    %eax,%ebp
  4016a1:	ff 15 6d 6b 00 00    	callq  *0x6b6d(%rip)        # 408214 <__imp_GetTickCount>
  4016a7:	48 8d 4c 24 28       	lea    0x28(%rsp),%rcx
  4016ac:	89 c7                	mov    %eax,%edi
  4016ae:	ff 15 78 6b 00 00    	callq  *0x6b78(%rip)        # 40822c <__imp_QueryPerformanceCounter>
  4016b4:	48 33 74 24 28       	xor    0x28(%rsp),%rsi
  4016b9:	44 89 e0             	mov    %r12d,%eax
  4016bc:	48 ba ff ff ff ff ff 	movabs $0xffffffffffff,%rdx
  4016c3:	ff 00 00 
  4016c6:	48 31 f0             	xor    %rsi,%rax
  4016c9:	89 ee                	mov    %ebp,%esi
  4016cb:	48 31 c6             	xor    %rax,%rsi
  4016ce:	89 f8                	mov    %edi,%eax
  4016d0:	48 31 f0             	xor    %rsi,%rax
  4016d3:	48 21 d0             	and    %rdx,%rax
  4016d6:	48 39 d8             	cmp    %rbx,%rax
  4016d9:	74 25                	je     401700 <__security_init_cookie+0xc0>
  4016db:	48 89 c2             	mov    %rax,%rdx
  4016de:	48 f7 d2             	not    %rdx
  4016e1:	48 89 05 c8 19 00 00 	mov    %rax,0x19c8(%rip)        # 4030b0 <__security_cookie>
  4016e8:	48 89 15 d1 19 00 00 	mov    %rdx,0x19d1(%rip)        # 4030c0 <__security_cookie_complement>
  4016ef:	48 83 c4 30          	add    $0x30,%rsp
  4016f3:	5b                   	pop    %rbx
  4016f4:	5e                   	pop    %rsi
  4016f5:	5f                   	pop    %rdi
  4016f6:	5d                   	pop    %rbp
  4016f7:	41 5c                	pop    %r12
  4016f9:	c3                   	retq   
  4016fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401700:	48 ba cc 5d 20 d2 66 	movabs $0xffffd466d2205dcc,%rdx
  401707:	d4 ff ff 
  40170a:	48 b8 33 a2 df 2d 99 	movabs $0x2b992ddfa233,%rax
  401711:	2b 00 00 
  401714:	eb cb                	jmp    4016e1 <__security_init_cookie+0xa1>
  401716:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40171d:	00 00 00 

0000000000401720 <__report_gsfailure>:
  401720:	55                   	push   %rbp
  401721:	56                   	push   %rsi
  401722:	53                   	push   %rbx
  401723:	48 89 e5             	mov    %rsp,%rbp
  401726:	48 83 ec 70          	sub    $0x70,%rsp
  40172a:	48 89 ce             	mov    %rcx,%rsi
  40172d:	48 8d 0d 2c 59 00 00 	lea    0x592c(%rip),%rcx        # 407060 <GS_ContextRecord>
  401734:	ff 15 02 6b 00 00    	callq  *0x6b02(%rip)        # 40823c <__imp_RtlCaptureContext>
  40173a:	48 8b 1d 17 5a 00 00 	mov    0x5a17(%rip),%rbx        # 407158 <GS_ContextRecord+0xf8>
  401741:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
  401745:	45 31 c0             	xor    %r8d,%r8d
  401748:	48 89 d9             	mov    %rbx,%rcx
  40174b:	ff 15 f3 6a 00 00    	callq  *0x6af3(%rip)        # 408244 <__imp_RtlLookupFunctionEntry>
  401751:	48 85 c0             	test   %rax,%rax
  401754:	0f 84 a3 00 00 00    	je     4017fd <__report_gsfailure+0xdd>
  40175a:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
  40175e:	49 89 c1             	mov    %rax,%r9
  401761:	49 89 d8             	mov    %rbx,%r8
  401764:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  40176b:	00 00 
  40176d:	48 8d 0d ec 58 00 00 	lea    0x58ec(%rip),%rcx        # 407060 <GS_ContextRecord>
  401774:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
  401779:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
  40177d:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
  401782:	31 c9                	xor    %ecx,%ecx
  401784:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  401789:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  40178d:	ff 15 b9 6a 00 00    	callq  *0x6ab9(%rip)        # 40824c <__imp_RtlVirtualUnwind>
  401793:	48 8b 05 be 59 00 00 	mov    0x59be(%rip),%rax        # 407158 <GS_ContextRecord+0xf8>
  40179a:	31 c9                	xor    %ecx,%ecx
  40179c:	48 89 35 3d 59 00 00 	mov    %rsi,0x593d(%rip)        # 4070e0 <GS_ContextRecord+0x80>
  4017a3:	48 89 05 a6 5d 00 00 	mov    %rax,0x5da6(%rip)        # 407550 <GS_ExceptionRecord+0x10>
  4017aa:	48 b8 09 04 00 c0 01 	movabs $0x1c0000409,%rax
  4017b1:	00 00 00 
  4017b4:	48 89 05 85 5d 00 00 	mov    %rax,0x5d85(%rip)        # 407540 <GS_ExceptionRecord>
  4017bb:	48 8b 05 ee 18 00 00 	mov    0x18ee(%rip),%rax        # 4030b0 <__security_cookie>
  4017c2:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  4017c6:	48 8b 05 f3 18 00 00 	mov    0x18f3(%rip),%rax        # 4030c0 <__security_cookie_complement>
  4017cd:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4017d1:	ff 15 7d 6a 00 00    	callq  *0x6a7d(%rip)        # 408254 <__imp_SetUnhandledExceptionFilter>
  4017d7:	48 8d 0d 42 28 00 00 	lea    0x2842(%rip),%rcx        # 404020 <GS_ExceptionPointers>
  4017de:	ff 15 90 6a 00 00    	callq  *0x6a90(%rip)        # 408274 <__imp_UnhandledExceptionFilter>
  4017e4:	ff 15 fa 69 00 00    	callq  *0x69fa(%rip)        # 4081e4 <__imp_GetCurrentProcess>
  4017ea:	ba 09 04 00 c0       	mov    $0xc0000409,%edx
  4017ef:	48 89 c1             	mov    %rax,%rcx
  4017f2:	ff 15 6c 6a 00 00    	callq  *0x6a6c(%rip)        # 408264 <__imp_TerminateProcess>
  4017f8:	e8 73 12 00 00       	callq  402a70 <abort>
  4017fd:	48 8b 45 18          	mov    0x18(%rbp),%rax
  401801:	48 89 05 50 59 00 00 	mov    %rax,0x5950(%rip)        # 407158 <GS_ContextRecord+0xf8>
  401808:	48 8d 45 08          	lea    0x8(%rbp),%rax
  40180c:	48 89 05 e5 58 00 00 	mov    %rax,0x58e5(%rip)        # 4070f8 <GS_ContextRecord+0x98>
  401813:	e9 7b ff ff ff       	jmpq   401793 <__report_gsfailure+0x73>
  401818:	90                   	nop
  401819:	90                   	nop
  40181a:	90                   	nop
  40181b:	90                   	nop
  40181c:	90                   	nop
  40181d:	90                   	nop
  40181e:	90                   	nop
  40181f:	90                   	nop

0000000000401820 <__dyn_tls_dtor>:
  401820:	48 83 ec 28          	sub    $0x28,%rsp
  401824:	83 fa 03             	cmp    $0x3,%edx
  401827:	74 17                	je     401840 <__dyn_tls_dtor+0x20>
  401829:	85 d2                	test   %edx,%edx
  40182b:	74 13                	je     401840 <__dyn_tls_dtor+0x20>
  40182d:	b8 01 00 00 00       	mov    $0x1,%eax
  401832:	48 83 c4 28          	add    $0x28,%rsp
  401836:	c3                   	retq   
  401837:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40183e:	00 00 
  401840:	e8 cb 0c 00 00       	callq  402510 <__mingw_TLScallback>
  401845:	b8 01 00 00 00       	mov    $0x1,%eax
  40184a:	48 83 c4 28          	add    $0x28,%rsp
  40184e:	c3                   	retq   
  40184f:	90                   	nop

0000000000401850 <__dyn_tls_init>:
  401850:	56                   	push   %rsi
  401851:	53                   	push   %rbx
  401852:	48 83 ec 28          	sub    $0x28,%rsp
  401856:	48 8b 05 a3 2a 00 00 	mov    0x2aa3(%rip),%rax        # 404300 <.refptr._CRT_MT>
  40185d:	83 38 02             	cmpl   $0x2,(%rax)
  401860:	74 06                	je     401868 <__dyn_tls_init+0x18>
  401862:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
  401868:	83 fa 02             	cmp    $0x2,%edx
  40186b:	74 13                	je     401880 <__dyn_tls_init+0x30>
  40186d:	83 fa 01             	cmp    $0x1,%edx
  401870:	74 40                	je     4018b2 <__dyn_tls_init+0x62>
  401872:	b8 01 00 00 00       	mov    $0x1,%eax
  401877:	48 83 c4 28          	add    $0x28,%rsp
  40187b:	5b                   	pop    %rbx
  40187c:	5e                   	pop    %rsi
  40187d:	c3                   	retq   
  40187e:	66 90                	xchg   %ax,%ax
  401880:	48 8d 1d d9 77 00 00 	lea    0x77d9(%rip),%rbx        # 409060 <__xd_z>
  401887:	48 8d 35 d2 77 00 00 	lea    0x77d2(%rip),%rsi        # 409060 <__xd_z>
  40188e:	48 39 de             	cmp    %rbx,%rsi
  401891:	74 df                	je     401872 <__dyn_tls_init+0x22>
  401893:	48 8b 03             	mov    (%rbx),%rax
  401896:	48 85 c0             	test   %rax,%rax
  401899:	74 02                	je     40189d <__dyn_tls_init+0x4d>
  40189b:	ff d0                	callq  *%rax
  40189d:	48 83 c3 08          	add    $0x8,%rbx
  4018a1:	48 39 de             	cmp    %rbx,%rsi
  4018a4:	75 ed                	jne    401893 <__dyn_tls_init+0x43>
  4018a6:	b8 01 00 00 00       	mov    $0x1,%eax
  4018ab:	48 83 c4 28          	add    $0x28,%rsp
  4018af:	5b                   	pop    %rbx
  4018b0:	5e                   	pop    %rsi
  4018b1:	c3                   	retq   
  4018b2:	e8 59 0c 00 00       	callq  402510 <__mingw_TLScallback>
  4018b7:	b8 01 00 00 00       	mov    $0x1,%eax
  4018bc:	48 83 c4 28          	add    $0x28,%rsp
  4018c0:	5b                   	pop    %rbx
  4018c1:	5e                   	pop    %rsi
  4018c2:	c3                   	retq   
  4018c3:	0f 1f 00             	nopl   (%rax)
  4018c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4018cd:	00 00 00 

00000000004018d0 <__tlregdtor>:
  4018d0:	31 c0                	xor    %eax,%eax
  4018d2:	c3                   	retq   
  4018d3:	90                   	nop
  4018d4:	90                   	nop
  4018d5:	90                   	nop
  4018d6:	90                   	nop
  4018d7:	90                   	nop
  4018d8:	90                   	nop
  4018d9:	90                   	nop
  4018da:	90                   	nop
  4018db:	90                   	nop
  4018dc:	90                   	nop
  4018dd:	90                   	nop
  4018de:	90                   	nop
  4018df:	90                   	nop

00000000004018e0 <__mingw_raise_matherr>:
  4018e0:	48 83 ec 58          	sub    $0x58,%rsp
  4018e4:	48 8b 05 15 5d 00 00 	mov    0x5d15(%rip),%rax        # 407600 <stUserMathErr>
  4018eb:	48 85 c0             	test   %rax,%rax
  4018ee:	74 2c                	je     40191c <__mingw_raise_matherr+0x3c>
  4018f0:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
  4018f7:	00 00 
  4018f9:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
  4018fd:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  401902:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  401907:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
  40190d:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
  401913:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
  401919:	ff d0                	callq  *%rax
  40191b:	90                   	nop
  40191c:	48 83 c4 58          	add    $0x58,%rsp
  401920:	c3                   	retq   
  401921:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401926:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40192d:	00 00 00 

0000000000401930 <__mingw_setusermatherr>:
  401930:	48 89 0d c9 5c 00 00 	mov    %rcx,0x5cc9(%rip)        # 407600 <stUserMathErr>
  401937:	e9 5c 11 00 00       	jmpq   402a98 <__setusermatherr>
  40193c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401940 <_matherr>:
  401940:	56                   	push   %rsi
  401941:	53                   	push   %rbx
  401942:	48 83 ec 78          	sub    $0x78,%rsp
  401946:	0f 29 74 24 40       	movaps %xmm6,0x40(%rsp)
  40194b:	0f 29 7c 24 50       	movaps %xmm7,0x50(%rsp)
  401950:	44 0f 29 44 24 60    	movaps %xmm8,0x60(%rsp)
  401956:	83 39 06             	cmpl   $0x6,(%rcx)
  401959:	0f 87 d1 00 00 00    	ja     401a30 <_matherr+0xf0>
  40195f:	8b 01                	mov    (%rcx),%eax
  401961:	48 8d 15 5c 28 00 00 	lea    0x285c(%rip),%rdx        # 4041c4 <.rdata+0x124>
  401968:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  40196c:	48 01 d0             	add    %rdx,%rax
  40196f:	ff e0                	jmpq   *%rax
  401971:	48 8d 1d 28 27 00 00 	lea    0x2728(%rip),%rbx        # 4040a0 <.rdata>
  401978:	48 8b 71 08          	mov    0x8(%rcx),%rsi
  40197c:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
  401982:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
  401987:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
  40198c:	b9 02 00 00 00       	mov    $0x2,%ecx
  401991:	e8 2a 11 00 00       	callq  402ac0 <__acrt_iob_func>
  401996:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
  40199d:	49 89 f1             	mov    %rsi,%r9
  4019a0:	49 89 d8             	mov    %rbx,%r8
  4019a3:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
  4019a9:	48 8d 15 e8 27 00 00 	lea    0x27e8(%rip),%rdx        # 404198 <.rdata+0xf8>
  4019b0:	48 89 c1             	mov    %rax,%rcx
  4019b3:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
  4019b9:	e8 9a 10 00 00       	callq  402a58 <fprintf>
  4019be:	90                   	nop
  4019bf:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
  4019c4:	31 c0                	xor    %eax,%eax
  4019c6:	0f 28 7c 24 50       	movaps 0x50(%rsp),%xmm7
  4019cb:	44 0f 28 44 24 60    	movaps 0x60(%rsp),%xmm8
  4019d1:	48 83 c4 78          	add    $0x78,%rsp
  4019d5:	5b                   	pop    %rbx
  4019d6:	5e                   	pop    %rsi
  4019d7:	c3                   	retq   
  4019d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4019df:	00 
  4019e0:	48 8d 1d d8 26 00 00 	lea    0x26d8(%rip),%rbx        # 4040bf <.rdata+0x1f>
  4019e7:	eb 8f                	jmp    401978 <_matherr+0x38>
  4019e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4019f0:	48 8d 1d e9 26 00 00 	lea    0x26e9(%rip),%rbx        # 4040e0 <.rdata+0x40>
  4019f7:	e9 7c ff ff ff       	jmpq   401978 <_matherr+0x38>
  4019fc:	0f 1f 40 00          	nopl   0x0(%rax)
  401a00:	48 8d 1d 49 27 00 00 	lea    0x2749(%rip),%rbx        # 404150 <.rdata+0xb0>
  401a07:	e9 6c ff ff ff       	jmpq   401978 <_matherr+0x38>
  401a0c:	0f 1f 40 00          	nopl   0x0(%rax)
  401a10:	48 8d 1d 11 27 00 00 	lea    0x2711(%rip),%rbx        # 404128 <.rdata+0x88>
  401a17:	e9 5c ff ff ff       	jmpq   401978 <_matherr+0x38>
  401a1c:	0f 1f 40 00          	nopl   0x0(%rax)
  401a20:	48 8d 1d d9 26 00 00 	lea    0x26d9(%rip),%rbx        # 404100 <.rdata+0x60>
  401a27:	e9 4c ff ff ff       	jmpq   401978 <_matherr+0x38>
  401a2c:	0f 1f 40 00          	nopl   0x0(%rax)
  401a30:	48 8d 1d 4f 27 00 00 	lea    0x274f(%rip),%rbx        # 404186 <.rdata+0xe6>
  401a37:	e9 3c ff ff ff       	jmpq   401978 <_matherr+0x38>
  401a3c:	90                   	nop
  401a3d:	90                   	nop
  401a3e:	90                   	nop
  401a3f:	90                   	nop

0000000000401a40 <_fpreset>:
  401a40:	db e3                	fninit 
  401a42:	c3                   	retq   
  401a43:	90                   	nop
  401a44:	90                   	nop
  401a45:	90                   	nop
  401a46:	90                   	nop
  401a47:	90                   	nop
  401a48:	90                   	nop
  401a49:	90                   	nop
  401a4a:	90                   	nop
  401a4b:	90                   	nop
  401a4c:	90                   	nop
  401a4d:	90                   	nop
  401a4e:	90                   	nop
  401a4f:	90                   	nop

0000000000401a50 <_decode_pointer>:
  401a50:	48 89 c8             	mov    %rcx,%rax
  401a53:	c3                   	retq   
  401a54:	66 90                	xchg   %ax,%ax
  401a56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401a5d:	00 00 00 

0000000000401a60 <_encode_pointer>:
  401a60:	48 89 c8             	mov    %rcx,%rax
  401a63:	c3                   	retq   
  401a64:	90                   	nop
  401a65:	90                   	nop
  401a66:	90                   	nop
  401a67:	90                   	nop
  401a68:	90                   	nop
  401a69:	90                   	nop
  401a6a:	90                   	nop
  401a6b:	90                   	nop
  401a6c:	90                   	nop
  401a6d:	90                   	nop
  401a6e:	90                   	nop
  401a6f:	90                   	nop

0000000000401a70 <__write_memory.part.0>:
  401a70:	41 54                	push   %r12
  401a72:	55                   	push   %rbp
  401a73:	57                   	push   %rdi
  401a74:	56                   	push   %rsi
  401a75:	53                   	push   %rbx
  401a76:	48 83 ec 50          	sub    $0x50,%rsp
  401a7a:	48 63 35 a3 5b 00 00 	movslq 0x5ba3(%rip),%rsi        # 407624 <maxSections>
  401a81:	85 f6                	test   %esi,%esi
  401a83:	48 89 cb             	mov    %rcx,%rbx
  401a86:	48 89 d5             	mov    %rdx,%rbp
  401a89:	4c 89 c7             	mov    %r8,%rdi
  401a8c:	0f 8e 66 01 00 00    	jle    401bf8 <__write_memory.part.0+0x188>
  401a92:	48 8b 05 8f 5b 00 00 	mov    0x5b8f(%rip),%rax        # 407628 <the_secs>
  401a99:	31 c9                	xor    %ecx,%ecx
  401a9b:	48 83 c0 18          	add    $0x18,%rax
  401a9f:	90                   	nop
  401aa0:	48 8b 10             	mov    (%rax),%rdx
  401aa3:	48 39 d3             	cmp    %rdx,%rbx
  401aa6:	72 14                	jb     401abc <__write_memory.part.0+0x4c>
  401aa8:	4c 8b 40 08          	mov    0x8(%rax),%r8
  401aac:	45 8b 40 08          	mov    0x8(%r8),%r8d
  401ab0:	4c 01 c2             	add    %r8,%rdx
  401ab3:	48 39 d3             	cmp    %rdx,%rbx
  401ab6:	0f 82 89 00 00 00    	jb     401b45 <__write_memory.part.0+0xd5>
  401abc:	83 c1 01             	add    $0x1,%ecx
  401abf:	48 83 c0 28          	add    $0x28,%rax
  401ac3:	39 f1                	cmp    %esi,%ecx
  401ac5:	75 d9                	jne    401aa0 <__write_memory.part.0+0x30>
  401ac7:	48 89 d9             	mov    %rbx,%rcx
  401aca:	e8 41 0c 00 00       	callq  402710 <__mingw_GetSectionForAddress>
  401acf:	48 85 c0             	test   %rax,%rax
  401ad2:	49 89 c4             	mov    %rax,%r12
  401ad5:	0f 84 52 01 00 00    	je     401c2d <__write_memory.part.0+0x1bd>
  401adb:	48 8b 05 46 5b 00 00 	mov    0x5b46(%rip),%rax        # 407628 <the_secs>
  401ae2:	48 8d 34 b6          	lea    (%rsi,%rsi,4),%rsi
  401ae6:	48 c1 e6 03          	shl    $0x3,%rsi
  401aea:	48 01 f0             	add    %rsi,%rax
  401aed:	4c 89 60 20          	mov    %r12,0x20(%rax)
  401af1:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  401af7:	e8 44 0d 00 00       	callq  402840 <_GetPEImageBase>
  401afc:	41 8b 4c 24 0c       	mov    0xc(%r12),%ecx
  401b01:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  401b06:	41 b8 30 00 00 00    	mov    $0x30,%r8d
  401b0c:	48 01 c1             	add    %rax,%rcx
  401b0f:	48 8b 05 12 5b 00 00 	mov    0x5b12(%rip),%rax        # 407628 <the_secs>
  401b16:	48 89 4c 30 18       	mov    %rcx,0x18(%rax,%rsi,1)
  401b1b:	ff 15 63 67 00 00    	callq  *0x6763(%rip)        # 408284 <__imp_VirtualQuery>
  401b21:	48 85 c0             	test   %rax,%rax
  401b24:	0f 84 e6 00 00 00    	je     401c10 <__write_memory.part.0+0x1a0>
  401b2a:	8b 44 24 44          	mov    0x44(%rsp),%eax
  401b2e:	8d 50 fc             	lea    -0x4(%rax),%edx
  401b31:	83 e2 fb             	and    $0xfffffffb,%edx
  401b34:	74 08                	je     401b3e <__write_memory.part.0+0xce>
  401b36:	83 e8 40             	sub    $0x40,%eax
  401b39:	83 e0 bf             	and    $0xffffffbf,%eax
  401b3c:	75 62                	jne    401ba0 <__write_memory.part.0+0x130>
  401b3e:	83 05 df 5a 00 00 01 	addl   $0x1,0x5adf(%rip)        # 407624 <maxSections>
  401b45:	83 ff 08             	cmp    $0x8,%edi
  401b48:	73 29                	jae    401b73 <__write_memory.part.0+0x103>
  401b4a:	40 f6 c7 04          	test   $0x4,%dil
  401b4e:	0f 85 90 00 00 00    	jne    401be4 <__write_memory.part.0+0x174>
  401b54:	85 ff                	test   %edi,%edi
  401b56:	74 10                	je     401b68 <__write_memory.part.0+0xf8>
  401b58:	0f b6 45 00          	movzbl 0x0(%rbp),%eax
  401b5c:	40 f6 c7 02          	test   $0x2,%dil
  401b60:	88 03                	mov    %al,(%rbx)
  401b62:	0f 85 97 00 00 00    	jne    401bff <__write_memory.part.0+0x18f>
  401b68:	48 83 c4 50          	add    $0x50,%rsp
  401b6c:	5b                   	pop    %rbx
  401b6d:	5e                   	pop    %rsi
  401b6e:	5f                   	pop    %rdi
  401b6f:	5d                   	pop    %rbp
  401b70:	41 5c                	pop    %r12
  401b72:	c3                   	retq   
  401b73:	89 f8                	mov    %edi,%eax
  401b75:	83 ef 01             	sub    $0x1,%edi
  401b78:	48 8b 54 05 f8       	mov    -0x8(%rbp,%rax,1),%rdx
  401b7d:	83 ff 08             	cmp    $0x8,%edi
  401b80:	48 89 54 03 f8       	mov    %rdx,-0x8(%rbx,%rax,1)
  401b85:	72 e1                	jb     401b68 <__write_memory.part.0+0xf8>
  401b87:	83 e7 f8             	and    $0xfffffff8,%edi
  401b8a:	31 c0                	xor    %eax,%eax
  401b8c:	89 c2                	mov    %eax,%edx
  401b8e:	83 c0 08             	add    $0x8,%eax
  401b91:	48 8b 4c 15 00       	mov    0x0(%rbp,%rdx,1),%rcx
  401b96:	39 f8                	cmp    %edi,%eax
  401b98:	48 89 0c 13          	mov    %rcx,(%rbx,%rdx,1)
  401b9c:	72 ee                	jb     401b8c <__write_memory.part.0+0x11c>
  401b9e:	eb c8                	jmp    401b68 <__write_memory.part.0+0xf8>
  401ba0:	48 03 35 81 5a 00 00 	add    0x5a81(%rip),%rsi        # 407628 <the_secs>
  401ba7:	41 b8 40 00 00 00    	mov    $0x40,%r8d
  401bad:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  401bb2:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  401bb7:	49 89 f1             	mov    %rsi,%r9
  401bba:	48 89 4e 08          	mov    %rcx,0x8(%rsi)
  401bbe:	48 89 56 10          	mov    %rdx,0x10(%rsi)
  401bc2:	ff 15 b4 66 00 00    	callq  *0x66b4(%rip)        # 40827c <__imp_VirtualProtect>
  401bc8:	85 c0                	test   %eax,%eax
  401bca:	0f 85 6e ff ff ff    	jne    401b3e <__write_memory.part.0+0xce>
  401bd0:	ff 15 26 66 00 00    	callq  *0x6626(%rip)        # 4081fc <__imp_GetLastError>
  401bd6:	48 8d 0d 7b 26 00 00 	lea    0x267b(%rip),%rcx        # 404258 <.rdata+0x78>
  401bdd:	89 c2                	mov    %eax,%edx
  401bdf:	e8 4c 10 00 00       	callq  402c30 <__report_error>
  401be4:	8b 45 00             	mov    0x0(%rbp),%eax
  401be7:	89 ff                	mov    %edi,%edi
  401be9:	89 03                	mov    %eax,(%rbx)
  401beb:	8b 44 3d fc          	mov    -0x4(%rbp,%rdi,1),%eax
  401bef:	89 44 3b fc          	mov    %eax,-0x4(%rbx,%rdi,1)
  401bf3:	e9 70 ff ff ff       	jmpq   401b68 <__write_memory.part.0+0xf8>
  401bf8:	31 f6                	xor    %esi,%esi
  401bfa:	e9 c8 fe ff ff       	jmpq   401ac7 <__write_memory.part.0+0x57>
  401bff:	89 ff                	mov    %edi,%edi
  401c01:	0f b7 44 3d fe       	movzwl -0x2(%rbp,%rdi,1),%eax
  401c06:	66 89 44 3b fe       	mov    %ax,-0x2(%rbx,%rdi,1)
  401c0b:	e9 58 ff ff ff       	jmpq   401b68 <__write_memory.part.0+0xf8>
  401c10:	48 8b 05 11 5a 00 00 	mov    0x5a11(%rip),%rax        # 407628 <the_secs>
  401c17:	48 8d 0d 02 26 00 00 	lea    0x2602(%rip),%rcx        # 404220 <.rdata+0x40>
  401c1e:	41 8b 54 24 08       	mov    0x8(%r12),%edx
  401c23:	4c 8b 44 30 18       	mov    0x18(%rax,%rsi,1),%r8
  401c28:	e8 03 10 00 00       	callq  402c30 <__report_error>
  401c2d:	48 8d 0d cc 25 00 00 	lea    0x25cc(%rip),%rcx        # 404200 <.rdata+0x20>
  401c34:	48 89 da             	mov    %rbx,%rdx
  401c37:	e8 f4 0f 00 00       	callq  402c30 <__report_error>
  401c3c:	90                   	nop
  401c3d:	0f 1f 00             	nopl   (%rax)

0000000000401c40 <_pei386_runtime_relocator>:
  401c40:	55                   	push   %rbp
  401c41:	41 57                	push   %r15
  401c43:	41 56                	push   %r14
  401c45:	41 55                	push   %r13
  401c47:	41 54                	push   %r12
  401c49:	57                   	push   %rdi
  401c4a:	56                   	push   %rsi
  401c4b:	53                   	push   %rbx
  401c4c:	48 83 ec 38          	sub    $0x38,%rsp
  401c50:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  401c57:	00 
  401c58:	8b 1d c2 59 00 00    	mov    0x59c2(%rip),%ebx        # 407620 <was_init.95174>
  401c5e:	85 db                	test   %ebx,%ebx
  401c60:	74 11                	je     401c73 <_pei386_runtime_relocator+0x33>
  401c62:	48 8d 65 b8          	lea    -0x48(%rbp),%rsp
  401c66:	5b                   	pop    %rbx
  401c67:	5e                   	pop    %rsi
  401c68:	5f                   	pop    %rdi
  401c69:	41 5c                	pop    %r12
  401c6b:	41 5d                	pop    %r13
  401c6d:	41 5e                	pop    %r14
  401c6f:	41 5f                	pop    %r15
  401c71:	5d                   	pop    %rbp
  401c72:	c3                   	retq   
  401c73:	c7 05 a3 59 00 00 01 	movl   $0x1,0x59a3(%rip)        # 407620 <was_init.95174>
  401c7a:	00 00 00 
  401c7d:	e8 0e 0b 00 00       	callq  402790 <__mingw_GetSectionCount>
  401c82:	48 98                	cltq   
  401c84:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401c88:	48 8d 04 c5 1e 00 00 	lea    0x1e(,%rax,8),%rax
  401c8f:	00 
  401c90:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401c94:	e8 37 0d 00 00       	callq  4029d0 <___chkstk_ms>
  401c99:	4c 8b 25 90 26 00 00 	mov    0x2690(%rip),%r12        # 404330 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
  401ca0:	c7 05 7a 59 00 00 00 	movl   $0x0,0x597a(%rip)        # 407624 <maxSections>
  401ca7:	00 00 00 
  401caa:	48 8b 35 8f 26 00 00 	mov    0x268f(%rip),%rsi        # 404340 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
  401cb1:	48 29 c4             	sub    %rax,%rsp
  401cb4:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  401cb9:	48 89 05 68 59 00 00 	mov    %rax,0x5968(%rip)        # 407628 <the_secs>
  401cc0:	4c 89 e0             	mov    %r12,%rax
  401cc3:	48 29 f0             	sub    %rsi,%rax
  401cc6:	48 83 f8 07          	cmp    $0x7,%rax
  401cca:	7e 96                	jle    401c62 <_pei386_runtime_relocator+0x22>
  401ccc:	48 83 f8 0b          	cmp    $0xb,%rax
  401cd0:	8b 16                	mov    (%rsi),%edx
  401cd2:	0f 8e c8 00 00 00    	jle    401da0 <_pei386_runtime_relocator+0x160>
  401cd8:	85 d2                	test   %edx,%edx
  401cda:	0f 84 a4 00 00 00    	je     401d84 <_pei386_runtime_relocator+0x144>
  401ce0:	4c 39 e6             	cmp    %r12,%rsi
  401ce3:	0f 83 79 ff ff ff    	jae    401c62 <_pei386_runtime_relocator+0x22>
  401ce9:	4c 8d 76 08          	lea    0x8(%rsi),%r14
  401ced:	49 83 c4 07          	add    $0x7,%r12
  401cf1:	4c 8b 2d 68 26 00 00 	mov    0x2668(%rip),%r13        # 404360 <.refptr.__image_base__>
  401cf8:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
  401cfc:	4d 29 f4             	sub    %r14,%r12
  401cff:	49 c1 ec 03          	shr    $0x3,%r12
  401d03:	4e 8d 64 e6 08       	lea    0x8(%rsi,%r12,8),%r12
  401d08:	eb 0a                	jmp    401d14 <_pei386_runtime_relocator+0xd4>
  401d0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401d10:	49 83 c6 08          	add    $0x8,%r14
  401d14:	8b 4e 04             	mov    0x4(%rsi),%ecx
  401d17:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  401d1d:	48 89 fa             	mov    %rdi,%rdx
  401d20:	8b 06                	mov    (%rsi),%eax
  401d22:	4c 89 f6             	mov    %r14,%rsi
  401d25:	4c 01 e9             	add    %r13,%rcx
  401d28:	03 01                	add    (%rcx),%eax
  401d2a:	89 45 a8             	mov    %eax,-0x58(%rbp)
  401d2d:	e8 3e fd ff ff       	callq  401a70 <__write_memory.part.0>
  401d32:	4d 39 e6             	cmp    %r12,%r14
  401d35:	75 d9                	jne    401d10 <_pei386_runtime_relocator+0xd0>
  401d37:	8b 05 e7 58 00 00    	mov    0x58e7(%rip),%eax        # 407624 <maxSections>
  401d3d:	31 f6                	xor    %esi,%esi
  401d3f:	4c 8b 25 36 65 00 00 	mov    0x6536(%rip),%r12        # 40827c <__imp_VirtualProtect>
  401d46:	85 c0                	test   %eax,%eax
  401d48:	0f 8e 14 ff ff ff    	jle    401c62 <_pei386_runtime_relocator+0x22>
  401d4e:	66 90                	xchg   %ax,%ax
  401d50:	48 8b 05 d1 58 00 00 	mov    0x58d1(%rip),%rax        # 407628 <the_secs>
  401d57:	48 01 f0             	add    %rsi,%rax
  401d5a:	44 8b 00             	mov    (%rax),%r8d
  401d5d:	45 85 c0             	test   %r8d,%r8d
  401d60:	74 0e                	je     401d70 <_pei386_runtime_relocator+0x130>
  401d62:	48 8b 50 10          	mov    0x10(%rax),%rdx
  401d66:	49 89 f9             	mov    %rdi,%r9
  401d69:	48 8b 48 08          	mov    0x8(%rax),%rcx
  401d6d:	41 ff d4             	callq  *%r12
  401d70:	83 c3 01             	add    $0x1,%ebx
  401d73:	48 83 c6 28          	add    $0x28,%rsi
  401d77:	3b 1d a7 58 00 00    	cmp    0x58a7(%rip),%ebx        # 407624 <maxSections>
  401d7d:	7c d1                	jl     401d50 <_pei386_runtime_relocator+0x110>
  401d7f:	e9 de fe ff ff       	jmpq   401c62 <_pei386_runtime_relocator+0x22>
  401d84:	8b 4e 04             	mov    0x4(%rsi),%ecx
  401d87:	85 c9                	test   %ecx,%ecx
  401d89:	0f 85 51 ff ff ff    	jne    401ce0 <_pei386_runtime_relocator+0xa0>
  401d8f:	8b 56 08             	mov    0x8(%rsi),%edx
  401d92:	85 d2                	test   %edx,%edx
  401d94:	75 1d                	jne    401db3 <_pei386_runtime_relocator+0x173>
  401d96:	8b 56 0c             	mov    0xc(%rsi),%edx
  401d99:	48 83 c6 0c          	add    $0xc,%rsi
  401d9d:	0f 1f 00             	nopl   (%rax)
  401da0:	85 d2                	test   %edx,%edx
  401da2:	0f 85 38 ff ff ff    	jne    401ce0 <_pei386_runtime_relocator+0xa0>
  401da8:	8b 46 04             	mov    0x4(%rsi),%eax
  401dab:	85 c0                	test   %eax,%eax
  401dad:	0f 85 2d ff ff ff    	jne    401ce0 <_pei386_runtime_relocator+0xa0>
  401db3:	8b 56 08             	mov    0x8(%rsi),%edx
  401db6:	83 fa 01             	cmp    $0x1,%edx
  401db9:	0f 85 2f 01 00 00    	jne    401eee <_pei386_runtime_relocator+0x2ae>
  401dbf:	4c 8b 2d 9a 25 00 00 	mov    0x259a(%rip),%r13        # 404360 <.refptr.__image_base__>
  401dc6:	48 83 c6 0c          	add    $0xc,%rsi
  401dca:	49 bf 00 00 00 00 ff 	movabs $0xffffffff00000000,%r15
  401dd1:	ff ff ff 
  401dd4:	4c 8d 75 a8          	lea    -0x58(%rbp),%r14
  401dd8:	4c 39 e6             	cmp    %r12,%rsi
  401ddb:	72 48                	jb     401e25 <_pei386_runtime_relocator+0x1e5>
  401ddd:	e9 80 fe ff ff       	jmpq   401c62 <_pei386_runtime_relocator+0x22>
  401de2:	0f 86 b8 00 00 00    	jbe    401ea0 <_pei386_runtime_relocator+0x260>
  401de8:	83 fa 20             	cmp    $0x20,%edx
  401deb:	0f 84 7f 00 00 00    	je     401e70 <_pei386_runtime_relocator+0x230>
  401df1:	83 fa 40             	cmp    $0x40,%edx
  401df4:	0f 85 e0 00 00 00    	jne    401eda <_pei386_runtime_relocator+0x29a>
  401dfa:	48 8b 11             	mov    (%rcx),%rdx
  401dfd:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  401e03:	4c 89 f7             	mov    %r14,%rdi
  401e06:	48 29 c2             	sub    %rax,%rdx
  401e09:	4c 01 ca             	add    %r9,%rdx
  401e0c:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  401e10:	4c 89 f2             	mov    %r14,%rdx
  401e13:	e8 58 fc ff ff       	callq  401a70 <__write_memory.part.0>
  401e18:	48 83 c6 0c          	add    $0xc,%rsi
  401e1c:	4c 39 e6             	cmp    %r12,%rsi
  401e1f:	0f 83 12 ff ff ff    	jae    401d37 <_pei386_runtime_relocator+0xf7>
  401e25:	8b 4e 04             	mov    0x4(%rsi),%ecx
  401e28:	8b 06                	mov    (%rsi),%eax
  401e2a:	0f b6 56 08          	movzbl 0x8(%rsi),%edx
  401e2e:	4c 01 e9             	add    %r13,%rcx
  401e31:	4c 01 e8             	add    %r13,%rax
  401e34:	83 fa 10             	cmp    $0x10,%edx
  401e37:	4c 8b 08             	mov    (%rax),%r9
  401e3a:	75 a6                	jne    401de2 <_pei386_runtime_relocator+0x1a2>
  401e3c:	44 0f b7 01          	movzwl (%rcx),%r8d
  401e40:	4c 89 f2             	mov    %r14,%rdx
  401e43:	4c 89 f7             	mov    %r14,%rdi
  401e46:	4d 89 c2             	mov    %r8,%r10
  401e49:	49 81 ca 00 00 ff ff 	or     $0xffffffffffff0000,%r10
  401e50:	66 45 85 c0          	test   %r8w,%r8w
  401e54:	4d 0f 48 c2          	cmovs  %r10,%r8
  401e58:	49 29 c0             	sub    %rax,%r8
  401e5b:	4d 01 c8             	add    %r9,%r8
  401e5e:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  401e62:	41 b8 02 00 00 00    	mov    $0x2,%r8d
  401e68:	e8 03 fc ff ff       	callq  401a70 <__write_memory.part.0>
  401e6d:	eb a9                	jmp    401e18 <_pei386_runtime_relocator+0x1d8>
  401e6f:	90                   	nop
  401e70:	8b 11                	mov    (%rcx),%edx
  401e72:	4c 89 f7             	mov    %r14,%rdi
  401e75:	49 89 d0             	mov    %rdx,%r8
  401e78:	4c 09 fa             	or     %r15,%rdx
  401e7b:	45 85 c0             	test   %r8d,%r8d
  401e7e:	49 0f 49 d0          	cmovns %r8,%rdx
  401e82:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  401e88:	48 29 c2             	sub    %rax,%rdx
  401e8b:	4c 01 ca             	add    %r9,%rdx
  401e8e:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  401e92:	4c 89 f2             	mov    %r14,%rdx
  401e95:	e8 d6 fb ff ff       	callq  401a70 <__write_memory.part.0>
  401e9a:	e9 79 ff ff ff       	jmpq   401e18 <_pei386_runtime_relocator+0x1d8>
  401e9f:	90                   	nop
  401ea0:	83 fa 08             	cmp    $0x8,%edx
  401ea3:	75 35                	jne    401eda <_pei386_runtime_relocator+0x29a>
  401ea5:	44 0f b6 01          	movzbl (%rcx),%r8d
  401ea9:	4c 89 f2             	mov    %r14,%rdx
  401eac:	4c 89 f7             	mov    %r14,%rdi
  401eaf:	4d 89 c2             	mov    %r8,%r10
  401eb2:	49 81 ca 00 ff ff ff 	or     $0xffffffffffffff00,%r10
  401eb9:	45 84 c0             	test   %r8b,%r8b
  401ebc:	4d 0f 48 c2          	cmovs  %r10,%r8
  401ec0:	49 29 c0             	sub    %rax,%r8
  401ec3:	4d 01 c8             	add    %r9,%r8
  401ec6:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  401eca:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  401ed0:	e8 9b fb ff ff       	callq  401a70 <__write_memory.part.0>
  401ed5:	e9 3e ff ff ff       	jmpq   401e18 <_pei386_runtime_relocator+0x1d8>
  401eda:	48 8d 0d d7 23 00 00 	lea    0x23d7(%rip),%rcx        # 4042b8 <.rdata+0xd8>
  401ee1:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
  401ee8:	00 
  401ee9:	e8 42 0d 00 00       	callq  402c30 <__report_error>
  401eee:	48 8d 0d 8b 23 00 00 	lea    0x238b(%rip),%rcx        # 404280 <.rdata+0xa0>
  401ef5:	e8 36 0d 00 00       	callq  402c30 <__report_error>
  401efa:	90                   	nop
  401efb:	90                   	nop
  401efc:	90                   	nop
  401efd:	90                   	nop
  401efe:	90                   	nop
  401eff:	90                   	nop

0000000000401f00 <__mingw_SEH_error_handler>:
  401f00:	48 83 ec 28          	sub    $0x28,%rsp
  401f04:	8b 01                	mov    (%rcx),%eax
  401f06:	3d 91 00 00 c0       	cmp    $0xc0000091,%eax
  401f0b:	77 63                	ja     401f70 <__mingw_SEH_error_handler+0x70>
  401f0d:	3d 8d 00 00 c0       	cmp    $0xc000008d,%eax
  401f12:	73 7b                	jae    401f8f <__mingw_SEH_error_handler+0x8f>
  401f14:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  401f19:	0f 84 05 01 00 00    	je     402024 <__mingw_SEH_error_handler+0x124>
  401f1f:	0f 87 cb 00 00 00    	ja     401ff0 <__mingw_SEH_error_handler+0xf0>
  401f25:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  401f2a:	0f 84 f4 00 00 00    	je     402024 <__mingw_SEH_error_handler+0x124>
  401f30:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  401f35:	0f 85 c3 00 00 00    	jne    401ffe <__mingw_SEH_error_handler+0xfe>
  401f3b:	31 d2                	xor    %edx,%edx
  401f3d:	b9 0b 00 00 00       	mov    $0xb,%ecx
  401f42:	e8 e1 0a 00 00       	callq  402a28 <signal>
  401f47:	48 83 f8 01          	cmp    $0x1,%rax
  401f4b:	0f 84 2f 01 00 00    	je     402080 <__mingw_SEH_error_handler+0x180>
  401f51:	48 85 c0             	test   %rax,%rax
  401f54:	0f 84 3c 01 00 00    	je     402096 <__mingw_SEH_error_handler+0x196>
  401f5a:	b9 0b 00 00 00       	mov    $0xb,%ecx
  401f5f:	ff d0                	callq  *%rax
  401f61:	31 c0                	xor    %eax,%eax
  401f63:	48 83 c4 28          	add    $0x28,%rsp
  401f67:	c3                   	retq   
  401f68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401f6f:	00 
  401f70:	3d 94 00 00 c0       	cmp    $0xc0000094,%eax
  401f75:	0f 84 b5 00 00 00    	je     402030 <__mingw_SEH_error_handler+0x130>
  401f7b:	77 37                	ja     401fb4 <__mingw_SEH_error_handler+0xb4>
  401f7d:	3d 92 00 00 c0       	cmp    $0xc0000092,%eax
  401f82:	0f 84 9c 00 00 00    	je     402024 <__mingw_SEH_error_handler+0x124>
  401f88:	3d 93 00 00 c0       	cmp    $0xc0000093,%eax
  401f8d:	75 6f                	jne    401ffe <__mingw_SEH_error_handler+0xfe>
  401f8f:	31 d2                	xor    %edx,%edx
  401f91:	b9 08 00 00 00       	mov    $0x8,%ecx
  401f96:	e8 8d 0a 00 00       	callq  402a28 <signal>
  401f9b:	48 83 f8 01          	cmp    $0x1,%rax
  401f9f:	74 6f                	je     402010 <__mingw_SEH_error_handler+0x110>
  401fa1:	48 85 c0             	test   %rax,%rax
  401fa4:	74 58                	je     401ffe <__mingw_SEH_error_handler+0xfe>
  401fa6:	b9 08 00 00 00       	mov    $0x8,%ecx
  401fab:	ff d0                	callq  *%rax
  401fad:	31 c0                	xor    %eax,%eax
  401faf:	48 83 c4 28          	add    $0x28,%rsp
  401fb3:	c3                   	retq   
  401fb4:	3d 95 00 00 c0       	cmp    $0xc0000095,%eax
  401fb9:	74 69                	je     402024 <__mingw_SEH_error_handler+0x124>
  401fbb:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  401fc0:	75 3c                	jne    401ffe <__mingw_SEH_error_handler+0xfe>
  401fc2:	31 d2                	xor    %edx,%edx
  401fc4:	b9 04 00 00 00       	mov    $0x4,%ecx
  401fc9:	e8 5a 0a 00 00       	callq  402a28 <signal>
  401fce:	48 83 f8 01          	cmp    $0x1,%rax
  401fd2:	0f 84 88 00 00 00    	je     402060 <__mingw_SEH_error_handler+0x160>
  401fd8:	48 85 c0             	test   %rax,%rax
  401fdb:	0f 84 b5 00 00 00    	je     402096 <__mingw_SEH_error_handler+0x196>
  401fe1:	b9 04 00 00 00       	mov    $0x4,%ecx
  401fe6:	ff d0                	callq  *%rax
  401fe8:	31 c0                	xor    %eax,%eax
  401fea:	48 83 c4 28          	add    $0x28,%rsp
  401fee:	c3                   	retq   
  401fef:	90                   	nop
  401ff0:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  401ff5:	74 cb                	je     401fc2 <__mingw_SEH_error_handler+0xc2>
  401ff7:	3d 8c 00 00 c0       	cmp    $0xc000008c,%eax
  401ffc:	74 26                	je     402024 <__mingw_SEH_error_handler+0x124>
  401ffe:	b8 01 00 00 00       	mov    $0x1,%eax
  402003:	48 83 c4 28          	add    $0x28,%rsp
  402007:	c3                   	retq   
  402008:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40200f:	00 
  402010:	ba 01 00 00 00       	mov    $0x1,%edx
  402015:	b9 08 00 00 00       	mov    $0x8,%ecx
  40201a:	e8 09 0a 00 00       	callq  402a28 <signal>
  40201f:	e8 1c fa ff ff       	callq  401a40 <_fpreset>
  402024:	31 c0                	xor    %eax,%eax
  402026:	48 83 c4 28          	add    $0x28,%rsp
  40202a:	c3                   	retq   
  40202b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402030:	31 d2                	xor    %edx,%edx
  402032:	b9 08 00 00 00       	mov    $0x8,%ecx
  402037:	e8 ec 09 00 00       	callq  402a28 <signal>
  40203c:	48 83 f8 01          	cmp    $0x1,%rax
  402040:	0f 85 5b ff ff ff    	jne    401fa1 <__mingw_SEH_error_handler+0xa1>
  402046:	ba 01 00 00 00       	mov    $0x1,%edx
  40204b:	b9 08 00 00 00       	mov    $0x8,%ecx
  402050:	e8 d3 09 00 00       	callq  402a28 <signal>
  402055:	31 c0                	xor    %eax,%eax
  402057:	e9 07 ff ff ff       	jmpq   401f63 <__mingw_SEH_error_handler+0x63>
  40205c:	0f 1f 40 00          	nopl   0x0(%rax)
  402060:	ba 01 00 00 00       	mov    $0x1,%edx
  402065:	b9 04 00 00 00       	mov    $0x4,%ecx
  40206a:	e8 b9 09 00 00       	callq  402a28 <signal>
  40206f:	31 c0                	xor    %eax,%eax
  402071:	e9 ed fe ff ff       	jmpq   401f63 <__mingw_SEH_error_handler+0x63>
  402076:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40207d:	00 00 00 
  402080:	ba 01 00 00 00       	mov    $0x1,%edx
  402085:	b9 0b 00 00 00       	mov    $0xb,%ecx
  40208a:	e8 99 09 00 00       	callq  402a28 <signal>
  40208f:	31 c0                	xor    %eax,%eax
  402091:	e9 cd fe ff ff       	jmpq   401f63 <__mingw_SEH_error_handler+0x63>
  402096:	b8 04 00 00 00       	mov    $0x4,%eax
  40209b:	e9 c3 fe ff ff       	jmpq   401f63 <__mingw_SEH_error_handler+0x63>

00000000004020a0 <__mingw_init_ehandler>:
  4020a0:	41 54                	push   %r12
  4020a2:	55                   	push   %rbp
  4020a3:	57                   	push   %rdi
  4020a4:	56                   	push   %rsi
  4020a5:	53                   	push   %rbx
  4020a6:	48 83 ec 20          	sub    $0x20,%rsp
  4020aa:	e8 91 07 00 00       	callq  402840 <_GetPEImageBase>
  4020af:	48 89 c5             	mov    %rax,%rbp
  4020b2:	8b 05 90 55 00 00    	mov    0x5590(%rip),%eax        # 407648 <was_here.95013>
  4020b8:	85 c0                	test   %eax,%eax
  4020ba:	75 25                	jne    4020e1 <__mingw_init_ehandler+0x41>
  4020bc:	48 85 ed             	test   %rbp,%rbp
  4020bf:	74 20                	je     4020e1 <__mingw_init_ehandler+0x41>
  4020c1:	48 8d 0d 28 22 00 00 	lea    0x2228(%rip),%rcx        # 4042f0 <.rdata>
  4020c8:	c7 05 76 55 00 00 01 	movl   $0x1,0x5576(%rip)        # 407648 <was_here.95013>
  4020cf:	00 00 00 
  4020d2:	e8 a9 05 00 00       	callq  402680 <_FindPESectionByName>
  4020d7:	48 85 c0             	test   %rax,%rax
  4020da:	74 14                	je     4020f0 <__mingw_init_ehandler+0x50>
  4020dc:	b8 01 00 00 00       	mov    $0x1,%eax
  4020e1:	48 83 c4 20          	add    $0x20,%rsp
  4020e5:	5b                   	pop    %rbx
  4020e6:	5e                   	pop    %rsi
  4020e7:	5f                   	pop    %rdi
  4020e8:	5d                   	pop    %rbp
  4020e9:	41 5c                	pop    %r12
  4020eb:	c3                   	retq   
  4020ec:	0f 1f 40 00          	nopl   0x0(%rax)
  4020f0:	48 8d 1d 69 56 00 00 	lea    0x5669(%rip),%rbx        # 407760 <emu_pdata>
  4020f7:	b9 30 00 00 00       	mov    $0x30,%ecx
  4020fc:	31 f6                	xor    %esi,%esi
  4020fe:	48 8d 15 5b 55 00 00 	lea    0x555b(%rip),%rdx        # 407660 <emu_xdata>
  402105:	48 89 df             	mov    %rbx,%rdi
  402108:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  40210b:	4c 8d 25 ee fd ff ff 	lea    -0x212(%rip),%r12        # 401f00 <__mingw_SEH_error_handler>
  402112:	b9 20 00 00 00       	mov    $0x20,%ecx
  402117:	48 89 d7             	mov    %rdx,%rdi
  40211a:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  40211d:	49 29 ec             	sub    %rbp,%r12
  402120:	48 89 d7             	mov    %rdx,%rdi
  402123:	eb 2e                	jmp    402153 <__mingw_init_ehandler+0xb3>
  402125:	c6 07 09             	movb   $0x9,(%rdi)
  402128:	48 83 c6 01          	add    $0x1,%rsi
  40212c:	48 83 c3 0c          	add    $0xc,%rbx
  402130:	44 89 67 04          	mov    %r12d,0x4(%rdi)
  402134:	8b 48 0c             	mov    0xc(%rax),%ecx
  402137:	89 4b f4             	mov    %ecx,-0xc(%rbx)
  40213a:	03 48 08             	add    0x8(%rax),%ecx
  40213d:	48 89 f8             	mov    %rdi,%rax
  402140:	48 83 c7 08          	add    $0x8,%rdi
  402144:	48 29 e8             	sub    %rbp,%rax
  402147:	89 43 fc             	mov    %eax,-0x4(%rbx)
  40214a:	89 4b f8             	mov    %ecx,-0x8(%rbx)
  40214d:	48 83 fe 20          	cmp    $0x20,%rsi
  402151:	74 32                	je     402185 <__mingw_init_ehandler+0xe5>
  402153:	48 89 f1             	mov    %rsi,%rcx
  402156:	e8 75 06 00 00       	callq  4027d0 <_FindPESectionExec>
  40215b:	48 85 c0             	test   %rax,%rax
  40215e:	75 c5                	jne    402125 <__mingw_init_ehandler+0x85>
  402160:	48 85 f6             	test   %rsi,%rsi
  402163:	89 f2                	mov    %esi,%edx
  402165:	0f 84 71 ff ff ff    	je     4020dc <__mingw_init_ehandler+0x3c>
  40216b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402170:	48 8d 0d e9 55 00 00 	lea    0x55e9(%rip),%rcx        # 407760 <emu_pdata>
  402177:	49 89 e8             	mov    %rbp,%r8
  40217a:	ff 15 b4 60 00 00    	callq  *0x60b4(%rip)        # 408234 <__imp_RtlAddFunctionTable>
  402180:	e9 57 ff ff ff       	jmpq   4020dc <__mingw_init_ehandler+0x3c>
  402185:	ba 20 00 00 00       	mov    $0x20,%edx
  40218a:	eb e4                	jmp    402170 <__mingw_init_ehandler+0xd0>
  40218c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402190 <_gnu_exception_handler>:
  402190:	53                   	push   %rbx
  402191:	48 83 ec 20          	sub    $0x20,%rsp
  402195:	48 8b 11             	mov    (%rcx),%rdx
  402198:	8b 02                	mov    (%rdx),%eax
  40219a:	48 89 cb             	mov    %rcx,%rbx
  40219d:	89 c1                	mov    %eax,%ecx
  40219f:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
  4021a5:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
  4021ab:	0f 84 bf 00 00 00    	je     402270 <_gnu_exception_handler+0xe0>
  4021b1:	3d 91 00 00 c0       	cmp    $0xc0000091,%eax
  4021b6:	77 68                	ja     402220 <_gnu_exception_handler+0x90>
  4021b8:	3d 8d 00 00 c0       	cmp    $0xc000008d,%eax
  4021bd:	73 7c                	jae    40223b <_gnu_exception_handler+0xab>
  4021bf:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  4021c4:	0f 84 b0 00 00 00    	je     40227a <_gnu_exception_handler+0xea>
  4021ca:	0f 87 f4 00 00 00    	ja     4022c4 <_gnu_exception_handler+0x134>
  4021d0:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  4021d5:	0f 84 9f 00 00 00    	je     40227a <_gnu_exception_handler+0xea>
  4021db:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  4021e0:	75 1f                	jne    402201 <_gnu_exception_handler+0x71>
  4021e2:	31 d2                	xor    %edx,%edx
  4021e4:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4021e9:	e8 3a 08 00 00       	callq  402a28 <signal>
  4021ee:	48 83 f8 01          	cmp    $0x1,%rax
  4021f2:	0f 84 51 01 00 00    	je     402349 <_gnu_exception_handler+0x1b9>
  4021f8:	48 85 c0             	test   %rax,%rax
  4021fb:	0f 85 0f 01 00 00    	jne    402310 <_gnu_exception_handler+0x180>
  402201:	48 8b 05 38 54 00 00 	mov    0x5438(%rip),%rax        # 407640 <__mingw_oldexcpt_handler>
  402208:	48 85 c0             	test   %rax,%rax
  40220b:	0f 84 10 01 00 00    	je     402321 <_gnu_exception_handler+0x191>
  402211:	48 89 d9             	mov    %rbx,%rcx
  402214:	48 83 c4 20          	add    $0x20,%rsp
  402218:	5b                   	pop    %rbx
  402219:	48 ff e0             	rex.W jmpq *%rax
  40221c:	0f 1f 40 00          	nopl   0x0(%rax)
  402220:	3d 94 00 00 c0       	cmp    $0xc0000094,%eax
  402225:	0f 84 b5 00 00 00    	je     4022e0 <_gnu_exception_handler+0x150>
  40222b:	77 58                	ja     402285 <_gnu_exception_handler+0xf5>
  40222d:	3d 92 00 00 c0       	cmp    $0xc0000092,%eax
  402232:	74 46                	je     40227a <_gnu_exception_handler+0xea>
  402234:	3d 93 00 00 c0       	cmp    $0xc0000093,%eax
  402239:	75 c6                	jne    402201 <_gnu_exception_handler+0x71>
  40223b:	31 d2                	xor    %edx,%edx
  40223d:	b9 08 00 00 00       	mov    $0x8,%ecx
  402242:	e8 e1 07 00 00       	callq  402a28 <signal>
  402247:	48 83 f8 01          	cmp    $0x1,%rax
  40224b:	0f 84 df 00 00 00    	je     402330 <_gnu_exception_handler+0x1a0>
  402251:	48 85 c0             	test   %rax,%rax
  402254:	74 ab                	je     402201 <_gnu_exception_handler+0x71>
  402256:	b9 08 00 00 00       	mov    $0x8,%ecx
  40225b:	ff d0                	callq  *%rax
  40225d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402262:	48 83 c4 20          	add    $0x20,%rsp
  402266:	5b                   	pop    %rbx
  402267:	c3                   	retq   
  402268:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40226f:	00 
  402270:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
  402274:	0f 85 37 ff ff ff    	jne    4021b1 <_gnu_exception_handler+0x21>
  40227a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40227f:	48 83 c4 20          	add    $0x20,%rsp
  402283:	5b                   	pop    %rbx
  402284:	c3                   	retq   
  402285:	3d 95 00 00 c0       	cmp    $0xc0000095,%eax
  40228a:	74 ee                	je     40227a <_gnu_exception_handler+0xea>
  40228c:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  402291:	0f 85 6a ff ff ff    	jne    402201 <_gnu_exception_handler+0x71>
  402297:	31 d2                	xor    %edx,%edx
  402299:	b9 04 00 00 00       	mov    $0x4,%ecx
  40229e:	e8 85 07 00 00       	callq  402a28 <signal>
  4022a3:	48 83 f8 01          	cmp    $0x1,%rax
  4022a7:	0f 84 b3 00 00 00    	je     402360 <_gnu_exception_handler+0x1d0>
  4022ad:	48 85 c0             	test   %rax,%rax
  4022b0:	0f 84 4b ff ff ff    	je     402201 <_gnu_exception_handler+0x71>
  4022b6:	b9 04 00 00 00       	mov    $0x4,%ecx
  4022bb:	ff d0                	callq  *%rax
  4022bd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4022c2:	eb 9e                	jmp    402262 <_gnu_exception_handler+0xd2>
  4022c4:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  4022c9:	74 cc                	je     402297 <_gnu_exception_handler+0x107>
  4022cb:	3d 8c 00 00 c0       	cmp    $0xc000008c,%eax
  4022d0:	0f 85 2b ff ff ff    	jne    402201 <_gnu_exception_handler+0x71>
  4022d6:	eb a2                	jmp    40227a <_gnu_exception_handler+0xea>
  4022d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4022df:	00 
  4022e0:	31 d2                	xor    %edx,%edx
  4022e2:	b9 08 00 00 00       	mov    $0x8,%ecx
  4022e7:	e8 3c 07 00 00       	callq  402a28 <signal>
  4022ec:	48 83 f8 01          	cmp    $0x1,%rax
  4022f0:	0f 85 5b ff ff ff    	jne    402251 <_gnu_exception_handler+0xc1>
  4022f6:	ba 01 00 00 00       	mov    $0x1,%edx
  4022fb:	b9 08 00 00 00       	mov    $0x8,%ecx
  402300:	e8 23 07 00 00       	callq  402a28 <signal>
  402305:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40230a:	e9 53 ff ff ff       	jmpq   402262 <_gnu_exception_handler+0xd2>
  40230f:	90                   	nop
  402310:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402315:	ff d0                	callq  *%rax
  402317:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40231c:	e9 41 ff ff ff       	jmpq   402262 <_gnu_exception_handler+0xd2>
  402321:	31 c0                	xor    %eax,%eax
  402323:	e9 3a ff ff ff       	jmpq   402262 <_gnu_exception_handler+0xd2>
  402328:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40232f:	00 
  402330:	ba 01 00 00 00       	mov    $0x1,%edx
  402335:	b9 08 00 00 00       	mov    $0x8,%ecx
  40233a:	e8 e9 06 00 00       	callq  402a28 <signal>
  40233f:	e8 fc f6 ff ff       	callq  401a40 <_fpreset>
  402344:	e9 31 ff ff ff       	jmpq   40227a <_gnu_exception_handler+0xea>
  402349:	ba 01 00 00 00       	mov    $0x1,%edx
  40234e:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402353:	e8 d0 06 00 00       	callq  402a28 <signal>
  402358:	83 c8 ff             	or     $0xffffffff,%eax
  40235b:	e9 02 ff ff ff       	jmpq   402262 <_gnu_exception_handler+0xd2>
  402360:	ba 01 00 00 00       	mov    $0x1,%edx
  402365:	b9 04 00 00 00       	mov    $0x4,%ecx
  40236a:	e8 b9 06 00 00       	callq  402a28 <signal>
  40236f:	83 c8 ff             	or     $0xffffffff,%eax
  402372:	e9 eb fe ff ff       	jmpq   402262 <_gnu_exception_handler+0xd2>
  402377:	90                   	nop
  402378:	90                   	nop
  402379:	90                   	nop
  40237a:	90                   	nop
  40237b:	90                   	nop
  40237c:	90                   	nop
  40237d:	90                   	nop
  40237e:	90                   	nop
  40237f:	90                   	nop

0000000000402380 <__mingwthr_run_key_dtors.part.0>:
  402380:	55                   	push   %rbp
  402381:	57                   	push   %rdi
  402382:	56                   	push   %rsi
  402383:	53                   	push   %rbx
  402384:	48 83 ec 28          	sub    $0x28,%rsp
  402388:	48 8d 0d 71 55 00 00 	lea    0x5571(%rip),%rcx        # 407900 <__mingwthr_cs>
  40238f:	ff 15 47 5e 00 00    	callq  *0x5e47(%rip)        # 4081dc <__imp_EnterCriticalSection>
  402395:	48 8b 1d 44 55 00 00 	mov    0x5544(%rip),%rbx        # 4078e0 <key_dtor_list>
  40239c:	48 85 db             	test   %rbx,%rbx
  40239f:	74 33                	je     4023d4 <__mingwthr_run_key_dtors.part.0+0x54>
  4023a1:	48 8b 2d c4 5e 00 00 	mov    0x5ec4(%rip),%rbp        # 40826c <__imp_TlsGetValue>
  4023a8:	48 8b 3d 4d 5e 00 00 	mov    0x5e4d(%rip),%rdi        # 4081fc <__imp_GetLastError>
  4023af:	90                   	nop
  4023b0:	8b 0b                	mov    (%rbx),%ecx
  4023b2:	ff d5                	callq  *%rbp
  4023b4:	48 89 c6             	mov    %rax,%rsi
  4023b7:	ff d7                	callq  *%rdi
  4023b9:	85 c0                	test   %eax,%eax
  4023bb:	75 0e                	jne    4023cb <__mingwthr_run_key_dtors.part.0+0x4b>
  4023bd:	48 85 f6             	test   %rsi,%rsi
  4023c0:	74 09                	je     4023cb <__mingwthr_run_key_dtors.part.0+0x4b>
  4023c2:	48 8b 43 08          	mov    0x8(%rbx),%rax
  4023c6:	48 89 f1             	mov    %rsi,%rcx
  4023c9:	ff d0                	callq  *%rax
  4023cb:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4023cf:	48 85 db             	test   %rbx,%rbx
  4023d2:	75 dc                	jne    4023b0 <__mingwthr_run_key_dtors.part.0+0x30>
  4023d4:	48 8d 0d 25 55 00 00 	lea    0x5525(%rip),%rcx        # 407900 <__mingwthr_cs>
  4023db:	48 83 c4 28          	add    $0x28,%rsp
  4023df:	5b                   	pop    %rbx
  4023e0:	5e                   	pop    %rsi
  4023e1:	5f                   	pop    %rdi
  4023e2:	5d                   	pop    %rbp
  4023e3:	48 ff 25 3a 5e 00 00 	rex.W jmpq *0x5e3a(%rip)        # 408224 <__imp_LeaveCriticalSection>
  4023ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004023f0 <___w64_mingwthr_add_key_dtor>:
  4023f0:	55                   	push   %rbp
  4023f1:	57                   	push   %rdi
  4023f2:	56                   	push   %rsi
  4023f3:	53                   	push   %rbx
  4023f4:	48 83 ec 28          	sub    $0x28,%rsp
  4023f8:	8b 05 ea 54 00 00    	mov    0x54ea(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  4023fe:	31 f6                	xor    %esi,%esi
  402400:	85 c0                	test   %eax,%eax
  402402:	89 cd                	mov    %ecx,%ebp
  402404:	48 89 d7             	mov    %rdx,%rdi
  402407:	75 0b                	jne    402414 <___w64_mingwthr_add_key_dtor+0x24>
  402409:	89 f0                	mov    %esi,%eax
  40240b:	48 83 c4 28          	add    $0x28,%rsp
  40240f:	5b                   	pop    %rbx
  402410:	5e                   	pop    %rsi
  402411:	5f                   	pop    %rdi
  402412:	5d                   	pop    %rbp
  402413:	c3                   	retq   
  402414:	ba 18 00 00 00       	mov    $0x18,%edx
  402419:	b9 01 00 00 00       	mov    $0x1,%ecx
  40241e:	e8 45 06 00 00       	callq  402a68 <calloc>
  402423:	48 85 c0             	test   %rax,%rax
  402426:	48 89 c3             	mov    %rax,%rbx
  402429:	74 3d                	je     402468 <___w64_mingwthr_add_key_dtor+0x78>
  40242b:	89 28                	mov    %ebp,(%rax)
  40242d:	48 8d 0d cc 54 00 00 	lea    0x54cc(%rip),%rcx        # 407900 <__mingwthr_cs>
  402434:	48 89 78 08          	mov    %rdi,0x8(%rax)
  402438:	ff 15 9e 5d 00 00    	callq  *0x5d9e(%rip)        # 4081dc <__imp_EnterCriticalSection>
  40243e:	48 8b 05 9b 54 00 00 	mov    0x549b(%rip),%rax        # 4078e0 <key_dtor_list>
  402445:	48 8d 0d b4 54 00 00 	lea    0x54b4(%rip),%rcx        # 407900 <__mingwthr_cs>
  40244c:	48 89 1d 8d 54 00 00 	mov    %rbx,0x548d(%rip)        # 4078e0 <key_dtor_list>
  402453:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402457:	ff 15 c7 5d 00 00    	callq  *0x5dc7(%rip)        # 408224 <__imp_LeaveCriticalSection>
  40245d:	89 f0                	mov    %esi,%eax
  40245f:	48 83 c4 28          	add    $0x28,%rsp
  402463:	5b                   	pop    %rbx
  402464:	5e                   	pop    %rsi
  402465:	5f                   	pop    %rdi
  402466:	5d                   	pop    %rbp
  402467:	c3                   	retq   
  402468:	be ff ff ff ff       	mov    $0xffffffff,%esi
  40246d:	eb 9a                	jmp    402409 <___w64_mingwthr_add_key_dtor+0x19>
  40246f:	90                   	nop

0000000000402470 <___w64_mingwthr_remove_key_dtor>:
  402470:	53                   	push   %rbx
  402471:	48 83 ec 20          	sub    $0x20,%rsp
  402475:	8b 05 6d 54 00 00    	mov    0x546d(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  40247b:	85 c0                	test   %eax,%eax
  40247d:	89 cb                	mov    %ecx,%ebx
  40247f:	75 0f                	jne    402490 <___w64_mingwthr_remove_key_dtor+0x20>
  402481:	31 c0                	xor    %eax,%eax
  402483:	48 83 c4 20          	add    $0x20,%rsp
  402487:	5b                   	pop    %rbx
  402488:	c3                   	retq   
  402489:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402490:	48 8d 0d 69 54 00 00 	lea    0x5469(%rip),%rcx        # 407900 <__mingwthr_cs>
  402497:	ff 15 3f 5d 00 00    	callq  *0x5d3f(%rip)        # 4081dc <__imp_EnterCriticalSection>
  40249d:	48 8b 05 3c 54 00 00 	mov    0x543c(%rip),%rax        # 4078e0 <key_dtor_list>
  4024a4:	48 85 c0             	test   %rax,%rax
  4024a7:	74 1a                	je     4024c3 <___w64_mingwthr_remove_key_dtor+0x53>
  4024a9:	8b 10                	mov    (%rax),%edx
  4024ab:	39 d3                	cmp    %edx,%ebx
  4024ad:	75 0b                	jne    4024ba <___w64_mingwthr_remove_key_dtor+0x4a>
  4024af:	eb 4f                	jmp    402500 <___w64_mingwthr_remove_key_dtor+0x90>
  4024b1:	8b 11                	mov    (%rcx),%edx
  4024b3:	39 da                	cmp    %ebx,%edx
  4024b5:	74 29                	je     4024e0 <___w64_mingwthr_remove_key_dtor+0x70>
  4024b7:	48 89 c8             	mov    %rcx,%rax
  4024ba:	48 8b 48 10          	mov    0x10(%rax),%rcx
  4024be:	48 85 c9             	test   %rcx,%rcx
  4024c1:	75 ee                	jne    4024b1 <___w64_mingwthr_remove_key_dtor+0x41>
  4024c3:	48 8d 0d 36 54 00 00 	lea    0x5436(%rip),%rcx        # 407900 <__mingwthr_cs>
  4024ca:	ff 15 54 5d 00 00    	callq  *0x5d54(%rip)        # 408224 <__imp_LeaveCriticalSection>
  4024d0:	31 c0                	xor    %eax,%eax
  4024d2:	48 83 c4 20          	add    $0x20,%rsp
  4024d6:	5b                   	pop    %rbx
  4024d7:	c3                   	retq   
  4024d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4024df:	00 
  4024e0:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  4024e4:	48 89 50 10          	mov    %rdx,0x10(%rax)
  4024e8:	e8 63 05 00 00       	callq  402a50 <free>
  4024ed:	48 8d 0d 0c 54 00 00 	lea    0x540c(%rip),%rcx        # 407900 <__mingwthr_cs>
  4024f4:	ff 15 2a 5d 00 00    	callq  *0x5d2a(%rip)        # 408224 <__imp_LeaveCriticalSection>
  4024fa:	eb d4                	jmp    4024d0 <___w64_mingwthr_remove_key_dtor+0x60>
  4024fc:	0f 1f 40 00          	nopl   0x0(%rax)
  402500:	48 8b 50 10          	mov    0x10(%rax),%rdx
  402504:	48 89 c1             	mov    %rax,%rcx
  402507:	48 89 15 d2 53 00 00 	mov    %rdx,0x53d2(%rip)        # 4078e0 <key_dtor_list>
  40250e:	eb d8                	jmp    4024e8 <___w64_mingwthr_remove_key_dtor+0x78>

0000000000402510 <__mingw_TLScallback>:
  402510:	53                   	push   %rbx
  402511:	48 83 ec 20          	sub    $0x20,%rsp
  402515:	83 fa 01             	cmp    $0x1,%edx
  402518:	0f 84 92 00 00 00    	je     4025b0 <__mingw_TLScallback+0xa0>
  40251e:	72 30                	jb     402550 <__mingw_TLScallback+0x40>
  402520:	83 fa 02             	cmp    $0x2,%edx
  402523:	74 1b                	je     402540 <__mingw_TLScallback+0x30>
  402525:	83 fa 03             	cmp    $0x3,%edx
  402528:	75 1b                	jne    402545 <__mingw_TLScallback+0x35>
  40252a:	8b 05 b8 53 00 00    	mov    0x53b8(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  402530:	85 c0                	test   %eax,%eax
  402532:	74 11                	je     402545 <__mingw_TLScallback+0x35>
  402534:	e8 47 fe ff ff       	callq  402380 <__mingwthr_run_key_dtors.part.0>
  402539:	eb 0a                	jmp    402545 <__mingw_TLScallback+0x35>
  40253b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402540:	e8 fb f4 ff ff       	callq  401a40 <_fpreset>
  402545:	b8 01 00 00 00       	mov    $0x1,%eax
  40254a:	48 83 c4 20          	add    $0x20,%rsp
  40254e:	5b                   	pop    %rbx
  40254f:	c3                   	retq   
  402550:	8b 05 92 53 00 00    	mov    0x5392(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  402556:	85 c0                	test   %eax,%eax
  402558:	0f 85 82 00 00 00    	jne    4025e0 <__mingw_TLScallback+0xd0>
  40255e:	8b 05 84 53 00 00    	mov    0x5384(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  402564:	83 f8 01             	cmp    $0x1,%eax
  402567:	75 dc                	jne    402545 <__mingw_TLScallback+0x35>
  402569:	48 8b 0d 70 53 00 00 	mov    0x5370(%rip),%rcx        # 4078e0 <key_dtor_list>
  402570:	48 85 c9             	test   %rcx,%rcx
  402573:	74 11                	je     402586 <__mingw_TLScallback+0x76>
  402575:	48 8b 59 10          	mov    0x10(%rcx),%rbx
  402579:	e8 d2 04 00 00       	callq  402a50 <free>
  40257e:	48 85 db             	test   %rbx,%rbx
  402581:	48 89 d9             	mov    %rbx,%rcx
  402584:	75 ef                	jne    402575 <__mingw_TLScallback+0x65>
  402586:	48 8d 0d 73 53 00 00 	lea    0x5373(%rip),%rcx        # 407900 <__mingwthr_cs>
  40258d:	48 c7 05 48 53 00 00 	movq   $0x0,0x5348(%rip)        # 4078e0 <key_dtor_list>
  402594:	00 00 00 00 
  402598:	c7 05 46 53 00 00 00 	movl   $0x0,0x5346(%rip)        # 4078e8 <__mingwthr_cs_init>
  40259f:	00 00 00 
  4025a2:	ff 15 2c 5c 00 00    	callq  *0x5c2c(%rip)        # 4081d4 <__IAT_start__>
  4025a8:	eb 9b                	jmp    402545 <__mingw_TLScallback+0x35>
  4025aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4025b0:	8b 05 32 53 00 00    	mov    0x5332(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  4025b6:	85 c0                	test   %eax,%eax
  4025b8:	74 16                	je     4025d0 <__mingw_TLScallback+0xc0>
  4025ba:	c7 05 24 53 00 00 01 	movl   $0x1,0x5324(%rip)        # 4078e8 <__mingwthr_cs_init>
  4025c1:	00 00 00 
  4025c4:	b8 01 00 00 00       	mov    $0x1,%eax
  4025c9:	48 83 c4 20          	add    $0x20,%rsp
  4025cd:	5b                   	pop    %rbx
  4025ce:	c3                   	retq   
  4025cf:	90                   	nop
  4025d0:	48 8d 0d 29 53 00 00 	lea    0x5329(%rip),%rcx        # 407900 <__mingwthr_cs>
  4025d7:	ff 15 3f 5c 00 00    	callq  *0x5c3f(%rip)        # 40821c <__imp_InitializeCriticalSection>
  4025dd:	eb db                	jmp    4025ba <__mingw_TLScallback+0xaa>
  4025df:	90                   	nop
  4025e0:	e8 9b fd ff ff       	callq  402380 <__mingwthr_run_key_dtors.part.0>
  4025e5:	e9 74 ff ff ff       	jmpq   40255e <__mingw_TLScallback+0x4e>
  4025ea:	90                   	nop
  4025eb:	90                   	nop
  4025ec:	90                   	nop
  4025ed:	90                   	nop
  4025ee:	90                   	nop
  4025ef:	90                   	nop

00000000004025f0 <_ValidateImageBase.part.0>:
  4025f0:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  4025f4:	48 01 c1             	add    %rax,%rcx
  4025f7:	31 c0                	xor    %eax,%eax
  4025f9:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
  4025ff:	74 01                	je     402602 <_ValidateImageBase.part.0+0x12>
  402601:	c3                   	retq   
  402602:	31 c0                	xor    %eax,%eax
  402604:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
  40260a:	0f 94 c0             	sete   %al
  40260d:	c3                   	retq   
  40260e:	66 90                	xchg   %ax,%ax

0000000000402610 <_ValidateImageBase>:
  402610:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  402615:	74 09                	je     402620 <_ValidateImageBase+0x10>
  402617:	31 c0                	xor    %eax,%eax
  402619:	c3                   	retq   
  40261a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402620:	eb ce                	jmp    4025f0 <_ValidateImageBase.part.0>
  402622:	0f 1f 40 00          	nopl   0x0(%rax)
  402626:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40262d:	00 00 00 

0000000000402630 <_FindPESection>:
  402630:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  402634:	48 01 c1             	add    %rax,%rcx
  402637:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  40263b:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
  402640:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  402644:	85 c9                	test   %ecx,%ecx
  402646:	74 29                	je     402671 <_FindPESection+0x41>
  402648:	83 e9 01             	sub    $0x1,%ecx
  40264b:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  40264f:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
  402654:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  402658:	49 39 d0             	cmp    %rdx,%r8
  40265b:	4c 89 c1             	mov    %r8,%rcx
  40265e:	77 08                	ja     402668 <_FindPESection+0x38>
  402660:	03 48 08             	add    0x8(%rax),%ecx
  402663:	48 39 d1             	cmp    %rdx,%rcx
  402666:	77 0b                	ja     402673 <_FindPESection+0x43>
  402668:	48 83 c0 28          	add    $0x28,%rax
  40266c:	4c 39 c8             	cmp    %r9,%rax
  40266f:	75 e3                	jne    402654 <_FindPESection+0x24>
  402671:	31 c0                	xor    %eax,%eax
  402673:	c3                   	retq   
  402674:	66 90                	xchg   %ax,%ax
  402676:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40267d:	00 00 00 

0000000000402680 <_FindPESectionByName>:
  402680:	57                   	push   %rdi
  402681:	56                   	push   %rsi
  402682:	53                   	push   %rbx
  402683:	48 83 ec 20          	sub    $0x20,%rsp
  402687:	48 89 ce             	mov    %rcx,%rsi
  40268a:	e8 91 03 00 00       	callq  402a20 <strlen>
  40268f:	48 83 f8 08          	cmp    $0x8,%rax
  402693:	77 6b                	ja     402700 <_FindPESectionByName+0x80>
  402695:	48 8b 15 c4 1c 00 00 	mov    0x1cc4(%rip),%rdx        # 404360 <.refptr.__image_base__>
  40269c:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  4026a1:	75 5d                	jne    402700 <_FindPESectionByName+0x80>
  4026a3:	48 89 d1             	mov    %rdx,%rcx
  4026a6:	e8 45 ff ff ff       	callq  4025f0 <_ValidateImageBase.part.0>
  4026ab:	85 c0                	test   %eax,%eax
  4026ad:	74 51                	je     402700 <_FindPESectionByName+0x80>
  4026af:	48 63 4a 3c          	movslq 0x3c(%rdx),%rcx
  4026b3:	48 01 d1             	add    %rdx,%rcx
  4026b6:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  4026ba:	48 8d 5c 01 18       	lea    0x18(%rcx,%rax,1),%rbx
  4026bf:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
  4026c3:	85 c0                	test   %eax,%eax
  4026c5:	74 39                	je     402700 <_FindPESectionByName+0x80>
  4026c7:	83 e8 01             	sub    $0x1,%eax
  4026ca:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4026ce:	48 8d 7c c3 28       	lea    0x28(%rbx,%rax,8),%rdi
  4026d3:	eb 09                	jmp    4026de <_FindPESectionByName+0x5e>
  4026d5:	48 83 c3 28          	add    $0x28,%rbx
  4026d9:	48 39 fb             	cmp    %rdi,%rbx
  4026dc:	74 22                	je     402700 <_FindPESectionByName+0x80>
  4026de:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  4026e4:	48 89 f2             	mov    %rsi,%rdx
  4026e7:	48 89 d9             	mov    %rbx,%rcx
  4026ea:	e8 29 03 00 00       	callq  402a18 <strncmp>
  4026ef:	85 c0                	test   %eax,%eax
  4026f1:	75 e2                	jne    4026d5 <_FindPESectionByName+0x55>
  4026f3:	48 89 d8             	mov    %rbx,%rax
  4026f6:	48 83 c4 20          	add    $0x20,%rsp
  4026fa:	5b                   	pop    %rbx
  4026fb:	5e                   	pop    %rsi
  4026fc:	5f                   	pop    %rdi
  4026fd:	c3                   	retq   
  4026fe:	66 90                	xchg   %ax,%ax
  402700:	31 db                	xor    %ebx,%ebx
  402702:	48 89 d8             	mov    %rbx,%rax
  402705:	48 83 c4 20          	add    $0x20,%rsp
  402709:	5b                   	pop    %rbx
  40270a:	5e                   	pop    %rsi
  40270b:	5f                   	pop    %rdi
  40270c:	c3                   	retq   
  40270d:	0f 1f 00             	nopl   (%rax)

0000000000402710 <__mingw_GetSectionForAddress>:
  402710:	48 83 ec 28          	sub    $0x28,%rsp
  402714:	4c 8b 05 45 1c 00 00 	mov    0x1c45(%rip),%r8        # 404360 <.refptr.__image_base__>
  40271b:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  402721:	48 89 ca             	mov    %rcx,%rdx
  402724:	75 57                	jne    40277d <__mingw_GetSectionForAddress+0x6d>
  402726:	4c 89 c1             	mov    %r8,%rcx
  402729:	e8 c2 fe ff ff       	callq  4025f0 <_ValidateImageBase.part.0>
  40272e:	85 c0                	test   %eax,%eax
  402730:	74 4b                	je     40277d <__mingw_GetSectionForAddress+0x6d>
  402732:	49 63 40 3c          	movslq 0x3c(%r8),%rax
  402736:	48 89 d1             	mov    %rdx,%rcx
  402739:	4c 29 c1             	sub    %r8,%rcx
  40273c:	49 01 c0             	add    %rax,%r8
  40273f:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
  402744:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
  402749:	85 d2                	test   %edx,%edx
  40274b:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
  402750:	74 2b                	je     40277d <__mingw_GetSectionForAddress+0x6d>
  402752:	83 ea 01             	sub    $0x1,%edx
  402755:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  402759:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  40275e:	66 90                	xchg   %ax,%ax
  402760:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  402764:	4c 39 c1             	cmp    %r8,%rcx
  402767:	4c 89 c2             	mov    %r8,%rdx
  40276a:	72 08                	jb     402774 <__mingw_GetSectionForAddress+0x64>
  40276c:	03 50 08             	add    0x8(%rax),%edx
  40276f:	48 39 d1             	cmp    %rdx,%rcx
  402772:	72 0b                	jb     40277f <__mingw_GetSectionForAddress+0x6f>
  402774:	48 83 c0 28          	add    $0x28,%rax
  402778:	4c 39 c8             	cmp    %r9,%rax
  40277b:	75 e3                	jne    402760 <__mingw_GetSectionForAddress+0x50>
  40277d:	31 c0                	xor    %eax,%eax
  40277f:	48 83 c4 28          	add    $0x28,%rsp
  402783:	c3                   	retq   
  402784:	66 90                	xchg   %ax,%ax
  402786:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40278d:	00 00 00 

0000000000402790 <__mingw_GetSectionCount>:
  402790:	48 83 ec 28          	sub    $0x28,%rsp
  402794:	48 8b 15 c5 1b 00 00 	mov    0x1bc5(%rip),%rdx        # 404360 <.refptr.__image_base__>
  40279b:	45 31 c0             	xor    %r8d,%r8d
  40279e:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  4027a3:	74 0b                	je     4027b0 <__mingw_GetSectionCount+0x20>
  4027a5:	44 89 c0             	mov    %r8d,%eax
  4027a8:	48 83 c4 28          	add    $0x28,%rsp
  4027ac:	c3                   	retq   
  4027ad:	0f 1f 00             	nopl   (%rax)
  4027b0:	48 89 d1             	mov    %rdx,%rcx
  4027b3:	e8 38 fe ff ff       	callq  4025f0 <_ValidateImageBase.part.0>
  4027b8:	85 c0                	test   %eax,%eax
  4027ba:	74 e9                	je     4027a5 <__mingw_GetSectionCount+0x15>
  4027bc:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
  4027c0:	44 0f b7 44 10 06    	movzwl 0x6(%rax,%rdx,1),%r8d
  4027c6:	44 89 c0             	mov    %r8d,%eax
  4027c9:	48 83 c4 28          	add    $0x28,%rsp
  4027cd:	c3                   	retq   
  4027ce:	66 90                	xchg   %ax,%ax

00000000004027d0 <_FindPESectionExec>:
  4027d0:	48 83 ec 28          	sub    $0x28,%rsp
  4027d4:	4c 8b 05 85 1b 00 00 	mov    0x1b85(%rip),%r8        # 404360 <.refptr.__image_base__>
  4027db:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  4027e1:	48 89 ca             	mov    %rcx,%rdx
  4027e4:	75 52                	jne    402838 <_FindPESectionExec+0x68>
  4027e6:	4c 89 c1             	mov    %r8,%rcx
  4027e9:	e8 02 fe ff ff       	callq  4025f0 <_ValidateImageBase.part.0>
  4027ee:	85 c0                	test   %eax,%eax
  4027f0:	74 46                	je     402838 <_FindPESectionExec+0x68>
  4027f2:	49 63 48 3c          	movslq 0x3c(%r8),%rcx
  4027f6:	4c 01 c1             	add    %r8,%rcx
  4027f9:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  4027fd:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
  402802:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  402806:	85 c9                	test   %ecx,%ecx
  402808:	74 2e                	je     402838 <_FindPESectionExec+0x68>
  40280a:	83 e9 01             	sub    $0x1,%ecx
  40280d:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  402811:	48 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%rcx
  402816:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40281d:	00 00 00 
  402820:	f6 40 27 20          	testb  $0x20,0x27(%rax)
  402824:	74 09                	je     40282f <_FindPESectionExec+0x5f>
  402826:	48 85 d2             	test   %rdx,%rdx
  402829:	74 0f                	je     40283a <_FindPESectionExec+0x6a>
  40282b:	48 83 ea 01          	sub    $0x1,%rdx
  40282f:	48 83 c0 28          	add    $0x28,%rax
  402833:	48 39 c8             	cmp    %rcx,%rax
  402836:	75 e8                	jne    402820 <_FindPESectionExec+0x50>
  402838:	31 c0                	xor    %eax,%eax
  40283a:	48 83 c4 28          	add    $0x28,%rsp
  40283e:	c3                   	retq   
  40283f:	90                   	nop

0000000000402840 <_GetPEImageBase>:
  402840:	48 83 ec 28          	sub    $0x28,%rsp
  402844:	48 8b 15 15 1b 00 00 	mov    0x1b15(%rip),%rdx        # 404360 <.refptr.__image_base__>
  40284b:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  402850:	75 1e                	jne    402870 <_GetPEImageBase+0x30>
  402852:	48 89 d1             	mov    %rdx,%rcx
  402855:	e8 96 fd ff ff       	callq  4025f0 <_ValidateImageBase.part.0>
  40285a:	85 c0                	test   %eax,%eax
  40285c:	b8 00 00 00 00       	mov    $0x0,%eax
  402861:	48 0f 45 c2          	cmovne %rdx,%rax
  402865:	48 83 c4 28          	add    $0x28,%rsp
  402869:	c3                   	retq   
  40286a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402870:	31 c0                	xor    %eax,%eax
  402872:	48 83 c4 28          	add    $0x28,%rsp
  402876:	c3                   	retq   
  402877:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40287e:	00 00 

0000000000402880 <_IsNonwritableInCurrentImage>:
  402880:	48 83 ec 28          	sub    $0x28,%rsp
  402884:	4c 8b 05 d5 1a 00 00 	mov    0x1ad5(%rip),%r8        # 404360 <.refptr.__image_base__>
  40288b:	31 c0                	xor    %eax,%eax
  40288d:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  402893:	48 89 ca             	mov    %rcx,%rdx
  402896:	74 08                	je     4028a0 <_IsNonwritableInCurrentImage+0x20>
  402898:	48 83 c4 28          	add    $0x28,%rsp
  40289c:	c3                   	retq   
  40289d:	0f 1f 00             	nopl   (%rax)
  4028a0:	4c 89 c1             	mov    %r8,%rcx
  4028a3:	e8 48 fd ff ff       	callq  4025f0 <_ValidateImageBase.part.0>
  4028a8:	85 c0                	test   %eax,%eax
  4028aa:	74 ec                	je     402898 <_IsNonwritableInCurrentImage+0x18>
  4028ac:	49 63 40 3c          	movslq 0x3c(%r8),%rax
  4028b0:	48 89 d1             	mov    %rdx,%rcx
  4028b3:	4c 29 c1             	sub    %r8,%rcx
  4028b6:	49 01 c0             	add    %rax,%r8
  4028b9:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
  4028be:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
  4028c3:	85 d2                	test   %edx,%edx
  4028c5:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
  4028ca:	74 31                	je     4028fd <_IsNonwritableInCurrentImage+0x7d>
  4028cc:	83 ea 01             	sub    $0x1,%edx
  4028cf:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  4028d3:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  4028d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4028df:	00 
  4028e0:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  4028e4:	4c 39 c1             	cmp    %r8,%rcx
  4028e7:	4c 89 c2             	mov    %r8,%rdx
  4028ea:	72 08                	jb     4028f4 <_IsNonwritableInCurrentImage+0x74>
  4028ec:	03 50 08             	add    0x8(%rax),%edx
  4028ef:	48 39 d1             	cmp    %rdx,%rcx
  4028f2:	72 10                	jb     402904 <_IsNonwritableInCurrentImage+0x84>
  4028f4:	48 83 c0 28          	add    $0x28,%rax
  4028f8:	4c 39 c8             	cmp    %r9,%rax
  4028fb:	75 e3                	jne    4028e0 <_IsNonwritableInCurrentImage+0x60>
  4028fd:	31 c0                	xor    %eax,%eax
  4028ff:	48 83 c4 28          	add    $0x28,%rsp
  402903:	c3                   	retq   
  402904:	8b 40 24             	mov    0x24(%rax),%eax
  402907:	f7 d0                	not    %eax
  402909:	c1 e8 1f             	shr    $0x1f,%eax
  40290c:	48 83 c4 28          	add    $0x28,%rsp
  402910:	c3                   	retq   
  402911:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402916:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40291d:	00 00 00 

0000000000402920 <__mingw_enum_import_library_names>:
  402920:	48 83 ec 28          	sub    $0x28,%rsp
  402924:	4c 8b 1d 35 1a 00 00 	mov    0x1a35(%rip),%r11        # 404360 <.refptr.__image_base__>
  40292b:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
  402931:	41 89 c9             	mov    %ecx,%r9d
  402934:	75 58                	jne    40298e <__mingw_enum_import_library_names+0x6e>
  402936:	4c 89 d9             	mov    %r11,%rcx
  402939:	e8 b2 fc ff ff       	callq  4025f0 <_ValidateImageBase.part.0>
  40293e:	85 c0                	test   %eax,%eax
  402940:	74 4c                	je     40298e <__mingw_enum_import_library_names+0x6e>
  402942:	49 63 43 3c          	movslq 0x3c(%r11),%rax
  402946:	4c 01 d8             	add    %r11,%rax
  402949:	8b 90 90 00 00 00    	mov    0x90(%rax),%edx
  40294f:	85 d2                	test   %edx,%edx
  402951:	74 3b                	je     40298e <__mingw_enum_import_library_names+0x6e>
  402953:	0f b7 48 14          	movzwl 0x14(%rax),%ecx
  402957:	48 8d 4c 08 18       	lea    0x18(%rax,%rcx,1),%rcx
  40295c:	0f b7 40 06          	movzwl 0x6(%rax),%eax
  402960:	85 c0                	test   %eax,%eax
  402962:	74 2a                	je     40298e <__mingw_enum_import_library_names+0x6e>
  402964:	83 e8 01             	sub    $0x1,%eax
  402967:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40296b:	48 8d 44 c1 28       	lea    0x28(%rcx,%rax,8),%rax
  402970:	44 8b 51 0c          	mov    0xc(%rcx),%r10d
  402974:	4c 39 d2             	cmp    %r10,%rdx
  402977:	4d 89 d0             	mov    %r10,%r8
  40297a:	72 09                	jb     402985 <__mingw_enum_import_library_names+0x65>
  40297c:	44 03 41 08          	add    0x8(%rcx),%r8d
  402980:	4c 39 c2             	cmp    %r8,%rdx
  402983:	72 10                	jb     402995 <__mingw_enum_import_library_names+0x75>
  402985:	48 83 c1 28          	add    $0x28,%rcx
  402989:	48 39 c1             	cmp    %rax,%rcx
  40298c:	75 e2                	jne    402970 <__mingw_enum_import_library_names+0x50>
  40298e:	31 c0                	xor    %eax,%eax
  402990:	48 83 c4 28          	add    $0x28,%rsp
  402994:	c3                   	retq   
  402995:	4c 01 da             	add    %r11,%rdx
  402998:	75 0e                	jne    4029a8 <__mingw_enum_import_library_names+0x88>
  40299a:	eb f2                	jmp    40298e <__mingw_enum_import_library_names+0x6e>
  40299c:	0f 1f 40 00          	nopl   0x0(%rax)
  4029a0:	41 83 e9 01          	sub    $0x1,%r9d
  4029a4:	48 83 c2 14          	add    $0x14,%rdx
  4029a8:	8b 4a 04             	mov    0x4(%rdx),%ecx
  4029ab:	85 c9                	test   %ecx,%ecx
  4029ad:	75 07                	jne    4029b6 <__mingw_enum_import_library_names+0x96>
  4029af:	8b 42 0c             	mov    0xc(%rdx),%eax
  4029b2:	85 c0                	test   %eax,%eax
  4029b4:	74 d8                	je     40298e <__mingw_enum_import_library_names+0x6e>
  4029b6:	45 85 c9             	test   %r9d,%r9d
  4029b9:	7f e5                	jg     4029a0 <__mingw_enum_import_library_names+0x80>
  4029bb:	8b 42 0c             	mov    0xc(%rdx),%eax
  4029be:	4c 01 d8             	add    %r11,%rax
  4029c1:	48 83 c4 28          	add    $0x28,%rsp
  4029c5:	c3                   	retq   
  4029c6:	90                   	nop
  4029c7:	90                   	nop
  4029c8:	90                   	nop
  4029c9:	90                   	nop
  4029ca:	90                   	nop
  4029cb:	90                   	nop
  4029cc:	90                   	nop
  4029cd:	90                   	nop
  4029ce:	90                   	nop
  4029cf:	90                   	nop

00000000004029d0 <___chkstk_ms>:
  4029d0:	51                   	push   %rcx
  4029d1:	50                   	push   %rax
  4029d2:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  4029d8:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
  4029dd:	72 19                	jb     4029f8 <___chkstk_ms+0x28>
  4029df:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
  4029e6:	48 83 09 00          	orq    $0x0,(%rcx)
  4029ea:	48 2d 00 10 00 00    	sub    $0x1000,%rax
  4029f0:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  4029f6:	77 e7                	ja     4029df <___chkstk_ms+0xf>
  4029f8:	48 29 c1             	sub    %rax,%rcx
  4029fb:	48 83 09 00          	orq    $0x0,(%rcx)
  4029ff:	58                   	pop    %rax
  402a00:	59                   	pop    %rcx
  402a01:	c3                   	retq   
  402a02:	90                   	nop
  402a03:	90                   	nop
  402a04:	90                   	nop
  402a05:	90                   	nop
  402a06:	90                   	nop
  402a07:	90                   	nop
  402a08:	90                   	nop
  402a09:	90                   	nop
  402a0a:	90                   	nop
  402a0b:	90                   	nop
  402a0c:	90                   	nop
  402a0d:	90                   	nop
  402a0e:	90                   	nop
  402a0f:	90                   	nop

0000000000402a10 <vfprintf>:
  402a10:	ff 25 46 59 00 00    	jmpq   *0x5946(%rip)        # 40835c <__imp_vfprintf>
  402a16:	90                   	nop
  402a17:	90                   	nop

0000000000402a18 <strncmp>:
  402a18:	ff 25 36 59 00 00    	jmpq   *0x5936(%rip)        # 408354 <__imp_strncmp>
  402a1e:	90                   	nop
  402a1f:	90                   	nop

0000000000402a20 <strlen>:
  402a20:	ff 25 26 59 00 00    	jmpq   *0x5926(%rip)        # 40834c <__imp_strlen>
  402a26:	90                   	nop
  402a27:	90                   	nop

0000000000402a28 <signal>:
  402a28:	ff 25 16 59 00 00    	jmpq   *0x5916(%rip)        # 408344 <__imp_signal>
  402a2e:	90                   	nop
  402a2f:	90                   	nop

0000000000402a30 <printf>:
  402a30:	ff 25 06 59 00 00    	jmpq   *0x5906(%rip)        # 40833c <__imp_printf>
  402a36:	90                   	nop
  402a37:	90                   	nop

0000000000402a38 <memcpy>:
  402a38:	ff 25 f6 58 00 00    	jmpq   *0x58f6(%rip)        # 408334 <__imp_memcpy>
  402a3e:	90                   	nop
  402a3f:	90                   	nop

0000000000402a40 <malloc>:
  402a40:	ff 25 e6 58 00 00    	jmpq   *0x58e6(%rip)        # 40832c <__imp_malloc>
  402a46:	90                   	nop
  402a47:	90                   	nop

0000000000402a48 <fwrite>:
  402a48:	ff 25 d6 58 00 00    	jmpq   *0x58d6(%rip)        # 408324 <__imp_fwrite>
  402a4e:	90                   	nop
  402a4f:	90                   	nop

0000000000402a50 <free>:
  402a50:	ff 25 c6 58 00 00    	jmpq   *0x58c6(%rip)        # 40831c <__imp_free>
  402a56:	90                   	nop
  402a57:	90                   	nop

0000000000402a58 <fprintf>:
  402a58:	ff 25 b6 58 00 00    	jmpq   *0x58b6(%rip)        # 408314 <__imp_fprintf>
  402a5e:	90                   	nop
  402a5f:	90                   	nop

0000000000402a60 <exit>:
  402a60:	ff 25 a6 58 00 00    	jmpq   *0x58a6(%rip)        # 40830c <__imp_exit>
  402a66:	90                   	nop
  402a67:	90                   	nop

0000000000402a68 <calloc>:
  402a68:	ff 25 96 58 00 00    	jmpq   *0x5896(%rip)        # 408304 <__imp_calloc>
  402a6e:	90                   	nop
  402a6f:	90                   	nop

0000000000402a70 <abort>:
  402a70:	ff 25 86 58 00 00    	jmpq   *0x5886(%rip)        # 4082fc <__imp_abort>
  402a76:	90                   	nop
  402a77:	90                   	nop

0000000000402a78 <_onexit>:
  402a78:	ff 25 76 58 00 00    	jmpq   *0x5876(%rip)        # 4082f4 <__imp__onexit>
  402a7e:	90                   	nop
  402a7f:	90                   	nop

0000000000402a80 <_initterm>:
  402a80:	ff 25 66 58 00 00    	jmpq   *0x5866(%rip)        # 4082ec <__imp__initterm>
  402a86:	90                   	nop
  402a87:	90                   	nop

0000000000402a88 <_cexit>:
  402a88:	ff 25 4e 58 00 00    	jmpq   *0x584e(%rip)        # 4082dc <__imp__cexit>
  402a8e:	90                   	nop
  402a8f:	90                   	nop

0000000000402a90 <_amsg_exit>:
  402a90:	ff 25 3e 58 00 00    	jmpq   *0x583e(%rip)        # 4082d4 <__imp__amsg_exit>
  402a96:	90                   	nop
  402a97:	90                   	nop

0000000000402a98 <__setusermatherr>:
  402a98:	ff 25 26 58 00 00    	jmpq   *0x5826(%rip)        # 4082c4 <__imp___setusermatherr>
  402a9e:	90                   	nop
  402a9f:	90                   	nop

0000000000402aa0 <__set_app_type>:
  402aa0:	ff 25 16 58 00 00    	jmpq   *0x5816(%rip)        # 4082bc <__imp___set_app_type>
  402aa6:	90                   	nop
  402aa7:	90                   	nop

0000000000402aa8 <__lconv_init>:
  402aa8:	ff 25 06 58 00 00    	jmpq   *0x5806(%rip)        # 4082b4 <__imp___lconv_init>
  402aae:	90                   	nop
  402aaf:	90                   	nop

0000000000402ab0 <__getmainargs>:
  402ab0:	ff 25 e6 57 00 00    	jmpq   *0x57e6(%rip)        # 40829c <__imp___getmainargs>
  402ab6:	90                   	nop
  402ab7:	90                   	nop

0000000000402ab8 <__C_specific_handler>:
  402ab8:	ff 25 d6 57 00 00    	jmpq   *0x57d6(%rip)        # 408294 <__imp___C_specific_handler>
  402abe:	90                   	nop
  402abf:	90                   	nop

0000000000402ac0 <__acrt_iob_func>:
  402ac0:	53                   	push   %rbx
  402ac1:	48 83 ec 20          	sub    $0x20,%rsp
  402ac5:	89 cb                	mov    %ecx,%ebx
  402ac7:	e8 54 00 00 00       	callq  402b20 <__iob_func>
  402acc:	89 d9                	mov    %ebx,%ecx
  402ace:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
  402ad2:	48 c1 e2 04          	shl    $0x4,%rdx
  402ad6:	48 01 d0             	add    %rdx,%rax
  402ad9:	48 83 c4 20          	add    $0x20,%rsp
  402add:	5b                   	pop    %rbx
  402ade:	c3                   	retq   
  402adf:	90                   	nop

0000000000402ae0 <_get_invalid_parameter_handler>:
  402ae0:	48 8b 05 69 4e 00 00 	mov    0x4e69(%rip),%rax        # 407950 <handler>
  402ae7:	c3                   	retq   
  402ae8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402aef:	00 

0000000000402af0 <_set_invalid_parameter_handler>:
  402af0:	48 89 c8             	mov    %rcx,%rax
  402af3:	48 87 05 56 4e 00 00 	xchg   %rax,0x4e56(%rip)        # 407950 <handler>
  402afa:	c3                   	retq   
  402afb:	90                   	nop
  402afc:	90                   	nop
  402afd:	90                   	nop
  402afe:	90                   	nop
  402aff:	90                   	nop

0000000000402b00 <__p__acmdln>:
  402b00:	48 8b 05 79 18 00 00 	mov    0x1879(%rip),%rax        # 404380 <.refptr.__imp__acmdln>
  402b07:	48 8b 00             	mov    (%rax),%rax
  402b0a:	c3                   	retq   
  402b0b:	90                   	nop
  402b0c:	90                   	nop
  402b0d:	90                   	nop
  402b0e:	90                   	nop
  402b0f:	90                   	nop

0000000000402b10 <__p__fmode>:
  402b10:	48 8b 05 79 18 00 00 	mov    0x1879(%rip),%rax        # 404390 <.refptr.__imp__fmode>
  402b17:	48 8b 00             	mov    (%rax),%rax
  402b1a:	c3                   	retq   
  402b1b:	90                   	nop
  402b1c:	90                   	nop
  402b1d:	90                   	nop
  402b1e:	90                   	nop
  402b1f:	90                   	nop

0000000000402b20 <__iob_func>:
  402b20:	ff 25 86 57 00 00    	jmpq   *0x5786(%rip)        # 4082ac <__imp___iob_func>
  402b26:	90                   	nop
  402b27:	90                   	nop
  402b28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402b2f:	00 

0000000000402b30 <VirtualQuery>:
  402b30:	ff 25 4e 57 00 00    	jmpq   *0x574e(%rip)        # 408284 <__imp_VirtualQuery>
  402b36:	90                   	nop
  402b37:	90                   	nop

0000000000402b38 <VirtualProtect>:
  402b38:	ff 25 3e 57 00 00    	jmpq   *0x573e(%rip)        # 40827c <__imp_VirtualProtect>
  402b3e:	90                   	nop
  402b3f:	90                   	nop

0000000000402b40 <UnhandledExceptionFilter>:
  402b40:	ff 25 2e 57 00 00    	jmpq   *0x572e(%rip)        # 408274 <__imp_UnhandledExceptionFilter>
  402b46:	90                   	nop
  402b47:	90                   	nop

0000000000402b48 <TlsGetValue>:
  402b48:	ff 25 1e 57 00 00    	jmpq   *0x571e(%rip)        # 40826c <__imp_TlsGetValue>
  402b4e:	90                   	nop
  402b4f:	90                   	nop

0000000000402b50 <TerminateProcess>:
  402b50:	ff 25 0e 57 00 00    	jmpq   *0x570e(%rip)        # 408264 <__imp_TerminateProcess>
  402b56:	90                   	nop
  402b57:	90                   	nop

0000000000402b58 <Sleep>:
  402b58:	ff 25 fe 56 00 00    	jmpq   *0x56fe(%rip)        # 40825c <__imp_Sleep>
  402b5e:	90                   	nop
  402b5f:	90                   	nop

0000000000402b60 <SetUnhandledExceptionFilter>:
  402b60:	ff 25 ee 56 00 00    	jmpq   *0x56ee(%rip)        # 408254 <__imp_SetUnhandledExceptionFilter>
  402b66:	90                   	nop
  402b67:	90                   	nop

0000000000402b68 <RtlVirtualUnwind>:
  402b68:	ff 25 de 56 00 00    	jmpq   *0x56de(%rip)        # 40824c <__imp_RtlVirtualUnwind>
  402b6e:	90                   	nop
  402b6f:	90                   	nop

0000000000402b70 <RtlLookupFunctionEntry>:
  402b70:	ff 25 ce 56 00 00    	jmpq   *0x56ce(%rip)        # 408244 <__imp_RtlLookupFunctionEntry>
  402b76:	90                   	nop
  402b77:	90                   	nop

0000000000402b78 <RtlCaptureContext>:
  402b78:	ff 25 be 56 00 00    	jmpq   *0x56be(%rip)        # 40823c <__imp_RtlCaptureContext>
  402b7e:	90                   	nop
  402b7f:	90                   	nop

0000000000402b80 <RtlAddFunctionTable>:
  402b80:	ff 25 ae 56 00 00    	jmpq   *0x56ae(%rip)        # 408234 <__imp_RtlAddFunctionTable>
  402b86:	90                   	nop
  402b87:	90                   	nop

0000000000402b88 <QueryPerformanceCounter>:
  402b88:	ff 25 9e 56 00 00    	jmpq   *0x569e(%rip)        # 40822c <__imp_QueryPerformanceCounter>
  402b8e:	90                   	nop
  402b8f:	90                   	nop

0000000000402b90 <LeaveCriticalSection>:
  402b90:	ff 25 8e 56 00 00    	jmpq   *0x568e(%rip)        # 408224 <__imp_LeaveCriticalSection>
  402b96:	90                   	nop
  402b97:	90                   	nop

0000000000402b98 <InitializeCriticalSection>:
  402b98:	ff 25 7e 56 00 00    	jmpq   *0x567e(%rip)        # 40821c <__imp_InitializeCriticalSection>
  402b9e:	90                   	nop
  402b9f:	90                   	nop

0000000000402ba0 <GetTickCount>:
  402ba0:	ff 25 6e 56 00 00    	jmpq   *0x566e(%rip)        # 408214 <__imp_GetTickCount>
  402ba6:	90                   	nop
  402ba7:	90                   	nop

0000000000402ba8 <GetSystemTimeAsFileTime>:
  402ba8:	ff 25 5e 56 00 00    	jmpq   *0x565e(%rip)        # 40820c <__imp_GetSystemTimeAsFileTime>
  402bae:	90                   	nop
  402baf:	90                   	nop

0000000000402bb0 <GetStartupInfoA>:
  402bb0:	ff 25 4e 56 00 00    	jmpq   *0x564e(%rip)        # 408204 <__imp_GetStartupInfoA>
  402bb6:	90                   	nop
  402bb7:	90                   	nop

0000000000402bb8 <GetLastError>:
  402bb8:	ff 25 3e 56 00 00    	jmpq   *0x563e(%rip)        # 4081fc <__imp_GetLastError>
  402bbe:	90                   	nop
  402bbf:	90                   	nop

0000000000402bc0 <GetCurrentThreadId>:
  402bc0:	ff 25 2e 56 00 00    	jmpq   *0x562e(%rip)        # 4081f4 <__imp_GetCurrentThreadId>
  402bc6:	90                   	nop
  402bc7:	90                   	nop

0000000000402bc8 <GetCurrentProcessId>:
  402bc8:	ff 25 1e 56 00 00    	jmpq   *0x561e(%rip)        # 4081ec <__imp_GetCurrentProcessId>
  402bce:	90                   	nop
  402bcf:	90                   	nop

0000000000402bd0 <GetCurrentProcess>:
  402bd0:	ff 25 0e 56 00 00    	jmpq   *0x560e(%rip)        # 4081e4 <__imp_GetCurrentProcess>
  402bd6:	90                   	nop
  402bd7:	90                   	nop

0000000000402bd8 <EnterCriticalSection>:
  402bd8:	ff 25 fe 55 00 00    	jmpq   *0x55fe(%rip)        # 4081dc <__imp_EnterCriticalSection>
  402bde:	90                   	nop
  402bdf:	90                   	nop

0000000000402be0 <DeleteCriticalSection>:
  402be0:	ff 25 ee 55 00 00    	jmpq   *0x55ee(%rip)        # 4081d4 <__IAT_start__>
  402be6:	90                   	nop
  402be7:	90                   	nop
  402be8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402bef:	00 

0000000000402bf0 <main>:
  402bf0:	48 83 ec 38          	sub    $0x38,%rsp
  402bf4:	e8 07 ea ff ff       	callq  401600 <__main>
  402bf9:	ba 0a 00 00 00       	mov    $0xa,%edx
  402bfe:	48 8d 0d fb 13 00 00 	lea    0x13fb(%rip),%rcx        # 404000 <.rdata>
  402c05:	e8 26 fe ff ff       	callq  402a30 <printf>
  402c0a:	c7 44 24 2c 03 00 00 	movl   $0x3,0x2c(%rsp)
  402c11:	00 
  402c12:	8b 54 24 2c          	mov    0x2c(%rsp),%edx
  402c16:	48 8d 0d ec 13 00 00 	lea    0x13ec(%rip),%rcx        # 404009 <.rdata+0x9>
  402c1d:	83 c2 07             	add    $0x7,%edx
  402c20:	e8 0b fe ff ff       	callq  402a30 <printf>
  402c25:	31 c0                	xor    %eax,%eax
  402c27:	48 83 c4 38          	add    $0x38,%rsp
  402c2b:	c3                   	retq   
  402c2c:	90                   	nop
  402c2d:	90                   	nop
  402c2e:	90                   	nop
  402c2f:	90                   	nop

0000000000402c30 <__report_error>:
  402c30:	56                   	push   %rsi
  402c31:	53                   	push   %rbx
  402c32:	48 83 ec 38          	sub    $0x38,%rsp
  402c36:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
  402c3b:	48 89 cb             	mov    %rcx,%rbx
  402c3e:	b9 02 00 00 00       	mov    $0x2,%ecx
  402c43:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
  402c48:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
  402c4d:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
  402c52:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  402c57:	e8 64 fe ff ff       	callq  402ac0 <__acrt_iob_func>
  402c5c:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
  402c62:	ba 01 00 00 00       	mov    $0x1,%edx
  402c67:	48 8d 0d 72 15 00 00 	lea    0x1572(%rip),%rcx        # 4041e0 <.rdata>
  402c6e:	49 89 c1             	mov    %rax,%r9
  402c71:	e8 d2 fd ff ff       	callq  402a48 <fwrite>
  402c76:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  402c7b:	b9 02 00 00 00       	mov    $0x2,%ecx
  402c80:	e8 3b fe ff ff       	callq  402ac0 <__acrt_iob_func>
  402c85:	48 89 da             	mov    %rbx,%rdx
  402c88:	48 89 c1             	mov    %rax,%rcx
  402c8b:	49 89 f0             	mov    %rsi,%r8
  402c8e:	e8 7d fd ff ff       	callq  402a10 <vfprintf>
  402c93:	e8 d8 fd ff ff       	callq  402a70 <abort>
  402c98:	90                   	nop
  402c99:	90                   	nop
  402c9a:	90                   	nop
  402c9b:	90                   	nop
  402c9c:	90                   	nop
  402c9d:	90                   	nop
  402c9e:	90                   	nop
  402c9f:	90                   	nop

0000000000402ca0 <register_frame_ctor>:
  402ca0:	e9 8b e8 ff ff       	jmpq   401530 <__gcc_register_frame>
  402ca5:	90                   	nop
  402ca6:	90                   	nop
  402ca7:	90                   	nop
  402ca8:	90                   	nop
  402ca9:	90                   	nop
  402caa:	90                   	nop
  402cab:	90                   	nop
  402cac:	90                   	nop
  402cad:	90                   	nop
  402cae:	90                   	nop
  402caf:	90                   	nop

0000000000402cb0 <__CTOR_LIST__>:
  402cb0:	ff                   	(bad)  
  402cb1:	ff                   	(bad)  
  402cb2:	ff                   	(bad)  
  402cb3:	ff                   	(bad)  
  402cb4:	ff                   	(bad)  
  402cb5:	ff                   	(bad)  
  402cb6:	ff                   	(bad)  
  402cb7:	ff                   	.byte 0xff

0000000000402cb8 <.ctors.65535>:
  402cb8:	a0 2c 40 00 00 00 00 	movabs 0x402c,%al
  402cbf:	00 00 
  402cc1:	00 00                	add    %al,(%rax)
  402cc3:	00 00                	add    %al,(%rax)
  402cc5:	00 00                	add    %al,(%rax)
	...

0000000000402cc8 <__DTOR_LIST__>:
  402cc8:	ff                   	(bad)  
  402cc9:	ff                   	(bad)  
  402cca:	ff                   	(bad)  
  402ccb:	ff                   	(bad)  
  402ccc:	ff                   	(bad)  
  402ccd:	ff                   	(bad)  
  402cce:	ff                   	(bad)  
  402ccf:	ff 00                	incl   (%rax)
  402cd1:	00 00                	add    %al,(%rax)
  402cd3:	00 00                	add    %al,(%rax)
  402cd5:	00 00                	add    %al,(%rax)
	...
