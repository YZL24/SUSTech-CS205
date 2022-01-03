
ex2:	file format mach-o 64-bit x86-64


Disassembly of section __TEXT,__text:

0000000100003ef0 <_main>:
100003ef0: 55                          	pushq	%rbp
100003ef1: 48 89 e5                    	movq	%rsp, %rbp
100003ef4: 48 83 ec 20                 	subq	$32, %rsp
100003ef8: c7 45 fc 00 00 00 00        	movl	$0, -4(%rbp)
100003eff: bf 06 00 00 00              	movl	$6, %edi
100003f04: e8 7d 00 00 00              	callq	0x100003f86 <dyld_stub_binder+0x100003f86>
100003f09: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100003f0d: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003f11: c6 00 41                    	movb	$65, (%rax)
100003f14: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003f18: c6 40 01 70                 	movb	$112, 1(%rax)
100003f1c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003f20: c6 40 02 50                 	movb	$80, 2(%rax)
100003f24: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003f28: c6 40 03 6c                 	movb	$108, 3(%rax)
100003f2c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003f30: c6 40 04 65                 	movb	$101, 4(%rax)
100003f34: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003f38: c6 40 05 00                 	movb	$0, 5(%rax)
100003f3c: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100003f40: 48 8d 3d 67 00 00 00        	leaq	103(%rip), %rdi  # 100003fae <dyld_stub_binder+0x100003fae>
100003f47: b0 00                       	movb	$0, %al
100003f49: e8 3e 00 00 00              	callq	0x100003f8c <dyld_stub_binder+0x100003f8c>
100003f4e: c7 45 ec 00 00 00 00        	movl	$0, -20(%rbp)
100003f55: 81 7d ec 00 01 00 00        	cmpl	$256, -20(%rbp)
100003f5c: 0f 8d 1a 00 00 00           	jge	0x100003f7c <_main+0x8c>
100003f62: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003f66: 48 63 4d ec                 	movslq	-20(%rbp), %rcx
100003f6a: c6 04 08 00                 	movb	$0, (%rax,%rcx)
100003f6e: 8b 45 ec                    	movl	-20(%rbp), %eax
100003f71: 83 c0 01                    	addl	$1, %eax
100003f74: 89 45 ec                    	movl	%eax, -20(%rbp)
100003f77: e9 d9 ff ff ff              	jmp	0x100003f55 <_main+0x65>
100003f7c: 8b 45 fc                    	movl	-4(%rbp), %eax
100003f7f: 48 83 c4 20                 	addq	$32, %rsp
100003f83: 5d                          	popq	%rbp
100003f84: c3                          	retq

Disassembly of section __TEXT,__stubs:

0000000100003f86 <__stubs>:
100003f86: ff 25 74 40 00 00           	jmpq	*16500(%rip)  # 100008000 <dyld_stub_binder+0x100008000>
100003f8c: ff 25 76 40 00 00           	jmpq	*16502(%rip)  # 100008008 <dyld_stub_binder+0x100008008>

Disassembly of section __TEXT,__stub_helper:

0000000100003f94 <__stub_helper>:
100003f94: 4c 8d 1d 75 40 00 00        	leaq	16501(%rip), %r11  # 100008010 <__dyld_private>
100003f9b: 41 53                       	pushq	%r11
100003f9d: ff 25 5d 00 00 00           	jmpq	*93(%rip)  # 100004000 <dyld_stub_binder+0x100004000>
100003fa3: 90                          	nop
100003fa4: 68 00 00 00 00              	pushq	$0
100003fa9: e9 e6 ff ff ff              	jmp	0x100003f94 <__stub_helper>
