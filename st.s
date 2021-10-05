.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L2
.L5:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	write@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jns	.L3
	movq	-8(%rbp), %rax
	jmp	.L4
.L3:
	movq	-8(%rbp), %rax
	subq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	addq	%rax, -32(%rbp)
.L2:
	cmpq	$0, -40(%rbp)
	jne	.L5
	movq	-16(%rbp), %rax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	xwrite, .-xwrite
	.section	.rodata
.LC0:
	.string	"malloc: %s\n"
	.text
	.globl	xmalloc
	.type	xmalloc, @function
xmalloc:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L7
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	die
.L7:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	xmalloc, .-xmalloc
	.section	.rodata
.LC1:
	.string	"realloc: %s\n"
	.text
	.globl	xrealloc
	.type	xrealloc, @function
xrealloc:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L10
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	die
.L10:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	xrealloc, .-xrealloc
	.section	.rodata
.LC2:
	.string	"strdup: %s\n"
	.text
	.globl	xstrdup
	.type	xstrdup, @function
xstrdup:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strdup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L13
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	die
.L13:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	xstrdup, .-xstrdup
	.type	utf8decode, @function
utf8decode:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-80(%rbp), %rax
	movl	$65533, (%rax)
	cmpq	$0, -88(%rbp)
	jne	.L16
	movl	$0, %eax
	jmp	.L25
.L16:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	leaq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	utf8decodebyte
	movl	%eax, -60(%rbp)
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	je	.L18
	movq	-56(%rbp), %rax
	cmpq	$4, %rax
	jbe	.L19
.L18:
	movl	$1, %eax
	jmp	.L25
.L19:
	movq	$1, -40(%rbp)
	movq	$1, -32(%rbp)
	jmp	.L20
.L23:
	movl	-60(%rbp), %eax
	sall	$6, %eax
	movl	%eax, %ebx
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	utf8decodebyte
	orl	%ebx, %eax
	movl	%eax, -60(%rbp)
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	je	.L21
	movq	-32(%rbp), %rax
	jmp	.L25
.L21:
	addq	$1, -40(%rbp)
	addq	$1, -32(%rbp)
.L20:
	movq	-40(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jnb	.L22
	movq	-56(%rbp), %rax
	cmpq	%rax, -32(%rbp)
	jb	.L23
.L22:
	movq	-56(%rbp), %rax
	cmpq	%rax, -32(%rbp)
	jnb	.L24
	movl	$0, %eax
	jmp	.L25
.L24:
	movq	-80(%rbp), %rax
	movl	-60(%rbp), %edx
	movl	%edx, (%rax)
	movq	-56(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	utf8validate
	movq	-56(%rbp), %rax
.L25:
	movq	-24(%rbp), %rcx
	subq	%fs:40, %rcx
	je	.L26
	call	__stack_chk_fail@PLT
.L26:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	utf8decode, .-utf8decode
	.type	utf8decodebyte, @function
utf8decodebyte:
.LFB11:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movq	%rsi, -16(%rbp)
	movb	%al, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L28
.L31:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	utfmask(%rip), %rdx
	movzbl	(%rax,%rdx), %edx
	movzbl	-4(%rbp), %eax
	movl	%edx, %ecx
	andl	%eax, %ecx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	utfbyte(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	cmpb	%al, %cl
	jne	.L29
	movzbl	-4(%rbp), %eax
	movzbl	%al, %ecx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	utfmask(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	notl	%eax
	andl	%ecx, %eax
	jmp	.L30
.L29:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L28:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$4, %rax
	jbe	.L31
	movl	$0, %eax
.L30:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	utf8decodebyte, .-utf8decodebyte
	.globl	utf8encode
	.type	utf8encode, @function
utf8encode:
.LFB12:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	-36(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	utf8validate
	movq	%rax, -24(%rbp)
	cmpq	$4, -24(%rbp)
	jbe	.L33
	movl	$0, %eax
	jmp	.L34
.L33:
	movq	-24(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.L35
.L36:
	movl	-36(%rbp), %eax
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movl	$0, %esi
	movl	%eax, %edi
	call	utf8encodebyte
	movb	%al, (%rbx)
	movl	-36(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, -36(%rbp)
	subq	$1, -32(%rbp)
.L35:
	cmpq	$0, -32(%rbp)
	jne	.L36
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	utf8encodebyte
	movq	-48(%rbp), %rdx
	movb	%al, (%rdx)
	movq	-24(%rbp), %rax
.L34:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	utf8encode, .-utf8encode
	.type	utf8encodebyte, @function
utf8encodebyte:
.LFB13:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	utfbyte(%rip), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	leaq	utfmask(%rip), %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	notl	%eax
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	andl	%ecx, %eax
	orl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	utf8encodebyte, .-utf8encodebyte
	.type	utf8validate, @function
utf8validate:
.LFB14:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	leaq	utfmin(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	ja	.L40
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	leaq	0(,%rax,4), %rcx
	leaq	utfmax(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	ja	.L40
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$55295, %eax
	jbe	.L41
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$57343, %eax
	ja	.L41
.L40:
	movq	-8(%rbp), %rax
	movl	$65533, (%rax)
.L41:
	movq	$1, -16(%rbp)
	jmp	.L42
.L43:
	addq	$1, -16(%rbp)
.L42:
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	leaq	0(,%rax,4), %rcx
	leaq	utfmax(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	ja	.L43
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	utf8validate, .-utf8validate
	.section	.rodata
	.align 32
	.type	base64_digits, @object
	.size	base64_digits, 255
base64_digits:
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	">"
	.string	""
	.string	""
	.string	"?456789:;<="
	.string	""
	.string	""
	.string	"\377"
	.string	""
	.string	""
	.string	""
	.string	"\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022\023\024\025\026\027\030\031"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\032\033\034\035\036\037 !\"#$%&'()*+,-./0123"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.text
	.type	base64dec_getc, @function
base64dec_getc:
.LFB15:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	jmp	.L46
.L48:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L46:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L47
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$16384, %eax
	testl	%eax, %eax
	je	.L48
.L47:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L49
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, (%rdx)
	movzbl	(%rax), %eax
	jmp	.L51
.L49:
	movl	$61, %eax
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	base64dec_getc, .-base64dec_getc
	.type	base64dec, @function
base64dec:
.LFB16:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andl	$3, %eax
	testq	%rax, %rax
	je	.L53
	movq	-24(%rbp), %rax
	andq	$-4, %rax
	addq	$4, %rax
	movq	%rax, -24(%rbp)
.L53:
	movq	-24(%rbp), %rax
	shrq	$2, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	xmalloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L54
.L58:
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	base64dec_getc
	movzbl	%al, %eax
	cltq
	leaq	base64_digits(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movsbl	%al, %eax
	movl	%eax, -40(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	base64dec_getc
	movzbl	%al, %eax
	cltq
	leaq	base64_digits(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movsbl	%al, %eax
	movl	%eax, -36(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	base64dec_getc
	movzbl	%al, %eax
	cltq
	leaq	base64_digits(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movsbl	%al, %eax
	movl	%eax, -32(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	base64dec_getc
	movzbl	%al, %eax
	cltq
	leaq	base64_digits(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movsbl	%al, %eax
	movl	%eax, -28(%rbp)
	cmpl	$-1, -40(%rbp)
	je	.L55
	cmpl	$-1, -36(%rbp)
	je	.L55
	movl	-40(%rbp), %eax
	sall	$2, %eax
	movl	%eax, %esi
	movl	-36(%rbp), %eax
	sarl	$4, %eax
	andl	$3, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	orl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	cmpl	$-1, -32(%rbp)
	je	.L60
	movl	-36(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %esi
	movl	-32(%rbp), %eax
	sarl	$2, %eax
	andl	$15, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	orl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	cmpl	$-1, -28(%rbp)
	je	.L61
	movl	-32(%rbp), %eax
	sall	$6, %eax
	movl	%eax, %esi
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	orl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
.L54:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L58
	jmp	.L55
.L60:
	nop
	jmp	.L55
.L61:
	nop
.L55:
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	base64dec, .-base64dec
	.globl	selinit
	.type	selinit, @function
selinit:
.LFB17:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, sel(%rip)
	movl	$0, 8+sel(%rip)
	movl	$-1, 28+sel(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	selinit, .-selinit
	.type	tlinelen, @function
tlinelen:
.LFB18:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	4+term(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	16036+term(%rip), %eax
	cmpl	%eax, -20(%rbp)
	jge	.L64
	movl	16032+term(%rip), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	16036+term(%rip), %edx
	subl	%edx, %eax
	leal	2001(%rax), %edx
	movslq	%edx, %rax
	imulq	$274877907, %rax, %rax
	shrq	$32, %rax
	sarl	$7, %eax
	movl	%edx, %ecx
	sarl	$31, %ecx
	subl	%ecx, %eax
	imull	$2000, %eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	term(%rip), %rax
	movq	(%rdx,%rax), %rax
	subq	$16, %rax
	jmp	.L65
.L64:
	movq	16+term(%rip), %rdx
	movl	16036+term(%rip), %ecx
	movl	-20(%rbp), %eax
	subl	%ecx, %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	subq	$16, %rax
.L65:
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movzwl	4(%rax), %eax
	movzwl	%ax, %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L68
	movl	-4(%rbp), %eax
	jmp	.L67
.L72:
	subl	$1, -4(%rbp)
.L68:
	cmpl	$0, -4(%rbp)
	jle	.L69
	movl	16036+term(%rip), %eax
	cmpl	%eax, -20(%rbp)
	jge	.L70
	movl	16032+term(%rip), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	16036+term(%rip), %edx
	subl	%edx, %eax
	leal	2001(%rax), %edx
	movslq	%edx, %rax
	imulq	$274877907, %rax, %rax
	shrq	$32, %rax
	sarl	$7, %eax
	movl	%edx, %ecx
	sarl	$31, %ecx
	subl	%ecx, %eax
	imull	$2000, %eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	term(%rip), %rax
	movq	(%rdx,%rax), %rax
	subq	$16, %rax
	jmp	.L71
.L70:
	movq	16+term(%rip), %rdx
	movl	16036+term(%rip), %ecx
	movl	-20(%rbp), %eax
	subl	%ecx, %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	subq	$16, %rax
.L71:
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$32, %eax
	je	.L72
.L69:
	movl	-4(%rbp), %eax
.L67:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	tlinelen, .-tlinelen
	.globl	tlinehistlen
	.type	tlinehistlen, @function
tlinehistlen:
.LFB19:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	4+term(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	term(%rip), %edx
	movl	$2002, %eax
	subl	%edx, %eax
	cmpl	%eax, -20(%rbp)
	jg	.L74
	movl	-20(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	term(%rip), %rax
	movq	(%rdx,%rax), %rax
	subq	$16, %rax
	jmp	.L75
.L74:
	movq	16+term(%rip), %rdx
	movl	-20(%rbp), %eax
	leal	-2000(%rax), %ecx
	movl	term(%rip), %eax
	addl	%ecx, %eax
	cltq
	salq	$3, %rax
	subq	$24, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	subq	$16, %rax
.L75:
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movzwl	4(%rax), %eax
	movzwl	%ax, %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L78
	movl	-4(%rbp), %eax
	jmp	.L77
.L82:
	subl	$1, -4(%rbp)
.L78:
	cmpl	$0, -4(%rbp)
	jle	.L79
	movl	term(%rip), %edx
	movl	$2002, %eax
	subl	%edx, %eax
	cmpl	%eax, -20(%rbp)
	jg	.L80
	movl	-20(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	term(%rip), %rax
	movq	(%rdx,%rax), %rax
	subq	$16, %rax
	jmp	.L81
.L80:
	movq	16+term(%rip), %rdx
	movl	-20(%rbp), %eax
	leal	-2000(%rax), %ecx
	movl	term(%rip), %eax
	addl	%ecx, %eax
	cltq
	salq	$3, %rax
	subq	$24, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	subq	$16, %rax
.L81:
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$32, %eax
	je	.L82
.L79:
	movl	-4(%rbp), %eax
.L77:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	tlinehistlen, .-tlinehistlen
	.globl	selstart
	.type	selstart, @function
selstart:
.LFB20:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	call	selclear
	movl	$1, sel(%rip)
	movl	$1, 4+sel(%rip)
	movl	16092+term(%rip), %eax
	andl	$4, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, 44+sel(%rip)
	movl	-12(%rbp), %eax
	movl	%eax, 8+sel(%rip)
	movl	-4(%rbp), %eax
	movl	%eax, 28+sel(%rip)
	movl	28+sel(%rip), %eax
	movl	%eax, 36+sel(%rip)
	movl	-8(%rbp), %eax
	movl	%eax, 32+sel(%rip)
	movl	32+sel(%rip), %eax
	movl	%eax, 40+sel(%rip)
	call	selnormalize
	movl	8+sel(%rip), %eax
	testl	%eax, %eax
	je	.L84
	movl	$2, sel(%rip)
.L84:
	movl	24+sel(%rip), %edx
	movl	16+sel(%rip), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	tsetdirt
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	selstart, .-selstart
	.globl	selextend
	.type	selextend, @function
selextend:
.LFB21:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movl	%ecx, -48(%rbp)
	movl	sel(%rip), %eax
	testl	%eax, %eax
	je	.L93
	cmpl	$0, -48(%rbp)
	je	.L88
	movl	sel(%rip), %eax
	cmpl	$1, %eax
	jne	.L88
	call	selclear
	jmp	.L85
.L88:
	movl	40+sel(%rip), %eax
	movl	%eax, -20(%rbp)
	movl	36+sel(%rip), %eax
	movl	%eax, -16(%rbp)
	movl	16+sel(%rip), %eax
	movl	%eax, -12(%rbp)
	movl	24+sel(%rip), %eax
	movl	%eax, -8(%rbp)
	movl	4+sel(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, 36+sel(%rip)
	movl	-40(%rbp), %eax
	movl	%eax, 40+sel(%rip)
	call	selnormalize
	movl	-44(%rbp), %eax
	movl	%eax, 4+sel(%rip)
	movl	40+sel(%rip), %eax
	cmpl	%eax, -20(%rbp)
	jne	.L89
	movl	36+sel(%rip), %eax
	cmpl	%eax, -16(%rbp)
	jne	.L89
	movl	4+sel(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jne	.L89
	movl	sel(%rip), %eax
	cmpl	$1, %eax
	jne	.L90
.L89:
	movl	24+sel(%rip), %eax
	cmpl	%eax, -8(%rbp)
	cmovge	-8(%rbp), %eax
	movl	%eax, %edx
	movl	16+sel(%rip), %eax
	cmpl	%eax, -12(%rbp)
	cmovle	-12(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	tsetdirt
.L90:
	cmpl	$0, -48(%rbp)
	je	.L91
	movl	$0, %eax
	jmp	.L92
.L91:
	movl	$2, %eax
.L92:
	movl	%eax, sel(%rip)
	jmp	.L85
.L93:
	nop
.L85:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	selextend, .-selextend
	.type	selnormalize, @function
selnormalize:
.LFB22:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	4+sel(%rip), %eax
	cmpl	$1, %eax
	jne	.L95
	movl	32+sel(%rip), %edx
	movl	40+sel(%rip), %eax
	cmpl	%eax, %edx
	je	.L95
	movl	32+sel(%rip), %edx
	movl	40+sel(%rip), %eax
	cmpl	%eax, %edx
	jge	.L96
	movl	28+sel(%rip), %eax
	jmp	.L97
.L96:
	movl	36+sel(%rip), %eax
.L97:
	movl	%eax, 12+sel(%rip)
	movl	32+sel(%rip), %edx
	movl	40+sel(%rip), %eax
	cmpl	%eax, %edx
	jge	.L98
	movl	36+sel(%rip), %eax
	jmp	.L99
.L98:
	movl	28+sel(%rip), %eax
.L99:
	movl	%eax, 20+sel(%rip)
	jmp	.L100
.L95:
	movl	36+sel(%rip), %edx
	movl	28+sel(%rip), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, 12+sel(%rip)
	movl	28+sel(%rip), %edx
	movl	36+sel(%rip), %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, 20+sel(%rip)
.L100:
	movl	40+sel(%rip), %edx
	movl	32+sel(%rip), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, 16+sel(%rip)
	movl	32+sel(%rip), %edx
	movl	40+sel(%rip), %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, 24+sel(%rip)
	movl	$-1, %edx
	leaq	16+sel(%rip), %rsi
	leaq	12+sel(%rip), %rdi
	call	selsnap
	movl	$1, %edx
	leaq	24+sel(%rip), %rsi
	leaq	20+sel(%rip), %rdi
	call	selsnap
	movl	4+sel(%rip), %eax
	cmpl	$2, %eax
	je	.L104
	movl	16+sel(%rip), %eax
	movl	%eax, %edi
	call	tlinelen
	movl	%eax, -4(%rbp)
	movl	12+sel(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jge	.L103
	movl	-4(%rbp), %eax
	movl	%eax, 12+sel(%rip)
.L103:
	movl	24+sel(%rip), %eax
	movl	%eax, %edi
	call	tlinelen
	movl	20+sel(%rip), %edx
	cmpl	%edx, %eax
	jg	.L94
	movl	4+term(%rip), %eax
	subl	$1, %eax
	movl	%eax, 20+sel(%rip)
	jmp	.L94
.L104:
	nop
.L94:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	selnormalize, .-selnormalize
	.globl	selected
	.type	selected, @function
selected:
.LFB23:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	sel(%rip), %eax
	cmpl	$1, %eax
	je	.L106
	movl	28+sel(%rip), %eax
	cmpl	$-1, %eax
	je	.L106
	movl	44+sel(%rip), %edx
	movl	16092+term(%rip), %eax
	andl	$4, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	cmpl	%eax, %edx
	je	.L107
.L106:
	movl	$0, %eax
	jmp	.L108
.L107:
	movl	4+sel(%rip), %eax
	cmpl	$2, %eax
	jne	.L109
	movl	16+sel(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L110
	movl	24+sel(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jg	.L110
	movl	12+sel(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L110
	movl	20+sel(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jg	.L110
	movl	$1, %eax
	jmp	.L108
.L110:
	movl	$0, %eax
	jmp	.L108
.L109:
	movl	16+sel(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L112
	movl	24+sel(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jg	.L112
	movl	16+sel(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jne	.L113
	movl	12+sel(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L112
.L113:
	movl	24+sel(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jne	.L114
	movl	20+sel(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jg	.L112
.L114:
	movl	$1, %eax
	jmp	.L108
.L112:
	movl	$0, %eax
.L108:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	selected, .-selected
	.type	selsnap, @function
selsnap:
.LFB24:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movl	8+sel(%rip), %eax
	cmpl	$1, %eax
	je	.L117
	cmpl	$2, %eax
	je	.L118
	jmp	.L159
.L117:
	movq	-64(%rbp), %rax
	movl	(%rax), %edx
	movl	16036+term(%rip), %eax
	cmpl	%eax, %edx
	jge	.L120
	movq	-64(%rbp), %rax
	movl	(%rax), %edx
	movl	16032+term(%rip), %eax
	addl	%edx, %eax
	movl	16036+term(%rip), %edx
	subl	%edx, %eax
	leal	2001(%rax), %edx
	movslq	%edx, %rax
	imulq	$274877907, %rax, %rax
	shrq	$32, %rax
	sarl	$7, %eax
	movl	%edx, %ecx
	sarl	$31, %ecx
	subl	%ecx, %eax
	imull	$2000, %eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	term(%rip), %rax
	movq	(%rdx,%rax), %rax
	jmp	.L121
.L120:
	movq	16+term(%rip), %rdx
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	movl	16036+term(%rip), %ecx
	subl	%ecx, %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
.L121:
	movq	-56(%rbp), %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L122
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	worddelimiters(%rip), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	wcschr@PLT
	testq	%rax, %rax
	je	.L122
	movl	$1, %eax
	jmp	.L123
.L122:
	movl	$0, %eax
.L123:
	movl	%eax, -24(%rbp)
.L137:
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movl	-68(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -40(%rbp)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	cmpl	$0, -40(%rbp)
	js	.L124
	movl	4+term(%rip), %eax
	cmpl	%eax, -40(%rbp)
	jl	.L125
.L124:
	movl	-68(%rbp), %eax
	addl	%eax, -36(%rbp)
	movl	4+term(%rip), %edx
	movl	-40(%rbp), %eax
	addl	%edx, %eax
	movl	4+term(%rip), %ecx
	cltd
	idivl	%ecx
	movl	%edx, -40(%rbp)
	cmpl	$0, -36(%rbp)
	js	.L153
	movl	term(%rip), %eax
	cmpl	%eax, -36(%rbp)
	jge	.L153
	cmpl	$0, -68(%rbp)
	jle	.L127
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -32(%rbp)
	jmp	.L128
.L127:
	movl	-36(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -32(%rbp)
.L128:
	movl	16036+term(%rip), %eax
	cmpl	%eax, -28(%rbp)
	jge	.L129
	movl	16032+term(%rip), %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	movl	16036+term(%rip), %edx
	subl	%edx, %eax
	leal	2001(%rax), %edx
	movslq	%edx, %rax
	imulq	$274877907, %rax, %rax
	shrq	$32, %rax
	sarl	$7, %eax
	movl	%edx, %ecx
	sarl	$31, %ecx
	subl	%ecx, %eax
	imull	$2000, %eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	term(%rip), %rax
	movq	(%rdx,%rax), %rax
	jmp	.L130
.L129:
	movq	16+term(%rip), %rdx
	movl	16036+term(%rip), %ecx
	movl	-28(%rbp), %eax
	subl	%ecx, %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
.L130:
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movzwl	4(%rax), %eax
	movzwl	%ax, %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L154
.L125:
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	tlinelen
	cmpl	%eax, -40(%rbp)
	jge	.L155
	movl	16036+term(%rip), %eax
	cmpl	%eax, -36(%rbp)
	jge	.L132
	movl	16032+term(%rip), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	movl	16036+term(%rip), %edx
	subl	%edx, %eax
	leal	2001(%rax), %edx
	movslq	%edx, %rax
	imulq	$274877907, %rax, %rax
	shrq	$32, %rax
	sarl	$7, %eax
	movl	%edx, %ecx
	sarl	$31, %ecx
	subl	%ecx, %eax
	imull	$2000, %eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	term(%rip), %rax
	movq	(%rdx,%rax), %rax
	jmp	.L133
.L132:
	movq	16+term(%rip), %rdx
	movl	16036+term(%rip), %ecx
	movl	-36(%rbp), %eax
	subl	%ecx, %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
.L133:
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L134
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	worddelimiters(%rip), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	wcschr@PLT
	testq	%rax, %rax
	je	.L134
	movl	$1, %eax
	jmp	.L135
.L134:
	movl	$0, %eax
.L135:
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movzwl	4(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L136
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	.L153
	cmpl	$0, -20(%rbp)
	je	.L136
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L153
.L136:
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %edx
	movl	%edx, (%rax)
	movq	-64(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	.L137
.L154:
	nop
	jmp	.L153
.L155:
	nop
	jmp	.L153
.L118:
	cmpl	$0, -68(%rbp)
	js	.L138
	movl	4+term(%rip), %eax
	leal	-1(%rax), %edx
	jmp	.L139
.L138:
	movl	$0, %edx
.L139:
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	cmpl	$0, -68(%rbp)
	jns	.L140
	jmp	.L141
.L146:
	movq	-64(%rbp), %rax
	movl	(%rax), %edx
	movl	16036+term(%rip), %eax
	cmpl	%eax, %edx
	jg	.L142
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movl	16032+term(%rip), %eax
	addl	%edx, %eax
	movl	16036+term(%rip), %edx
	subl	%edx, %eax
	leal	2001(%rax), %edx
	movslq	%edx, %rax
	imulq	$274877907, %rax, %rax
	shrq	$32, %rax
	sarl	$7, %eax
	movl	%edx, %ecx
	sarl	$31, %ecx
	subl	%ecx, %eax
	imull	$2000, %eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	term(%rip), %rax
	movq	(%rdx,%rax), %rax
	subq	$16, %rax
	jmp	.L143
.L142:
	movq	16+term(%rip), %rdx
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	16036+term(%rip), %ecx
	subl	%ecx, %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	subq	$16, %rax
.L143:
	movl	4+term(%rip), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movzwl	4(%rax), %eax
	movzwl	%ax, %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L156
	movq	-64(%rbp), %rax
	movl	(%rax), %edx
	movl	-68(%rbp), %eax
	addl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
.L141:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.L146
	jmp	.L157
.L140:
	cmpl	$0, -68(%rbp)
	jle	.L157
	jmp	.L148
.L152:
	movq	-64(%rbp), %rax
	movl	(%rax), %edx
	movl	16036+term(%rip), %eax
	cmpl	%eax, %edx
	jge	.L149
	movq	-64(%rbp), %rax
	movl	(%rax), %edx
	movl	16032+term(%rip), %eax
	addl	%edx, %eax
	movl	16036+term(%rip), %edx
	subl	%edx, %eax
	leal	2001(%rax), %edx
	movslq	%edx, %rax
	imulq	$274877907, %rax, %rax
	shrq	$32, %rax
	sarl	$7, %eax
	movl	%edx, %ecx
	sarl	$31, %ecx
	subl	%ecx, %eax
	imull	$2000, %eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	term(%rip), %rax
	movq	(%rdx,%rax), %rax
	subq	$16, %rax
	jmp	.L150
.L149:
	movq	16+term(%rip), %rdx
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	movl	16036+term(%rip), %ecx
	subl	%ecx, %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	subq	$16, %rax
.L150:
	movl	4+term(%rip), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movzwl	4(%rax), %eax
	movzwl	%ax, %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L158
	movq	-64(%rbp), %rax
	movl	(%rax), %edx
	movl	-68(%rbp), %eax
	addl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
.L148:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	movl	term(%rip), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jl	.L152
	jmp	.L157
.L156:
	nop
	jmp	.L157
.L158:
	nop
	jmp	.L157
.L153:
	nop
	jmp	.L159
.L157:
	nop
.L159:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	selsnap, .-selsnap
	.globl	getsel
	.type	getsel, @function
getsel:
.LFB25:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	28+sel(%rip), %eax
	cmpl	$-1, %eax
	jne	.L161
	movl	$0, %eax
	jmp	.L162
.L161:
	movl	4+term(%rip), %eax
	leal	1(%rax), %edx
	movl	24+sel(%rip), %eax
	movl	16+sel(%rip), %ecx
	subl	%ecx, %eax
	addl	$1, %eax
	imull	%edx, %eax
	sall	$2, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	xmalloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	16+sel(%rip), %eax
	movl	%eax, -48(%rbp)
	jmp	.L163
.L189:
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	tlinelen
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L164
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movb	$10, (%rax)
	jmp	.L165
.L164:
	movl	4+sel(%rip), %eax
	cmpl	$2, %eax
	jne	.L166
	movl	16036+term(%rip), %eax
	cmpl	%eax, -48(%rbp)
	jge	.L167
	movl	16032+term(%rip), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	movl	16036+term(%rip), %edx
	subl	%edx, %eax
	leal	2001(%rax), %edx
	movslq	%edx, %rax
	imulq	$274877907, %rax, %rax
	shrq	$32, %rax
	sarl	$7, %eax
	movl	%edx, %ecx
	sarl	$31, %ecx
	subl	%ecx, %eax
	imull	$2000, %eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	term(%rip), %rax
	movq	(%rdx,%rax), %rax
	jmp	.L168
.L167:
	movq	16+term(%rip), %rdx
	movl	16036+term(%rip), %ecx
	movl	-48(%rbp), %eax
	subl	%ecx, %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
.L168:
	movl	12+sel(%rip), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movl	20+sel(%rip), %eax
	movl	%eax, -44(%rbp)
	jmp	.L169
.L166:
	movl	16036+term(%rip), %eax
	cmpl	%eax, -48(%rbp)
	jge	.L170
	movl	16032+term(%rip), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	movl	16036+term(%rip), %edx
	subl	%edx, %eax
	leal	2001(%rax), %edx
	movslq	%edx, %rax
	imulq	$274877907, %rax, %rax
	shrq	$32, %rax
	sarl	$7, %eax
	movl	%edx, %ecx
	sarl	$31, %ecx
	subl	%ecx, %eax
	imull	$2000, %eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	term(%rip), %rax
	movq	(%rdx,%rax), %rax
	jmp	.L171
.L170:
	movq	16+term(%rip), %rdx
	movl	16036+term(%rip), %ecx
	movl	-48(%rbp), %eax
	subl	%ecx, %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
.L171:
	movl	16+sel(%rip), %edx
	cmpl	%edx, -48(%rbp)
	jne	.L172
	movl	12+sel(%rip), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	jmp	.L173
.L172:
	movl	$0, %edx
.L173:
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movl	24+sel(%rip), %eax
	cmpl	%eax, -48(%rbp)
	jne	.L174
	movl	20+sel(%rip), %eax
	jmp	.L175
.L174:
	movl	4+term(%rip), %eax
	subl	$1, %eax
.L175:
	movl	%eax, -44(%rbp)
.L169:
	movl	16036+term(%rip), %eax
	cmpl	%eax, -48(%rbp)
	jge	.L176
	movl	16032+term(%rip), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	movl	16036+term(%rip), %edx
	subl	%edx, %eax
	leal	2001(%rax), %edx
	movslq	%edx, %rax
	imulq	$274877907, %rax, %rax
	shrq	$32, %rax
	sarl	$7, %eax
	movl	%edx, %ecx
	sarl	$31, %ecx
	subl	%ecx, %eax
	imull	$2000, %eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	term(%rip), %rax
	movq	(%rdx,%rax), %rax
	jmp	.L177
.L176:
	movq	16+term(%rip), %rdx
	movl	16036+term(%rip), %ecx
	movl	-48(%rbp), %eax
	subl	%ecx, %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
.L177:
	movl	-36(%rbp), %edx
	subl	$1, %edx
	cmpl	%edx, -44(%rbp)
	jge	.L178
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	jmp	.L179
.L178:
	movl	-36(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
.L179:
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L180
.L182:
	subq	$16, -16(%rbp)
.L180:
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L183
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$32, %eax
	je	.L182
	jmp	.L183
.L186:
	movq	-24(%rbp), %rax
	movzwl	4(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L190
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	utf8encode
	addq	%rax, -32(%rbp)
	jmp	.L185
.L190:
	nop
.L185:
	addq	$16, -24(%rbp)
.L183:
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jbe	.L186
	movl	24+sel(%rip), %eax
	cmpl	%eax, -48(%rbp)
	jl	.L187
	movl	-44(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L165
.L187:
	movq	-16(%rbp), %rax
	movzwl	4(%rax), %eax
	movzwl	%ax, %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L188
	movl	4+sel(%rip), %eax
	cmpl	$2, %eax
	jne	.L165
.L188:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movb	$10, (%rax)
.L165:
	addl	$1, -48(%rbp)
.L163:
	movl	24+sel(%rip), %eax
	cmpl	%eax, -48(%rbp)
	jle	.L189
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
.L162:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	getsel, .-getsel
	.globl	selclear
	.type	selclear, @function
selclear:
.LFB26:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	28+sel(%rip), %eax
	cmpl	$-1, %eax
	je	.L194
	movl	$0, sel(%rip)
	movl	$-1, 28+sel(%rip)
	movl	24+sel(%rip), %edx
	movl	16+sel(%rip), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	tsetdirt
	jmp	.L191
.L194:
	nop
.L191:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	selclear, .-selclear
	.globl	die
	.type	die, @function
die:
.LFB27:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L196
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L196:
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	stderr(%rip), %rax
	leaq	-208(%rbp), %rdx
	movq	-216(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	vfprintf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE27:
	.size	die, .-die
	.section	.rodata
.LC3:
	.string	"getpwuid: %s\n"
.LC4:
	.string	"who are you?\n"
.LC5:
	.string	"SHELL"
.LC6:
	.string	"COLUMNS"
.LC7:
	.string	"LINES"
.LC8:
	.string	"TERMCAP"
.LC9:
	.string	"LOGNAME"
.LC10:
	.string	"USER"
.LC11:
	.string	"HOME"
.LC12:
	.string	"TERM"
	.text
	.type	execsh, @function
execsh:
.LFB28:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	__errno_location@PLT
	movl	$0, (%rax)
	call	getuid@PLT
	movl	%eax, %edi
	call	getpwuid@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L199
	call	__errno_location@PLT
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L200
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	die
	jmp	.L199
.L200:
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	die
.L199:
	leaq	.LC5(%rip), %rdi
	call	getenv@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L201
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L202
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	jmp	.L203
.L202:
	movq	-72(%rbp), %rax
.L203:
	movq	%rax, -64(%rbp)
.L201:
	cmpq	$0, -80(%rbp)
	je	.L204
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	$0, -48(%rbp)
	jmp	.L205
.L204:
	movq	scroll(%rip), %rax
	testq	%rax, %rax
	je	.L206
	movq	scroll(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	utmp(%rip), %rax
	testq	%rax, %rax
	je	.L207
	movq	utmp(%rip), %rax
	jmp	.L208
.L207:
	movq	-64(%rbp), %rax
.L208:
	movq	%rax, -48(%rbp)
	jmp	.L205
.L206:
	movq	utmp(%rip), %rax
	testq	%rax, %rax
	je	.L209
	movq	utmp(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	$0, -48(%rbp)
	jmp	.L205
.L209:
	movq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	$0, -48(%rbp)
.L205:
	cmpq	$0, -80(%rbp)
	jne	.L210
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -16(%rbp)
	leaq	-32(%rbp), %rax
	jmp	.L211
.L210:
	movq	-80(%rbp), %rax
.L211:
	movq	%rax, -80(%rbp)
	leaq	.LC6(%rip), %rdi
	call	unsetenv@PLT
	leaq	.LC7(%rip), %rdi
	call	unsetenv@PLT
	leaq	.LC8(%rip), %rdi
	call	unsetenv@PLT
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %edx
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rdi
	call	setenv@PLT
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %edx
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rdi
	call	setenv@PLT
	movq	-64(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	setenv@PLT
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movl	$1, %edx
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdi
	call	setenv@PLT
	movq	termname(%rip), %rax
	movl	$1, %edx
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rdi
	call	setenv@PLT
	movl	$0, %esi
	movl	$17, %edi
	call	signal@PLT
	movl	$0, %esi
	movl	$1, %edi
	call	signal@PLT
	movl	$0, %esi
	movl	$2, %edi
	call	signal@PLT
	movl	$0, %esi
	movl	$3, %edi
	call	signal@PLT
	movl	$0, %esi
	movl	$15, %edi
	call	signal@PLT
	movl	$0, %esi
	movl	$14, %edi
	call	signal@PLT
	movq	-80(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	execvp@PLT
	movl	$1, %edi
	call	_exit@PLT
	.cfi_endproc
.LFE28:
	.size	execsh, .-execsh
	.section	.rodata
	.align 8
.LC13:
	.string	"waiting for pid %hd failed: %s\n"
.LC14:
	.string	"child exited with status %d\n"
	.align 8
.LC15:
	.string	"child terminated due to signal %d\n"
	.text
	.type	sigchld, @function
sigchld:
.LFB29:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	pid(%rip), %eax
	leaq	-16(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	waitpid@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jns	.L214
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %rdx
	movl	pid(%rip), %eax
	movl	%eax, %esi
	leaq	.LC13(%rip), %rdi
	movl	$0, %eax
	call	die
.L214:
	movl	pid(%rip), %eax
	cmpl	%eax, -12(%rbp)
	jne	.L221
	movl	-16(%rbp), %eax
	andl	$127, %eax
	testl	%eax, %eax
	jne	.L217
	movl	-16(%rbp), %eax
	sarl	$8, %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L217
	movl	-16(%rbp), %eax
	sarl	$8, %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC14(%rip), %rdi
	movl	$0, %eax
	call	die
	jmp	.L218
.L217:
	movl	-16(%rbp), %eax
	andl	$127, %eax
	addl	$1, %eax
	sarb	%al
	testb	%al, %al
	jle	.L218
	movl	-16(%rbp), %eax
	andl	$127, %eax
	movl	%eax, %esi
	leaq	.LC15(%rip), %rdi
	movl	$0, %eax
	call	die
.L218:
	movl	$0, %edi
	call	_exit@PLT
.L221:
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L219
	call	__stack_chk_fail@PLT
.L219:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	sigchld, .-sigchld
	.section	.rodata
.LC16:
	.string	"incorrect stty parameters\n"
	.align 8
.LC17:
	.string	"stty parameter length too long\n"
.LC18:
	.string	"Couldn't call stty"
	.text
	.type	stty, @function
stty:
.LFB30:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$80, %rsp
	movq	%rdi, -4168(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	stty_args(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -4128(%rbp)
	cmpq	$4095, -4128(%rbp)
	jbe	.L223
	leaq	.LC16(%rip), %rdi
	movl	$0, %eax
	call	die
.L223:
	movq	stty_args(%rip), %rcx
	movq	-4128(%rbp), %rdx
	leaq	-4112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	leaq	-4112(%rbp), %rdx
	movq	-4128(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -4144(%rbp)
	movl	$4096, %eax
	subq	-4128(%rbp), %rax
	movq	%rax, -4136(%rbp)
	movq	-4168(%rbp), %rax
	movq	%rax, -4152(%rbp)
	jmp	.L224
.L227:
	movq	-4120(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -4128(%rbp)
	movq	-4136(%rbp), %rax
	subq	$1, %rax
	cmpq	%rax, -4128(%rbp)
	jbe	.L225
	leaq	.LC17(%rip), %rdi
	movl	$0, %eax
	call	die
.L225:
	movq	-4144(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -4144(%rbp)
	movb	$32, (%rax)
	movq	-4128(%rbp), %rdx
	movq	-4120(%rbp), %rcx
	movq	-4144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-4128(%rbp), %rax
	addq	%rax, -4144(%rbp)
	movq	-4136(%rbp), %rax
	subq	-4128(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -4136(%rbp)
	addq	$8, -4152(%rbp)
.L224:
	cmpq	$0, -4152(%rbp)
	je	.L226
	movq	-4152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -4120(%rbp)
	cmpq	$0, -4120(%rbp)
	jne	.L227
.L226:
	movq	-4144(%rbp), %rax
	movb	$0, (%rax)
	leaq	-4112(%rbp), %rax
	movq	%rax, %rdi
	call	system@PLT
	testl	%eax, %eax
	je	.L230
	leaq	.LC18(%rip), %rdi
	call	perror@PLT
.L230:
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L229
	call	__stack_chk_fail@PLT
.L229:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	stty, .-stty
	.section	.rodata
.LC19:
	.string	"-"
.LC20:
	.string	"Error opening %s:%s\n"
.LC21:
	.string	"open line '%s' failed: %s\n"
.LC22:
	.string	"openpty failed: %s\n"
.LC23:
	.string	"fork failed: %s\n"
.LC24:
	.string	"ioctl TIOCSCTTY failed: %s\n"
	.text
	.globl	ttynew
	.type	ttynew, @function
ttynew:
.LFB31:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -40(%rbp)
	je	.L232
	movl	16092+term(%rip), %eax
	orl	$32, %eax
	movl	%eax, 16092+term(%rip)
	movq	-40(%rbp), %rax
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L233
	movq	-40(%rbp), %rax
	movl	$438, %edx
	movl	$65, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	jmp	.L234
.L233:
	movl	$1, %eax
.L234:
	movl	%eax, iofd(%rip)
	movl	iofd(%rip), %eax
	testl	%eax, %eax
	jns	.L232
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	-40(%rbp), %rdx
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L232:
	cmpq	$0, -24(%rbp)
	je	.L235
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, cmdfd(%rip)
	movl	cmdfd(%rip), %eax
	testl	%eax, %eax
	jns	.L236
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC21(%rip), %rdi
	movl	$0, %eax
	call	die
.L236:
	movl	cmdfd(%rip), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	dup2@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	stty
	movl	cmdfd(%rip), %eax
	jmp	.L244
.L235:
	leaq	-12(%rbp), %rsi
	leaq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	openpty@PLT
	testl	%eax, %eax
	jns	.L238
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %rsi
	leaq	.LC22(%rip), %rdi
	movl	$0, %eax
	call	die
.L238:
	call	fork@PLT
	movl	%eax, pid(%rip)
	movl	pid(%rip), %eax
	cmpl	$-1, %eax
	je	.L239
	testl	%eax, %eax
	je	.L240
	jmp	.L246
.L239:
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rdi
	movl	$0, %eax
	call	die
	jmp	.L242
.L240:
	movl	iofd(%rip), %eax
	movl	%eax, %edi
	call	close@PLT
	call	setsid@PLT
	movl	-12(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	dup2@PLT
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	dup2@PLT
	movl	-12(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	dup2@PLT
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	$21518, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	ioctl@PLT
	testl	%eax, %eax
	jns	.L243
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %rsi
	leaq	.LC24(%rip), %rdi
	movl	$0, %eax
	call	die
.L243:
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	execsh
	jmp	.L242
.L246:
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	movl	-16(%rbp), %eax
	movl	%eax, cmdfd(%rip)
	leaq	sigchld(%rip), %rsi
	movl	$17, %edi
	call	signal@PLT
	nop
.L242:
	movl	cmdfd(%rip), %eax
.L244:
	movq	-8(%rbp), %rcx
	subq	%fs:40, %rcx
	je	.L245
	call	__stack_chk_fail@PLT
.L245:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	ttynew, .-ttynew
	.section	.rodata
.LC25:
	.string	"couldn't read from shell: %s\n"
	.text
	.globl	ttyread
	.type	ttyread, @function
ttyread:
.LFB32:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	buflen.5(%rip), %eax
	cltq
	movl	$8192, %edx
	subq	%rax, %rdx
	movl	buflen.5(%rip), %eax
	cltq
	leaq	buf.4(%rip), %rcx
	addq	%rax, %rcx
	movl	cmdfd(%rip), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	read@PLT
	movl	%eax, -8(%rbp)
	cmpl	$-1, -8(%rbp)
	je	.L248
	cmpl	$0, -8(%rbp)
	jne	.L249
	movl	$0, %edi
	call	exit@PLT
.L248:
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %rsi
	leaq	.LC25(%rip), %rdi
	movl	$0, %eax
	call	die
.L249:
	movl	buflen.5(%rip), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, buflen.5(%rip)
	movl	buflen.5(%rip), %eax
	movl	$0, %edx
	movl	%eax, %esi
	leaq	buf.4(%rip), %rdi
	call	twrite
	movl	%eax, -4(%rbp)
	movl	buflen.5(%rip), %eax
	subl	-4(%rbp), %eax
	movl	%eax, buflen.5(%rip)
	movl	buflen.5(%rip), %eax
	testl	%eax, %eax
	jle	.L250
	movl	buflen.5(%rip), %eax
	cltq
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	buf.4(%rip), %rcx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	leaq	buf.4(%rip), %rdi
	call	memmove@PLT
.L250:
	movl	-8(%rbp), %eax
	cltq
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	ttyread, .-ttyread
	.section	.rodata
.LC26:
	.string	"\r\n"
	.text
	.globl	ttywrite
	.type	ttywrite, @function
ttywrite:
.LFB33:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -24(%rbp)
	movl	16036+term(%rip), %eax
	movl	%eax, -24(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	kscrolldown
	cmpl	$0, -52(%rbp)
	je	.L253
	movl	16092+term(%rip), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L253
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	twrite
.L253:
	movl	16092+term(%rip), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L256
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ttywriteraw
	jmp	.L252
.L261:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$13, %al
	jne	.L257
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movl	$2, %esi
	leaq	.LC26(%rip), %rdi
	call	ttywriteraw
	jmp	.L258
.L257:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$13, %esi
	movq	%rax, %rdi
	call	memchr@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L259
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	jmp	.L260
.L259:
	movq	-16(%rbp), %rax
.L260:
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ttywriteraw
.L258:
	movq	-16(%rbp), %rax
	subq	-40(%rbp), %rax
	subq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
.L256:
	cmpq	$0, -48(%rbp)
	jne	.L261
.L252:
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L262
	call	__stack_chk_fail@PLT
.L262:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	ttywrite, .-ttywrite
	.section	.rodata
.LC27:
	.string	"select failed: %s\n"
.LC28:
	.string	"write error on tty: %s\n"
	.text
	.type	ttywriteraw, @function
ttywriteraw:
.LFB34:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$336, %rsp
	movq	%rdi, -328(%rbp)
	movq	%rsi, -336(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$256, -304(%rbp)
	jmp	.L264
.L277:
	leaq	-272(%rbp), %rax
	movq	%rax, -296(%rbp)
	movl	$0, -312(%rbp)
	jmp	.L265
.L266:
	movq	-296(%rbp), %rax
	movl	-312(%rbp), %edx
	movq	$0, (%rax,%rdx,8)
	addl	$1, -312(%rbp)
.L265:
	cmpl	$15, -312(%rbp)
	jbe	.L266
	leaq	-144(%rbp), %rax
	movq	%rax, -288(%rbp)
	movl	$0, -308(%rbp)
	jmp	.L267
.L268:
	movq	-288(%rbp), %rax
	movl	-308(%rbp), %edx
	movq	$0, (%rax,%rdx,8)
	addl	$1, -308(%rbp)
.L267:
	cmpl	$15, -308(%rbp)
	jbe	.L268
	movl	cmdfd(%rip), %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	movl	%eax, %esi
	movslq	%esi, %rax
	movq	-272(%rbp,%rax,8), %rdi
	movl	cmdfd(%rip), %eax
	cltd
	shrl	$26, %edx
	addl	%edx, %eax
	andl	$63, %eax
	subl	%edx, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	orq	%rax, %rdi
	movq	%rdi, %rdx
	movslq	%esi, %rax
	movq	%rdx, -272(%rbp,%rax,8)
	movl	cmdfd(%rip), %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	movl	%eax, %esi
	movslq	%esi, %rax
	movq	-144(%rbp,%rax,8), %rdi
	movl	cmdfd(%rip), %eax
	cltd
	shrl	$26, %edx
	addl	%edx, %eax
	andl	$63, %eax
	subl	%edx, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	orq	%rax, %rdi
	movq	%rdi, %rdx
	movslq	%esi, %rax
	movq	%rdx, -144(%rbp,%rax,8)
	movl	cmdfd(%rip), %eax
	leal	1(%rax), %edi
	leaq	-272(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rsi
	call	pselect@PLT
	testl	%eax, %eax
	jns	.L269
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$4, %eax
	jne	.L270
	jmp	.L264
.L270:
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %rsi
	leaq	.LC27(%rip), %rdi
	movl	$0, %eax
	call	die
.L269:
	movl	cmdfd(%rip), %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	cltq
	movq	-272(%rbp,%rax,8), %rsi
	movl	cmdfd(%rip), %eax
	cltd
	shrl	$26, %edx
	addl	%edx, %eax
	andl	$63, %eax
	subl	%edx, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	andq	%rsi, %rax
	testq	%rax, %rax
	je	.L271
	movq	-336(%rbp), %rax
	cmpq	%rax, -304(%rbp)
	cmovbe	-304(%rbp), %rax
	movq	%rax, %rdx
	movl	cmdfd(%rip), %eax
	movq	-328(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	write@PLT
	movq	%rax, -280(%rbp)
	cmpq	$0, -280(%rbp)
	js	.L281
	movq	-280(%rbp), %rax
	cmpq	%rax, -336(%rbp)
	jbe	.L282
	movq	-336(%rbp), %rax
	cmpq	-304(%rbp), %rax
	jnb	.L275
	call	ttyread
	movq	%rax, -304(%rbp)
.L275:
	movq	-280(%rbp), %rax
	subq	%rax, -336(%rbp)
	movq	-280(%rbp), %rax
	addq	%rax, -328(%rbp)
.L271:
	movl	cmdfd(%rip), %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rsi
	movl	cmdfd(%rip), %eax
	cltd
	shrl	$26, %edx
	addl	%edx, %eax
	andl	$63, %eax
	subl	%edx, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	andq	%rsi, %rax
	testq	%rax, %rax
	je	.L264
	call	ttyread
	movq	%rax, -304(%rbp)
.L264:
	cmpq	$0, -336(%rbp)
	jne	.L277
	jmp	.L263
.L281:
	nop
.L273:
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %rsi
	leaq	.LC28(%rip), %rdi
	movl	$0, %eax
	call	die
	jmp	.L263
.L282:
	nop
.L263:
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L279
	call	__stack_chk_fail@PLT
.L279:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	ttywriteraw, .-ttywriteraw
	.section	.rodata
.LC29:
	.string	"Couldn't set window size: %s\n"
	.text
	.globl	ttyresize
	.type	ttyresize, @function
ttyresize:
.LFB35:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	term(%rip), %eax
	movw	%ax, -16(%rbp)
	movl	4+term(%rip), %eax
	movw	%ax, -14(%rbp)
	movl	-20(%rbp), %eax
	movw	%ax, -12(%rbp)
	movl	-24(%rbp), %eax
	movw	%ax, -10(%rbp)
	movl	cmdfd(%rip), %eax
	leaq	-16(%rbp), %rdx
	movl	$21524, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	ioctl@PLT
	testl	%eax, %eax
	jns	.L286
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L286:
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L285
	call	__stack_chk_fail@PLT
.L285:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	ttyresize, .-ttyresize
	.globl	ttyhangup
	.type	ttyhangup, @function
ttyhangup:
.LFB36:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	pid(%rip), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	kill@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	ttyhangup, .-ttyhangup
	.globl	tattrset
	.type	tattrset, @function
tattrset:
.LFB37:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L289
.L294:
	movl	$0, -4(%rbp)
	jmp	.L290
.L293:
	movq	16+term(%rip), %rdx
	movl	-8(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	movzwl	4(%rax), %eax
	movzwl	%ax, %eax
	andl	-20(%rbp), %eax
	testl	%eax, %eax
	je	.L291
	movl	$1, %eax
	jmp	.L292
.L291:
	addl	$1, -4(%rbp)
.L290:
	movl	4+term(%rip), %eax
	subl	$1, %eax
	cmpl	%eax, -4(%rbp)
	jl	.L293
	addl	$1, -8(%rbp)
.L289:
	movl	term(%rip), %eax
	subl	$1, %eax
	cmpl	%eax, -8(%rbp)
	jl	.L294
	movl	$0, %eax
.L292:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	tattrset, .-tattrset
	.type	tsetdirt, @function
tsetdirt:
.LFB38:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	cmpl	$0, -20(%rbp)
	js	.L296
	movl	term(%rip), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L297
	movl	term(%rip), %eax
	subl	$1, %eax
	jmp	.L299
.L297:
	movl	-20(%rbp), %eax
	jmp	.L299
.L296:
	movl	$0, %eax
.L299:
	movl	%eax, -20(%rbp)
	cmpl	$0, -24(%rbp)
	js	.L300
	movl	term(%rip), %eax
	cmpl	%eax, -24(%rbp)
	jl	.L301
	movl	term(%rip), %eax
	subl	$1, %eax
	jmp	.L303
.L301:
	movl	-24(%rbp), %eax
	jmp	.L303
.L300:
	movl	$0, %eax
.L303:
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L304
.L305:
	movq	16040+term(%rip), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	$1, (%rax)
	addl	$1, -4(%rbp)
.L304:
	movl	-4(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.L305
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	tsetdirt, .-tsetdirt
	.globl	tsetdirtattr
	.type	tsetdirtattr, @function
tsetdirtattr:
.LFB39:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L307
.L312:
	movl	$0, -4(%rbp)
	jmp	.L308
.L311:
	movq	16+term(%rip), %rdx
	movl	-8(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	movzwl	4(%rax), %eax
	movzwl	%ax, %eax
	andl	-20(%rbp), %eax
	testl	%eax, %eax
	je	.L309
	movl	-8(%rbp), %edx
	movl	-8(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	tsetdirt
	jmp	.L310
.L309:
	addl	$1, -4(%rbp)
.L308:
	movl	4+term(%rip), %eax
	subl	$1, %eax
	cmpl	%eax, -4(%rbp)
	jl	.L311
.L310:
	addl	$1, -8(%rbp)
.L307:
	movl	term(%rip), %eax
	subl	$1, %eax
	cmpl	%eax, -8(%rbp)
	jl	.L312
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	tsetdirtattr, .-tsetdirtattr
	.globl	tfulldirt
	.type	tfulldirt, @function
tfulldirt:
.LFB40:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	term(%rip), %eax
	subl	$1, %eax
	movl	%eax, %esi
	movl	$0, %edi
	call	tsetdirt
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	tfulldirt, .-tfulldirt
	.type	tcursor, @function
tcursor:
.LFB41:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movl	16092+term(%rip), %eax
	andl	$4, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L315
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	leaq	c.3(%rip), %rax
	movq	16048+term(%rip), %rcx
	movq	16056+term(%rip), %rbx
	movq	%rcx, (%rdx,%rax)
	movq	%rbx, 8(%rdx,%rax)
	movq	16064+term(%rip), %rcx
	movq	%rcx, 16(%rdx,%rax)
	movl	16072+term(%rip), %ecx
	movl	%ecx, 24(%rdx,%rax)
	jmp	.L317
.L315:
	cmpl	$1, -36(%rbp)
	jne	.L317
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	leaq	c.3(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movq	8(%rdx,%rax), %rbx
	movq	%rcx, 16048+term(%rip)
	movq	%rbx, 16056+term(%rip)
	movq	16(%rdx,%rax), %rcx
	movq	%rcx, 16064+term(%rip)
	movl	24(%rdx,%rax), %eax
	movl	%eax, 16072+term(%rip)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	leaq	20+c.3(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-20(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$3, %rax
	subq	%rcx, %rax
	salq	$2, %rax
	movq	%rax, %rcx
	leaq	16+c.3(%rip), %rax
	movl	(%rcx,%rax), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	tmoveto
.L317:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	tcursor, .-tcursor
	.type	treset, @function
treset:
.LFB42:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	defaultfg(%rip), %edx
	movl	defaultbg(%rip), %eax
	movq	$0, 16048+term(%rip)
	movq	$0, 16056+term(%rip)
	movq	$0, 16064+term(%rip)
	movl	$0, 16072+term(%rip)
	movl	%edx, 16056+term(%rip)
	movl	%eax, 16060+term(%rip)
	movl	4+term(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	16112+term(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	tabspaces(%rip), %eax
	movl	%eax, -36(%rbp)
	jmp	.L319
.L320:
	movq	16112+term(%rip), %rdx
	movl	-36(%rbp), %eax
	salq	$2, %rax
	addq	%rdx, %rax
	movl	$1, (%rax)
	movl	tabspaces(%rip), %eax
	addl	%eax, -36(%rbp)
.L319:
	movl	4+term(%rip), %eax
	cmpl	%eax, -36(%rbp)
	jb	.L320
	movl	$0, 16084+term(%rip)
	movl	term(%rip), %eax
	subl	$1, %eax
	movl	%eax, 16088+term(%rip)
	movl	$65, 16092+term(%rip)
	movl	$4, %edx
	movl	$3, %esi
	leaq	16100+term(%rip), %rdi
	call	memset@PLT
	movl	$0, 16104+term(%rip)
	movl	$0, -36(%rbp)
	jmp	.L321
.L322:
	movl	$0, %esi
	movl	$0, %edi
	call	tmoveto
	movl	$0, %edi
	call	tcursor
	movl	term(%rip), %eax
	leal	-1(%rax), %edx
	movl	4+term(%rip), %eax
	subl	$1, %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	tclearregion
	call	tswapscreen
	addl	$1, -36(%rbp)
.L321:
	cmpl	$1, -36(%rbp)
	jbe	.L322
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	treset, .-treset
	.globl	tnew
	.type	tnew, @function
tnew:
.LFB43:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$3872, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -16164(%rbp)
	movl	%esi, -16168(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	defaultfg(%rip), %r12d
	movl	defaultbg(%rip), %ebx
	leaq	term(%rip), %rax
	movl	$16128, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	%r12d, 16056+term(%rip)
	movl	%ebx, 16060+term(%rip)
	movl	-16168(%rbp), %edx
	movl	-16164(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	tresize
	call	treset
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L324
	call	__stack_chk_fail@PLT
.L324:
	addq	$16160, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	tnew, .-tnew
	.type	tswapscreen, @function
tswapscreen:
.LFB44:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	16+term(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	24+term(%rip), %rax
	movq	%rax, 16+term(%rip)
	movq	-8(%rbp), %rax
	movq	%rax, 24+term(%rip)
	movl	16092+term(%rip), %eax
	xorl	$4, %eax
	movl	%eax, 16092+term(%rip)
	call	tfulldirt
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	tswapscreen, .-tswapscreen
	.globl	kscrolldown
	.type	kscrolldown, @function
kscrolldown:
.LFB45:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L327
	movl	term(%rip), %eax
	addl	%eax, -4(%rbp)
.L327:
	movl	16036+term(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jle	.L328
	movl	16036+term(%rip), %eax
	movl	%eax, -4(%rbp)
.L328:
	movl	16036+term(%rip), %eax
	testl	%eax, %eax
	jle	.L330
	movl	16036+term(%rip), %eax
	subl	-4(%rbp), %eax
	movl	%eax, 16036+term(%rip)
	movl	-4(%rbp), %eax
	negl	%eax
	movl	%eax, %esi
	movl	$0, %edi
	call	selscroll
	call	tfulldirt
.L330:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	kscrolldown, .-kscrolldown
	.globl	kscrollup
	.type	kscrollup, @function
kscrollup:
.LFB46:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L332
	movl	term(%rip), %eax
	addl	%eax, -4(%rbp)
.L332:
	movl	16036+term(%rip), %edx
	movl	$2000, %eax
	subl	-4(%rbp), %eax
	cmpl	%eax, %edx
	jg	.L334
	movl	16036+term(%rip), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, 16036+term(%rip)
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$0, %edi
	call	selscroll
	call	tfulldirt
.L334:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	kscrollup, .-kscrollup
	.type	tscrolldown, @function
tscrolldown:
.LFB47:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	cmpl	$0, -24(%rbp)
	js	.L336
	movl	16088+term(%rip), %eax
	subl	-20(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -24(%rbp)
	cmovle	-24(%rbp), %eax
	jmp	.L337
.L336:
	movl	$0, %eax
.L337:
	movl	%eax, -24(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L338
	movl	16032+term(%rip), %eax
	leal	1999(%rax), %edx
	movslq	%edx, %rax
	imulq	$274877907, %rax, %rax
	shrq	$32, %rax
	sarl	$7, %eax
	movl	%edx, %ecx
	sarl	$31, %ecx
	subl	%ecx, %eax
	imull	$2000, %eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	movl	%eax, 16032+term(%rip)
	movl	16032+term(%rip), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	term(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -8(%rbp)
	movq	16+term(%rip), %rdx
	movl	16088+term(%rip), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movl	16032+term(%rip), %edx
	movq	(%rax), %rax
	movslq	%edx, %rdx
	addq	$4, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	term(%rip), %rdx
	movq	%rax, (%rcx,%rdx)
	movq	16+term(%rip), %rdx
	movl	16088+term(%rip), %eax
	cltq
	salq	$3, %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
.L338:
	movl	16088+term(%rip), %eax
	subl	-24(%rbp), %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	tsetdirt
	movl	16088+term(%rip), %eax
	movl	4+term(%rip), %edx
	subl	$1, %edx
	movl	16088+term(%rip), %ecx
	subl	-24(%rbp), %ecx
	leal	1(%rcx), %esi
	movl	%eax, %ecx
	movl	$0, %edi
	call	tclearregion
	movl	16088+term(%rip), %eax
	movl	%eax, -12(%rbp)
	jmp	.L339
.L340:
	movq	16+term(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	16+term(%rip), %rdx
	movl	-12(%rbp), %eax
	subl	-24(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	16+term(%rip), %rcx
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rcx, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	movq	16+term(%rip), %rdx
	movl	-12(%rbp), %eax
	subl	-24(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	subl	$1, -12(%rbp)
.L339:
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, -12(%rbp)
	jge	.L340
	movl	16036+term(%rip), %eax
	testl	%eax, %eax
	jne	.L342
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	selscroll
.L342:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	tscrolldown, .-tscrolldown
	.type	tscrollup, @function
tscrollup:
.LFB48:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	cmpl	$0, -24(%rbp)
	js	.L344
	movl	16088+term(%rip), %eax
	subl	-20(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -24(%rbp)
	cmovle	-24(%rbp), %eax
	jmp	.L345
.L344:
	movl	$0, %eax
.L345:
	movl	%eax, -24(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L346
	movl	16032+term(%rip), %eax
	leal	1(%rax), %edx
	movslq	%edx, %rax
	imulq	$274877907, %rax, %rax
	shrq	$32, %rax
	sarl	$7, %eax
	movl	%edx, %ecx
	sarl	$31, %ecx
	subl	%ecx, %eax
	imull	$2000, %eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	movl	%eax, 16032+term(%rip)
	movl	16032+term(%rip), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	term(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -8(%rbp)
	movq	16+term(%rip), %rdx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movl	16032+term(%rip), %edx
	movq	(%rax), %rax
	movslq	%edx, %rdx
	addq	$4, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	term(%rip), %rdx
	movq	%rax, (%rcx,%rdx)
	movq	16+term(%rip), %rdx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
.L346:
	movl	16036+term(%rip), %eax
	testl	%eax, %eax
	jle	.L347
	movl	16036+term(%rip), %eax
	cmpl	$1999, %eax
	jg	.L347
	movl	16036+term(%rip), %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	movl	$1999, %edx
	cmpl	$1999, %eax
	cmovg	%edx, %eax
	movl	%eax, 16036+term(%rip)
.L347:
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	leal	-1(%rax), %ecx
	movl	4+term(%rip), %eax
	leal	-1(%rax), %edx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movl	$0, %edi
	call	tclearregion
	movl	16088+term(%rip), %eax
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %edx
	addl	%ecx, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	call	tsetdirt
	movl	-20(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L348
.L349:
	movq	16+term(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	16+term(%rip), %rdx
	movl	-12(%rbp), %ecx
	movl	-24(%rbp), %eax
	addl	%ecx, %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	16+term(%rip), %rcx
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rcx, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	movq	16+term(%rip), %rdx
	movl	-12(%rbp), %ecx
	movl	-24(%rbp), %eax
	addl	%ecx, %eax
	cltq
	salq	$3, %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	addl	$1, -12(%rbp)
.L348:
	movl	16088+term(%rip), %eax
	subl	-24(%rbp), %eax
	cmpl	%eax, -12(%rbp)
	jle	.L349
	movl	16036+term(%rip), %eax
	testl	%eax, %eax
	jne	.L351
	movl	-24(%rbp), %eax
	negl	%eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	selscroll
.L351:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	tscrollup, .-tscrollup
	.type	selscroll, @function
selscroll:
.LFB49:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	28+sel(%rip), %eax
	cmpl	$-1, %eax
	je	.L362
	movl	16+sel(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jg	.L355
	movl	16+sel(%rip), %edx
	movl	16088+term(%rip), %eax
	cmpl	%eax, %edx
	jg	.L355
	movl	$1, %eax
	jmp	.L356
.L355:
	movl	$0, %eax
.L356:
	movl	%eax, %edx
	andl	$1, %edx
	movl	24+sel(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jg	.L357
	movl	24+sel(%rip), %ecx
	movl	16088+term(%rip), %eax
	cmpl	%eax, %ecx
	jg	.L357
	movl	$1, %eax
	jmp	.L358
.L357:
	movl	$0, %eax
.L358:
	andl	$1, %eax
	xorl	%edx, %eax
	testb	%al, %al
	je	.L359
	call	selclear
	jmp	.L352
.L359:
	movl	16+sel(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jg	.L352
	movl	16+sel(%rip), %edx
	movl	16088+term(%rip), %eax
	cmpl	%eax, %edx
	jg	.L352
	movl	32+sel(%rip), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, 32+sel(%rip)
	movl	40+sel(%rip), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, 40+sel(%rip)
	movl	32+sel(%rip), %edx
	movl	16084+term(%rip), %eax
	cmpl	%eax, %edx
	jl	.L360
	movl	32+sel(%rip), %edx
	movl	16088+term(%rip), %eax
	cmpl	%eax, %edx
	jg	.L360
	movl	40+sel(%rip), %edx
	movl	16084+term(%rip), %eax
	cmpl	%eax, %edx
	jl	.L360
	movl	40+sel(%rip), %edx
	movl	16088+term(%rip), %eax
	cmpl	%eax, %edx
	jle	.L361
.L360:
	call	selclear
	jmp	.L352
.L361:
	call	selnormalize
	jmp	.L352
.L362:
	nop
.L352:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	selscroll, .-selscroll
	.type	tnewline, @function
tnewline:
.LFB50:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	16068+term(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	16088+term(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jne	.L364
	movl	16084+term(%rip), %eax
	movl	$1, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	tscrollup
	jmp	.L365
.L364:
	addl	$1, -4(%rbp)
.L365:
	cmpl	$0, -20(%rbp)
	jne	.L366
	movl	16064+term(%rip), %eax
	jmp	.L367
.L366:
	movl	$0, %eax
.L367:
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	tmoveto
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	tnewline, .-tnewline
	.type	csiparse, @function
csiparse:
.LFB51:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	csiescseq(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	$0, 588+csiescseq(%rip)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$63, %al
	jne	.L369
	movb	$1, 520+csiescseq(%rip)
	addq	$1, -24(%rbp)
.L369:
	movq	512+csiescseq(%rip), %rax
	leaq	csiescseq(%rip), %rdx
	movb	$0, (%rax,%rdx)
	jmp	.L370
.L375:
	movq	$0, -32(%rbp)
	leaq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtol@PLT
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	cmpq	%rax, -24(%rbp)
	jne	.L371
	movq	$0, -16(%rbp)
.L371:
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, -16(%rbp)
	je	.L372
	movabsq	$-9223372036854775808, %rax
	cmpq	%rax, -16(%rbp)
	jne	.L373
.L372:
	movq	$-1, -16(%rbp)
.L373:
	movl	588+csiescseq(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, 588+csiescseq(%rip)
	movq	-16(%rbp), %rdx
	movl	%edx, %ecx
	cltq
	subq	$-128, %rax
	leaq	0(,%rax,4), %rdx
	leaq	12+csiescseq(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$59, %al
	jne	.L374
	movl	588+csiescseq(%rip), %eax
	cmpl	$16, %eax
	je	.L374
	addq	$1, -24(%rbp)
.L370:
	movq	512+csiescseq(%rip), %rax
	leaq	csiescseq(%rip), %rdx
	addq	%rdx, %rax
	cmpq	%rax, -24(%rbp)
	jb	.L375
.L374:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movb	%al, 592+csiescseq(%rip)
	movq	512+csiescseq(%rip), %rax
	leaq	csiescseq(%rip), %rdx
	addq	%rdx, %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L376
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	jmp	.L377
.L376:
	movl	$0, %eax
.L377:
	movb	%al, 593+csiescseq(%rip)
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L378
	call	__stack_chk_fail@PLT
.L378:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	csiparse, .-csiparse
	.type	tmoveato, @function
tmoveato:
.LFB52:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movzbl	16072+term(%rip), %eax
	movsbl	%al, %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L380
	movl	16084+term(%rip), %eax
	jmp	.L381
.L380:
	movl	$0, %eax
.L381:
	movl	-8(%rbp), %edx
	addl	%eax, %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	tmoveto
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	tmoveato, .-tmoveato
	.type	tmoveto, @function
tmoveto:
.LFB53:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movzbl	16072+term(%rip), %eax
	movsbl	%al, %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L383
	movl	16084+term(%rip), %eax
	movl	%eax, -8(%rbp)
	movl	16088+term(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.L384
.L383:
	movl	$0, -8(%rbp)
	movl	term(%rip), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
.L384:
	movzbl	16072+term(%rip), %eax
	andl	$-2, %eax
	movb	%al, 16072+term(%rip)
	cmpl	$0, -20(%rbp)
	js	.L385
	movl	4+term(%rip), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L386
	movl	4+term(%rip), %eax
	subl	$1, %eax
	jmp	.L388
.L386:
	movl	-20(%rbp), %eax
	jmp	.L388
.L385:
	movl	$0, %eax
.L388:
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, 16064+term(%rip)
	movl	-24(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L389
	movl	-4(%rbp), %eax
	cmpl	%eax, -24(%rbp)
	cmovle	-24(%rbp), %eax
	jmp	.L390
.L389:
	movl	-8(%rbp), %eax
.L390:
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, 16068+term(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	tmoveto, .-tmoveto
	.type	tsetchar, @function
tsetchar:
.LFB54:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -8(%rbp)
	movl	%ecx, -20(%rbp)
	movl	16104+term(%rip), %eax
	cltq
	leaq	16100+term(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	testb	%al, %al
	jne	.L392
	movl	-4(%rbp), %eax
	cmpl	$64, %eax
	jbe	.L392
	movl	-4(%rbp), %eax
	cmpl	$126, %eax
	ja	.L392
	movl	-4(%rbp), %eax
	subl	$65, %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	leaq	vt100_0.2(%rip), %rax
	movq	(%rdx,%rax), %rax
	testq	%rax, %rax
	je	.L392
	movl	-4(%rbp), %eax
	subl	$65, %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	leaq	vt100_0.2(%rip), %rax
	movq	(%rdx,%rax), %rax
	leaq	-4(%rbp), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	utf8decode
.L392:
	movq	16+term(%rip), %rdx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	movzwl	4(%rax), %eax
	movzwl	%ax, %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L393
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	4+term(%rip), %eax
	cmpl	%eax, %edx
	jge	.L394
	movq	16+term(%rip), %rdx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	addq	$1, %rax
	salq	$4, %rax
	addq	%rdx, %rax
	movl	$32, (%rax)
	movq	16+term(%rip), %rdx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	addq	$1, %rax
	salq	$4, %rax
	addq	%rdx, %rax
	movzwl	4(%rax), %edx
	movq	16+term(%rip), %rcx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movl	-8(%rbp), %eax
	cltq
	addq	$1, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	andb	$-5, %dh
	movw	%dx, 4(%rax)
	jmp	.L394
.L393:
	movq	16+term(%rip), %rdx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	movzwl	4(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L394
	movq	16+term(%rip), %rdx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	subq	$16, %rax
	addq	%rdx, %rax
	movl	$32, (%rax)
	movq	16+term(%rip), %rdx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	subq	$16, %rax
	addq	%rdx, %rax
	movzwl	4(%rax), %edx
	movq	16+term(%rip), %rcx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	subq	$16, %rax
	addq	%rcx, %rax
	andb	$-3, %dh
	movw	%dx, 4(%rax)
.L394:
	movq	16040+term(%rip), %rdx
	movl	-20(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	$1, (%rax)
	movq	16+term(%rip), %rdx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16+term(%rip), %rdx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	isboxdraw@PLT
	testl	%eax, %eax
	je	.L396
	movq	16+term(%rip), %rdx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	movzwl	4(%rax), %edx
	movq	16+term(%rip), %rcx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rcx, %rax
	orb	$8, %dh
	movw	%dx, 4(%rax)
.L396:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	tsetchar, .-tsetchar
	.type	tclearregion, @function
tclearregion:
.LFB55:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movl	%ecx, -48(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.L398
	movl	-36(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -44(%rbp)
.L398:
	movl	-40(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jle	.L399
	movl	-40(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -48(%rbp)
.L399:
	cmpl	$0, -36(%rbp)
	js	.L400
	movl	8+term(%rip), %eax
	cmpl	%eax, -36(%rbp)
	jl	.L401
	movl	8+term(%rip), %eax
	subl	$1, %eax
	jmp	.L403
.L401:
	movl	-36(%rbp), %eax
	jmp	.L403
.L400:
	movl	$0, %eax
.L403:
	movl	%eax, -36(%rbp)
	cmpl	$0, -44(%rbp)
	js	.L404
	movl	8+term(%rip), %eax
	cmpl	%eax, -44(%rbp)
	jl	.L405
	movl	8+term(%rip), %eax
	subl	$1, %eax
	jmp	.L407
.L405:
	movl	-44(%rbp), %eax
	jmp	.L407
.L404:
	movl	$0, %eax
.L407:
	movl	%eax, -44(%rbp)
	cmpl	$0, -40(%rbp)
	js	.L408
	movl	term(%rip), %eax
	cmpl	%eax, -40(%rbp)
	jl	.L409
	movl	term(%rip), %eax
	subl	$1, %eax
	jmp	.L411
.L409:
	movl	-40(%rbp), %eax
	jmp	.L411
.L408:
	movl	$0, %eax
.L411:
	movl	%eax, -40(%rbp)
	cmpl	$0, -48(%rbp)
	js	.L412
	movl	term(%rip), %eax
	cmpl	%eax, -48(%rbp)
	jl	.L413
	movl	term(%rip), %eax
	subl	$1, %eax
	jmp	.L415
.L413:
	movl	-48(%rbp), %eax
	jmp	.L415
.L412:
	movl	$0, %eax
.L415:
	movl	%eax, -48(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -16(%rbp)
	jmp	.L416
.L420:
	movq	16040+term(%rip), %rdx
	movl	-16(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	$1, (%rax)
	movl	-36(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.L417
.L419:
	movq	16+term(%rip), %rdx
	movl	-16(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	selected
	testl	%eax, %eax
	je	.L418
	call	selclear
.L418:
	movl	16056+term(%rip), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	16060+term(%rip), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-8(%rbp), %rax
	movw	$0, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$32, (%rax)
	addl	$1, -20(%rbp)
.L417:
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.L419
	addl	$1, -16(%rbp)
.L416:
	movl	-16(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jle	.L420
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	tclearregion, .-tclearregion
	.type	tdeletechar, @function
tdeletechar:
.LFB56:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	cmpl	$0, -36(%rbp)
	js	.L422
	movl	4+term(%rip), %eax
	movl	16064+term(%rip), %edx
	subl	%edx, %eax
	cmpl	%eax, -36(%rbp)
	cmovle	-36(%rbp), %eax
	jmp	.L423
.L422:
	movl	$0, %eax
.L423:
	movl	%eax, -36(%rbp)
	movl	16064+term(%rip), %eax
	movl	%eax, -20(%rbp)
	movl	16064+term(%rip), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -16(%rbp)
	movl	4+term(%rip), %eax
	subl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	16+term(%rip), %rdx
	movl	16068+term(%rip), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movl	-16(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	addq	%rax, %rcx
	movl	-20(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rsi
	movq	-8(%rbp), %rax
	addq	%rsi, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	movl	16068+term(%rip), %edx
	movl	4+term(%rip), %eax
	leal	-1(%rax), %edi
	movl	16068+term(%rip), %esi
	movl	4+term(%rip), %eax
	subl	-36(%rbp), %eax
	movl	%edx, %ecx
	movl	%edi, %edx
	movl	%eax, %edi
	call	tclearregion
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	tdeletechar, .-tdeletechar
	.type	tinsertblank, @function
tinsertblank:
.LFB57:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	cmpl	$0, -36(%rbp)
	js	.L425
	movl	4+term(%rip), %eax
	movl	16064+term(%rip), %edx
	subl	%edx, %eax
	cmpl	%eax, -36(%rbp)
	cmovle	-36(%rbp), %eax
	jmp	.L426
.L425:
	movl	$0, %eax
.L426:
	movl	%eax, -36(%rbp)
	movl	16064+term(%rip), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	16064+term(%rip), %eax
	movl	%eax, -16(%rbp)
	movl	4+term(%rip), %eax
	subl	-20(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	16+term(%rip), %rdx
	movl	16068+term(%rip), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movl	-16(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	addq	%rax, %rcx
	movl	-20(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rsi
	movq	-8(%rbp), %rax
	addq	%rsi, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	movl	16068+term(%rip), %edx
	movl	-20(%rbp), %eax
	leal	-1(%rax), %edi
	movl	16068+term(%rip), %esi
	movl	-16(%rbp), %eax
	movl	%edx, %ecx
	movl	%edi, %edx
	movl	%eax, %edi
	call	tclearregion
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	tinsertblank, .-tinsertblank
	.type	tinsertblankline, @function
tinsertblankline:
.LFB58:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	16084+term(%rip), %edx
	movl	16068+term(%rip), %eax
	cmpl	%eax, %edx
	jg	.L429
	movl	16068+term(%rip), %edx
	movl	16088+term(%rip), %eax
	cmpl	%eax, %edx
	jg	.L429
	movl	16068+term(%rip), %eax
	movl	-4(%rbp), %ecx
	movl	$0, %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	tscrolldown
.L429:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	tinsertblankline, .-tinsertblankline
	.type	tdeleteline, @function
tdeleteline:
.LFB59:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	16084+term(%rip), %edx
	movl	16068+term(%rip), %eax
	cmpl	%eax, %edx
	jg	.L432
	movl	16068+term(%rip), %edx
	movl	16088+term(%rip), %eax
	cmpl	%eax, %edx
	jg	.L432
	movl	16068+term(%rip), %eax
	movl	-4(%rbp), %ecx
	movl	$0, %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	tscrollup
.L432:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	tdeleteline, .-tdeleteline
	.section	.rodata
	.align 8
.LC30:
	.string	"erresc(38): Incorrect number of parameters (%d)\n"
	.align 8
.LC31:
	.string	"erresc: bad rgb color (%u,%u,%u)\n"
.LC32:
	.string	"erresc: bad fgcolor %d\n"
	.align 8
.LC33:
	.string	"erresc(38): gfx attr %d unknown\n"
	.text
	.type	tdefcolor, @function
tdefcolor:
.LFB60:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	$-1, -16(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L434
	cmpl	$5, %eax
	je	.L435
	jmp	.L447
.L434:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	addl	$4, %eax
	cmpl	%eax, -36(%rbp)
	jg	.L437
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	movq	stderr(%rip), %rax
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L438
.L437:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cltq
	addq	$2, %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cltq
	addq	$3, %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	leal	4(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	cmpl	$255, -12(%rbp)
	ja	.L439
	cmpl	$255, -8(%rbp)
	ja	.L439
	cmpl	$255, -4(%rbp)
	jbe	.L440
.L439:
	movq	stderr(%rip), %rax
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %ecx
	movl	-12(%rbp), %edx
	movl	%esi, %r8d
	leaq	.LC31(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L438
.L440:
	movl	-12(%rbp), %eax
	sall	$16, %eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	sall	$8, %eax
	orl	%edx, %eax
	orl	-4(%rbp), %eax
	orl	$16777216, %eax
	movl	%eax, -16(%rbp)
	jmp	.L438
.L435:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	addl	$2, %eax
	cmpl	%eax, -36(%rbp)
	jg	.L442
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	movq	stderr(%rip), %rax
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L438
.L442:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	leal	2(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	js	.L443
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$255, %eax
	jle	.L444
.L443:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	stderr(%rip), %rax
	leaq	.LC32(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L438
.L444:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -16(%rbp)
	jmp	.L438
.L447:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	stderr(%rip), %rax
	leaq	.LC33(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	nop
.L438:
	movl	-16(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	tdefcolor, .-tdefcolor
	.section	.rodata
	.align 8
.LC34:
	.string	"erresc(default): gfx attr %d unknown\n"
	.text
	.type	tsetattr, @function
tsetattr:
.LFB61:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -16(%rbp)
	jmp	.L449
.L480:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$49, %eax
	ja	.L450
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L452(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L452(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L452:
	.long	.L471-.L452
	.long	.L470-.L452
	.long	.L469-.L452
	.long	.L468-.L452
	.long	.L467-.L452
	.long	.L466-.L452
	.long	.L466-.L452
	.long	.L465-.L452
	.long	.L464-.L452
	.long	.L463-.L452
	.long	.L450-.L452
	.long	.L450-.L452
	.long	.L450-.L452
	.long	.L450-.L452
	.long	.L450-.L452
	.long	.L450-.L452
	.long	.L450-.L452
	.long	.L450-.L452
	.long	.L450-.L452
	.long	.L450-.L452
	.long	.L450-.L452
	.long	.L450-.L452
	.long	.L462-.L452
	.long	.L461-.L452
	.long	.L460-.L452
	.long	.L459-.L452
	.long	.L450-.L452
	.long	.L458-.L452
	.long	.L457-.L452
	.long	.L456-.L452
	.long	.L450-.L452
	.long	.L450-.L452
	.long	.L450-.L452
	.long	.L450-.L452
	.long	.L450-.L452
	.long	.L450-.L452
	.long	.L450-.L452
	.long	.L450-.L452
	.long	.L455-.L452
	.long	.L454-.L452
	.long	.L450-.L452
	.long	.L450-.L452
	.long	.L450-.L452
	.long	.L450-.L452
	.long	.L450-.L452
	.long	.L450-.L452
	.long	.L450-.L452
	.long	.L450-.L452
	.long	.L453-.L452
	.long	.L451-.L452
	.text
.L471:
	movzwl	16052+term(%rip), %eax
	movb	$0, %al
	movw	%ax, 16052+term(%rip)
	movl	defaultfg(%rip), %eax
	movl	%eax, 16056+term(%rip)
	movl	defaultbg(%rip), %eax
	movl	%eax, 16060+term(%rip)
	jmp	.L472
.L470:
	movzwl	16052+term(%rip), %eax
	orl	$1, %eax
	movw	%ax, 16052+term(%rip)
	jmp	.L472
.L469:
	movzwl	16052+term(%rip), %eax
	orl	$2, %eax
	movw	%ax, 16052+term(%rip)
	jmp	.L472
.L468:
	movzwl	16052+term(%rip), %eax
	orl	$4, %eax
	movw	%ax, 16052+term(%rip)
	jmp	.L472
.L467:
	movzwl	16052+term(%rip), %eax
	orl	$8, %eax
	movw	%ax, 16052+term(%rip)
	jmp	.L472
.L466:
	movzwl	16052+term(%rip), %eax
	orl	$16, %eax
	movw	%ax, 16052+term(%rip)
	jmp	.L472
.L465:
	movzwl	16052+term(%rip), %eax
	orl	$32, %eax
	movw	%ax, 16052+term(%rip)
	jmp	.L472
.L464:
	movzwl	16052+term(%rip), %eax
	orl	$64, %eax
	movw	%ax, 16052+term(%rip)
	jmp	.L472
.L463:
	movzwl	16052+term(%rip), %eax
	orb	$-128, %al
	movw	%ax, 16052+term(%rip)
	jmp	.L472
.L462:
	movzwl	16052+term(%rip), %eax
	andl	$-4, %eax
	movw	%ax, 16052+term(%rip)
	jmp	.L472
.L461:
	movzwl	16052+term(%rip), %eax
	andl	$-5, %eax
	movw	%ax, 16052+term(%rip)
	jmp	.L472
.L460:
	movzwl	16052+term(%rip), %eax
	andl	$-9, %eax
	movw	%ax, 16052+term(%rip)
	jmp	.L472
.L459:
	movzwl	16052+term(%rip), %eax
	andl	$-17, %eax
	movw	%ax, 16052+term(%rip)
	jmp	.L472
.L458:
	movzwl	16052+term(%rip), %eax
	andl	$-33, %eax
	movw	%ax, 16052+term(%rip)
	jmp	.L472
.L457:
	movzwl	16052+term(%rip), %eax
	andl	$-65, %eax
	movw	%ax, 16052+term(%rip)
	jmp	.L472
.L456:
	movzwl	16052+term(%rip), %eax
	andb	$127, %al
	movw	%ax, 16052+term(%rip)
	jmp	.L472
.L455:
	movl	-28(%rbp), %edx
	leaq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tdefcolor
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	js	.L482
	movl	-12(%rbp), %eax
	movl	%eax, 16056+term(%rip)
	jmp	.L482
.L454:
	movl	defaultfg(%rip), %eax
	movl	%eax, 16056+term(%rip)
	jmp	.L472
.L453:
	movl	-28(%rbp), %edx
	leaq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tdefcolor
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	js	.L483
	movl	-12(%rbp), %eax
	movl	%eax, 16060+term(%rip)
	jmp	.L483
.L451:
	movl	defaultbg(%rip), %eax
	movl	%eax, 16060+term(%rip)
	jmp	.L472
.L450:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$29, %eax
	jle	.L475
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$37, %eax
	jg	.L475
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	subl	$30, %eax
	movl	%eax, 16056+term(%rip)
	jmp	.L476
.L475:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$39, %eax
	jle	.L477
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	jg	.L477
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	subl	$40, %eax
	movl	%eax, 16060+term(%rip)
	jmp	.L476
.L477:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$89, %eax
	jle	.L478
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$97, %eax
	jg	.L478
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	subl	$82, %eax
	movl	%eax, 16056+term(%rip)
	jmp	.L476
.L478:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$99, %eax
	jle	.L479
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$107, %eax
	jg	.L479
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	subl	$92, %eax
	movl	%eax, 16060+term(%rip)
	jmp	.L476
.L479:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	stderr(%rip), %rax
	leaq	.LC34(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	call	csidump
	jmp	.L472
.L476:
	jmp	.L472
.L482:
	nop
	jmp	.L472
.L483:
	nop
.L472:
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
.L449:
	movl	-16(%rbp), %eax
	cmpl	%eax, -28(%rbp)
	jg	.L480
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L481
	call	__stack_chk_fail@PLT
.L481:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	tsetattr, .-tsetattr
	.type	tsetscroll, @function
tsetscroll:
.LFB62:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	cmpl	$0, -20(%rbp)
	js	.L485
	movl	term(%rip), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L486
	movl	term(%rip), %eax
	subl	$1, %eax
	jmp	.L488
.L486:
	movl	-20(%rbp), %eax
	jmp	.L488
.L485:
	movl	$0, %eax
.L488:
	movl	%eax, -20(%rbp)
	cmpl	$0, -24(%rbp)
	js	.L489
	movl	term(%rip), %eax
	cmpl	%eax, -24(%rbp)
	jl	.L490
	movl	term(%rip), %eax
	subl	$1, %eax
	jmp	.L492
.L490:
	movl	-24(%rbp), %eax
	jmp	.L492
.L489:
	movl	$0, %eax
.L492:
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.L493
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
.L493:
	movl	-20(%rbp), %eax
	movl	%eax, 16084+term(%rip)
	movl	-24(%rbp), %eax
	movl	%eax, 16088+term(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	tsetscroll, .-tsetscroll
	.section	.rodata
	.align 8
.LC35:
	.string	"erresc: unknown private set/reset mode %d\n"
	.align 8
.LC36:
	.string	"erresc: unknown set/reset mode %d\n"
	.text
	.type	tsetmode, @function
tsetmode:
.LFB63:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	jmp	.L495
.L544:
	cmpl	$0, -20(%rbp)
	je	.L496
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2004, %eax
	je	.L497
	cmpl	$2004, %eax
	jg	.L498
	cmpl	$47, %eax
	jg	.L499
	testl	%eax, %eax
	jns	.L500
	jmp	.L498
.L520:
	subl	$1000, %eax
	cmpl	$49, %eax
	ja	.L498
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L502(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L502(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L502:
	.long	.L511-.L502
	.long	.L545-.L502
	.long	.L510-.L502
	.long	.L509-.L502
	.long	.L508-.L502
	.long	.L545-.L502
	.long	.L507-.L502
	.long	.L498-.L502
	.long	.L498-.L502
	.long	.L498-.L502
	.long	.L498-.L502
	.long	.L498-.L502
	.long	.L498-.L502
	.long	.L498-.L502
	.long	.L498-.L502
	.long	.L545-.L502
	.long	.L498-.L502
	.long	.L498-.L502
	.long	.L498-.L502
	.long	.L498-.L502
	.long	.L498-.L502
	.long	.L498-.L502
	.long	.L498-.L502
	.long	.L498-.L502
	.long	.L498-.L502
	.long	.L498-.L502
	.long	.L498-.L502
	.long	.L498-.L502
	.long	.L498-.L502
	.long	.L498-.L502
	.long	.L498-.L502
	.long	.L498-.L502
	.long	.L498-.L502
	.long	.L498-.L502
	.long	.L505-.L502
	.long	.L498-.L502
	.long	.L498-.L502
	.long	.L498-.L502
	.long	.L498-.L502
	.long	.L498-.L502
	.long	.L498-.L502
	.long	.L498-.L502
	.long	.L498-.L502
	.long	.L498-.L502
	.long	.L498-.L502
	.long	.L498-.L502
	.long	.L498-.L502
	.long	.L504-.L502
	.long	.L503-.L502
	.long	.L501-.L502
	.text
.L500:
	cmpl	$47, %eax
	ja	.L498
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L512(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L512(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L512:
	.long	.L546-.L512
	.long	.L519-.L512
	.long	.L546-.L512
	.long	.L546-.L512
	.long	.L546-.L512
	.long	.L518-.L512
	.long	.L517-.L512
	.long	.L516-.L512
	.long	.L546-.L512
	.long	.L515-.L512
	.long	.L498-.L512
	.long	.L498-.L512
	.long	.L546-.L512
	.long	.L498-.L512
	.long	.L498-.L512
	.long	.L498-.L512
	.long	.L498-.L512
	.long	.L498-.L512
	.long	.L546-.L512
	.long	.L546-.L512
	.long	.L498-.L512
	.long	.L498-.L512
	.long	.L498-.L512
	.long	.L498-.L512
	.long	.L498-.L512
	.long	.L514-.L512
	.long	.L498-.L512
	.long	.L498-.L512
	.long	.L498-.L512
	.long	.L498-.L512
	.long	.L498-.L512
	.long	.L498-.L512
	.long	.L498-.L512
	.long	.L498-.L512
	.long	.L498-.L512
	.long	.L498-.L512
	.long	.L498-.L512
	.long	.L498-.L512
	.long	.L498-.L512
	.long	.L498-.L512
	.long	.L498-.L512
	.long	.L498-.L512
	.long	.L546-.L512
	.long	.L498-.L512
	.long	.L498-.L512
	.long	.L498-.L512
	.long	.L498-.L512
	.long	.L504-.L512
	.text
.L499:
	cmpl	$1049, %eax
	jg	.L498
	cmpl	$1000, %eax
	jge	.L520
	jmp	.L498
.L519:
	movl	-24(%rbp), %eax
	movl	$256, %esi
	movl	%eax, %edi
	call	xsetmode@PLT
	jmp	.L530
.L518:
	movl	-24(%rbp), %eax
	movl	$32, %esi
	movl	%eax, %edi
	call	xsetmode@PLT
	jmp	.L530
.L517:
	cmpl	$0, -24(%rbp)
	je	.L522
	movzbl	16072+term(%rip), %eax
	orl	$2, %eax
	movb	%al, 16072+term(%rip)
	jmp	.L523
.L522:
	movzbl	16072+term(%rip), %eax
	andl	$-3, %eax
	movb	%al, 16072+term(%rip)
.L523:
	movl	$0, %esi
	movl	$0, %edi
	call	tmoveato
	jmp	.L530
.L516:
	cmpl	$0, -24(%rbp)
	je	.L524
	movl	16092+term(%rip), %eax
	orl	$1, %eax
	movl	%eax, 16092+term(%rip)
	jmp	.L530
.L524:
	movl	16092+term(%rip), %eax
	andl	$-2, %eax
	movl	%eax, 16092+term(%rip)
	jmp	.L530
.L514:
	cmpl	$0, -24(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	$128, %esi
	movl	%eax, %edi
	call	xsetmode@PLT
	jmp	.L530
.L515:
	movl	$0, %edi
	call	xsetpointermotion@PLT
	movl	$49176, %esi
	movl	$0, %edi
	call	xsetmode@PLT
	movl	-24(%rbp), %eax
	movl	$16384, %esi
	movl	%eax, %edi
	call	xsetmode@PLT
	jmp	.L530
.L511:
	movl	$0, %edi
	call	xsetpointermotion@PLT
	movl	$49176, %esi
	movl	$0, %edi
	call	xsetmode@PLT
	movl	-24(%rbp), %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	xsetmode@PLT
	jmp	.L530
.L510:
	movl	$0, %edi
	call	xsetpointermotion@PLT
	movl	$49176, %esi
	movl	$0, %edi
	call	xsetmode@PLT
	movl	-24(%rbp), %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	xsetmode@PLT
	jmp	.L530
.L509:
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	xsetpointermotion@PLT
	movl	$49176, %esi
	movl	$0, %edi
	call	xsetmode@PLT
	movl	-24(%rbp), %eax
	movl	$32768, %esi
	movl	%eax, %edi
	call	xsetmode@PLT
	jmp	.L530
.L508:
	movl	-24(%rbp), %eax
	movl	$8192, %esi
	movl	%eax, %edi
	call	xsetmode@PLT
	jmp	.L530
.L507:
	movl	-24(%rbp), %eax
	movl	$512, %esi
	movl	%eax, %edi
	call	xsetmode@PLT
	jmp	.L530
.L505:
	movl	-24(%rbp), %eax
	movl	$1024, %esi
	movl	%eax, %edi
	call	xsetmode@PLT
	jmp	.L530
.L501:
	movl	allowaltscreen(%rip), %eax
	testl	%eax, %eax
	je	.L547
	cmpl	$0, -24(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, %edi
	call	tcursor
.L504:
	movl	allowaltscreen(%rip), %eax
	testl	%eax, %eax
	je	.L548
	movl	16092+term(%rip), %eax
	andl	$4, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L528
	movl	term(%rip), %eax
	leal	-1(%rax), %edx
	movl	4+term(%rip), %eax
	subl	$1, %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	tclearregion
.L528:
	movl	-24(%rbp), %eax
	cmpl	-12(%rbp), %eax
	je	.L529
	call	tswapscreen
.L529:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1049, %eax
	jne	.L549
.L503:
	cmpl	$0, -24(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, %edi
	call	tcursor
	jmp	.L530
.L497:
	movl	-24(%rbp), %eax
	movl	$65536, %esi
	movl	%eax, %edi
	call	xsetmode@PLT
	jmp	.L530
.L498:
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	movq	stderr(%rip), %rax
	leaq	.LC35(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L530
.L496:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$20, %eax
	ja	.L531
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L533(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L533(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L533:
	.long	.L550-.L533
	.long	.L531-.L533
	.long	.L536-.L533
	.long	.L531-.L533
	.long	.L535-.L533
	.long	.L531-.L533
	.long	.L531-.L533
	.long	.L531-.L533
	.long	.L531-.L533
	.long	.L531-.L533
	.long	.L531-.L533
	.long	.L531-.L533
	.long	.L534-.L533
	.long	.L531-.L533
	.long	.L531-.L533
	.long	.L531-.L533
	.long	.L531-.L533
	.long	.L531-.L533
	.long	.L531-.L533
	.long	.L531-.L533
	.long	.L532-.L533
	.text
.L536:
	movl	-24(%rbp), %eax
	movl	$64, %esi
	movl	%eax, %edi
	call	xsetmode@PLT
	jmp	.L530
.L535:
	cmpl	$0, -24(%rbp)
	je	.L538
	movl	16092+term(%rip), %eax
	orl	$2, %eax
	movl	%eax, 16092+term(%rip)
	jmp	.L530
.L538:
	movl	16092+term(%rip), %eax
	andl	$-3, %eax
	movl	%eax, 16092+term(%rip)
	jmp	.L530
.L534:
	cmpl	$0, -24(%rbp)
	jne	.L540
	movl	16092+term(%rip), %eax
	orl	$16, %eax
	movl	%eax, 16092+term(%rip)
	jmp	.L530
.L540:
	movl	16092+term(%rip), %eax
	andl	$-17, %eax
	movl	%eax, 16092+term(%rip)
	jmp	.L530
.L532:
	cmpl	$0, -24(%rbp)
	je	.L542
	movl	16092+term(%rip), %eax
	orl	$8, %eax
	movl	%eax, 16092+term(%rip)
	jmp	.L530
.L542:
	movl	16092+term(%rip), %eax
	andl	$-9, %eax
	movl	%eax, 16092+term(%rip)
	jmp	.L530
.L531:
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	movq	stderr(%rip), %rax
	leaq	.LC36(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L530
.L545:
	nop
	jmp	.L530
.L546:
	nop
	jmp	.L530
.L547:
	nop
	jmp	.L530
.L548:
	nop
	jmp	.L530
.L549:
	nop
	jmp	.L530
.L550:
	nop
.L530:
	addq	$4, -32(%rbp)
.L495:
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L544
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	tsetmode, .-tsetmode
	.section	.rodata
.LC37:
	.string	"erresc: unknown csi "
.LC38:
	.string	"\033[%i;%iR"
	.text
	.type	csihandle, @function
csihandle:
.LFB64:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movzbl	592+csiescseq(%rip), %eax
	movsbl	%al, %eax
	subl	$32, %eax
	cmpl	$85, %eax
	ja	.L552
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L554(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L554(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L554:
	.long	.L585-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L584-.L554
	.long	.L583-.L554
	.long	.L564-.L554
	.long	.L568-.L554
	.long	.L582-.L554
	.long	.L581-.L554
	.long	.L580-.L554
	.long	.L569-.L554
	.long	.L563-.L554
	.long	.L579-.L554
	.long	.L578-.L554
	.long	.L577-.L554
	.long	.L576-.L554
	.long	.L575-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L574-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L573-.L554
	.long	.L572-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L571-.L554
	.long	.L552-.L554
	.long	.L570-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L569-.L554
	.long	.L568-.L554
	.long	.L567-.L554
	.long	.L566-.L554
	.long	.L565-.L554
	.long	.L564-.L554
	.long	.L563-.L554
	.long	.L562-.L554
	.long	.L561-.L554
	.long	.L560-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L559-.L554
	.long	.L558-.L554
	.long	.L557-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L552-.L554
	.long	.L556-.L554
	.long	.L555-.L554
	.long	.L552-.L554
	.long	.L553-.L554
	.text
.L666:
	nop
	jmp	.L552
.L670:
	nop
	jmp	.L552
.L671:
	nop
	jmp	.L552
.L672:
	nop
.L552:
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$20, %edx
	movl	$1, %esi
	leaq	.LC37(%rip), %rdi
	call	fwrite@PLT
	call	csidump
	jmp	.L586
.L584:
	movl	524+csiescseq(%rip), %eax
	testl	%eax, %eax
	je	.L587
	movl	524+csiescseq(%rip), %eax
	jmp	.L588
.L587:
	movl	$1, %eax
.L588:
	movl	%eax, 524+csiescseq(%rip)
	movl	524+csiescseq(%rip), %eax
	movl	%eax, %edi
	call	tinsertblank
	jmp	.L586
.L583:
	movl	524+csiescseq(%rip), %eax
	testl	%eax, %eax
	je	.L589
	movl	524+csiescseq(%rip), %eax
	jmp	.L590
.L589:
	movl	$1, %eax
.L590:
	movl	%eax, 524+csiescseq(%rip)
	movl	16068+term(%rip), %eax
	movl	524+csiescseq(%rip), %ecx
	subl	%ecx, %eax
	movl	%eax, %edx
	movl	16064+term(%rip), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	tmoveto
	jmp	.L586
.L564:
	movl	524+csiescseq(%rip), %eax
	testl	%eax, %eax
	je	.L591
	movl	524+csiescseq(%rip), %eax
	jmp	.L592
.L591:
	movl	$1, %eax
.L592:
	movl	%eax, 524+csiescseq(%rip)
	movl	16068+term(%rip), %edx
	movl	524+csiescseq(%rip), %eax
	addl	%eax, %edx
	movl	16064+term(%rip), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	tmoveto
	jmp	.L586
.L560:
	movl	524+csiescseq(%rip), %eax
	cmpl	$5, %eax
	ja	.L663
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L595(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L595(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L595:
	.long	.L599-.L595
	.long	.L598-.L595
	.long	.L597-.L595
	.long	.L663-.L595
	.long	.L596-.L595
	.long	.L594-.L595
	.text
.L599:
	call	tdump
	jmp	.L593
.L598:
	movl	16068+term(%rip), %eax
	movl	%eax, %edi
	call	tdumpline
	jmp	.L593
.L597:
	call	tdumpsel
	jmp	.L593
.L596:
	movl	16092+term(%rip), %eax
	andl	$-33, %eax
	movl	%eax, 16092+term(%rip)
	jmp	.L593
.L594:
	movl	16092+term(%rip), %eax
	orl	$32, %eax
	movl	%eax, 16092+term(%rip)
	nop
.L593:
	jmp	.L663
.L566:
	movl	524+csiescseq(%rip), %eax
	testl	%eax, %eax
	jne	.L664
	movq	vtiden(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rcx
	movq	vtiden(%rip), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ttywrite
	jmp	.L664
.L567:
	movl	524+csiescseq(%rip), %eax
	testl	%eax, %eax
	je	.L601
	movl	524+csiescseq(%rip), %eax
	jmp	.L602
.L601:
	movl	$1, %eax
.L602:
	movl	%eax, 524+csiescseq(%rip)
	movl	16120+term(%rip), %eax
	testl	%eax, %eax
	je	.L665
	jmp	.L604
.L605:
	movl	16120+term(%rip), %eax
	movl	%eax, %edi
	call	tputc
.L604:
	movl	524+csiescseq(%rip), %eax
	leal	-1(%rax), %edx
	movl	%edx, 524+csiescseq(%rip)
	testl	%eax, %eax
	jg	.L605
	jmp	.L665
.L568:
	movl	524+csiescseq(%rip), %eax
	testl	%eax, %eax
	je	.L606
	movl	524+csiescseq(%rip), %eax
	jmp	.L607
.L606:
	movl	$1, %eax
.L607:
	movl	%eax, 524+csiescseq(%rip)
	movl	16068+term(%rip), %eax
	movl	16064+term(%rip), %ecx
	movl	524+csiescseq(%rip), %edx
	addl	%ecx, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	call	tmoveto
	jmp	.L586
.L582:
	movl	524+csiescseq(%rip), %eax
	testl	%eax, %eax
	je	.L608
	movl	524+csiescseq(%rip), %eax
	jmp	.L609
.L608:
	movl	$1, %eax
.L609:
	movl	%eax, 524+csiescseq(%rip)
	movl	16068+term(%rip), %eax
	movl	16064+term(%rip), %edx
	movl	524+csiescseq(%rip), %ecx
	subl	%ecx, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	call	tmoveto
	jmp	.L586
.L581:
	movl	524+csiescseq(%rip), %eax
	testl	%eax, %eax
	je	.L610
	movl	524+csiescseq(%rip), %eax
	jmp	.L611
.L610:
	movl	$1, %eax
.L611:
	movl	%eax, 524+csiescseq(%rip)
	movl	16068+term(%rip), %edx
	movl	524+csiescseq(%rip), %eax
	addl	%edx, %eax
	movl	%eax, %esi
	movl	$0, %edi
	call	tmoveto
	jmp	.L586
.L580:
	movl	524+csiescseq(%rip), %eax
	testl	%eax, %eax
	je	.L612
	movl	524+csiescseq(%rip), %eax
	jmp	.L613
.L612:
	movl	$1, %eax
.L613:
	movl	%eax, 524+csiescseq(%rip)
	movl	16068+term(%rip), %eax
	movl	524+csiescseq(%rip), %edx
	subl	%edx, %eax
	movl	%eax, %esi
	movl	$0, %edi
	call	tmoveto
	jmp	.L586
.L562:
	movl	524+csiescseq(%rip), %eax
	testl	%eax, %eax
	je	.L614
	cmpl	$3, %eax
	je	.L615
	jmp	.L552
.L614:
	movq	16112+term(%rip), %rdx
	movl	16064+term(%rip), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	jmp	.L617
.L615:
	movl	4+term(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	16112+term(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
.L617:
	jmp	.L586
.L569:
	movl	524+csiescseq(%rip), %eax
	testl	%eax, %eax
	je	.L618
	movl	524+csiescseq(%rip), %eax
	jmp	.L619
.L618:
	movl	$1, %eax
.L619:
	movl	%eax, 524+csiescseq(%rip)
	movl	16068+term(%rip), %eax
	movl	524+csiescseq(%rip), %edx
	subl	$1, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	call	tmoveto
	jmp	.L586
.L563:
	movl	524+csiescseq(%rip), %eax
	testl	%eax, %eax
	je	.L620
	movl	524+csiescseq(%rip), %eax
	jmp	.L621
.L620:
	movl	$1, %eax
.L621:
	movl	%eax, 524+csiescseq(%rip)
	movl	528+csiescseq(%rip), %eax
	testl	%eax, %eax
	je	.L622
	movl	528+csiescseq(%rip), %eax
	jmp	.L623
.L622:
	movl	$1, %eax
.L623:
	movl	%eax, 528+csiescseq(%rip)
	movl	524+csiescseq(%rip), %eax
	leal	-1(%rax), %edx
	movl	528+csiescseq(%rip), %eax
	subl	$1, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	tmoveato
	jmp	.L586
.L579:
	movl	524+csiescseq(%rip), %eax
	testl	%eax, %eax
	je	.L624
	movl	524+csiescseq(%rip), %eax
	jmp	.L625
.L624:
	movl	$1, %eax
.L625:
	movl	%eax, 524+csiescseq(%rip)
	movl	524+csiescseq(%rip), %eax
	movl	%eax, %edi
	call	tputtab
	jmp	.L586
.L578:
	movl	524+csiescseq(%rip), %eax
	cmpl	$2, %eax
	je	.L626
	cmpl	$2, %eax
	jg	.L666
	testl	%eax, %eax
	je	.L628
	cmpl	$1, %eax
	je	.L629
	jmp	.L666
.L628:
	movl	16068+term(%rip), %edx
	movl	4+term(%rip), %eax
	leal	-1(%rax), %edi
	movl	16068+term(%rip), %esi
	movl	16064+term(%rip), %eax
	movl	%edx, %ecx
	movl	%edi, %edx
	movl	%eax, %edi
	call	tclearregion
	movl	16068+term(%rip), %eax
	movl	term(%rip), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.L667
	movl	term(%rip), %eax
	leal	-1(%rax), %ecx
	movl	4+term(%rip), %eax
	leal	-1(%rax), %edx
	movl	16068+term(%rip), %eax
	addl	$1, %eax
	movl	%eax, %esi
	movl	$0, %edi
	call	tclearregion
	jmp	.L667
.L629:
	movl	16068+term(%rip), %eax
	cmpl	$1, %eax
	jle	.L632
	movl	16068+term(%rip), %eax
	leal	-1(%rax), %edx
	movl	4+term(%rip), %eax
	subl	$1, %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	tclearregion
.L632:
	movl	16068+term(%rip), %ecx
	movl	16064+term(%rip), %edx
	movl	16068+term(%rip), %eax
	movl	%eax, %esi
	movl	$0, %edi
	call	tclearregion
	jmp	.L631
.L626:
	movl	term(%rip), %eax
	leal	-1(%rax), %edx
	movl	4+term(%rip), %eax
	subl	$1, %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	tclearregion
	jmp	.L631
.L667:
	nop
.L631:
	jmp	.L586
.L577:
	movl	524+csiescseq(%rip), %eax
	cmpl	$2, %eax
	je	.L633
	cmpl	$2, %eax
	jg	.L668
	testl	%eax, %eax
	je	.L635
	cmpl	$1, %eax
	je	.L636
	jmp	.L668
.L635:
	movl	16068+term(%rip), %edx
	movl	4+term(%rip), %eax
	leal	-1(%rax), %edi
	movl	16068+term(%rip), %esi
	movl	16064+term(%rip), %eax
	movl	%edx, %ecx
	movl	%edi, %edx
	movl	%eax, %edi
	call	tclearregion
	jmp	.L634
.L636:
	movl	16068+term(%rip), %ecx
	movl	16064+term(%rip), %edx
	movl	16068+term(%rip), %eax
	movl	%eax, %esi
	movl	$0, %edi
	call	tclearregion
	jmp	.L634
.L633:
	movl	16068+term(%rip), %edx
	movl	4+term(%rip), %eax
	leal	-1(%rax), %esi
	movl	16068+term(%rip), %eax
	movl	%edx, %ecx
	movl	%esi, %edx
	movl	%eax, %esi
	movl	$0, %edi
	call	tclearregion
	nop
.L634:
	jmp	.L668
.L573:
	movl	524+csiescseq(%rip), %eax
	testl	%eax, %eax
	je	.L637
	movl	524+csiescseq(%rip), %eax
	jmp	.L638
.L637:
	movl	$1, %eax
.L638:
	movl	%eax, 524+csiescseq(%rip)
	movl	524+csiescseq(%rip), %ecx
	movl	16084+term(%rip), %eax
	movl	$0, %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	tscrollup
	jmp	.L586
.L572:
	movl	524+csiescseq(%rip), %eax
	testl	%eax, %eax
	je	.L639
	movl	524+csiescseq(%rip), %eax
	jmp	.L640
.L639:
	movl	$1, %eax
.L640:
	movl	%eax, 524+csiescseq(%rip)
	movl	524+csiescseq(%rip), %ecx
	movl	16084+term(%rip), %eax
	movl	$0, %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	tscrolldown
	jmp	.L586
.L576:
	movl	524+csiescseq(%rip), %eax
	testl	%eax, %eax
	je	.L641
	movl	524+csiescseq(%rip), %eax
	jmp	.L642
.L641:
	movl	$1, %eax
.L642:
	movl	%eax, 524+csiescseq(%rip)
	movl	524+csiescseq(%rip), %eax
	movl	%eax, %edi
	call	tinsertblankline
	jmp	.L586
.L559:
	movl	588+csiescseq(%rip), %edx
	movzbl	520+csiescseq(%rip), %eax
	movsbl	%al, %eax
	movl	%edx, %ecx
	leaq	524+csiescseq(%rip), %rdx
	movl	$0, %esi
	movl	%eax, %edi
	call	tsetmode
	jmp	.L586
.L575:
	movl	524+csiescseq(%rip), %eax
	testl	%eax, %eax
	je	.L643
	movl	524+csiescseq(%rip), %eax
	jmp	.L644
.L643:
	movl	$1, %eax
.L644:
	movl	%eax, 524+csiescseq(%rip)
	movl	524+csiescseq(%rip), %eax
	movl	%eax, %edi
	call	tdeleteline
	jmp	.L586
.L571:
	movl	524+csiescseq(%rip), %eax
	testl	%eax, %eax
	je	.L645
	movl	524+csiescseq(%rip), %eax
	jmp	.L646
.L645:
	movl	$1, %eax
.L646:
	movl	%eax, 524+csiescseq(%rip)
	movl	16068+term(%rip), %edx
	movl	16064+term(%rip), %ecx
	movl	524+csiescseq(%rip), %eax
	addl	%ecx, %eax
	leal	-1(%rax), %edi
	movl	16068+term(%rip), %esi
	movl	16064+term(%rip), %eax
	movl	%edx, %ecx
	movl	%edi, %edx
	movl	%eax, %edi
	call	tclearregion
	jmp	.L586
.L574:
	movl	524+csiescseq(%rip), %eax
	testl	%eax, %eax
	je	.L647
	movl	524+csiescseq(%rip), %eax
	jmp	.L648
.L647:
	movl	$1, %eax
.L648:
	movl	%eax, 524+csiescseq(%rip)
	movl	524+csiescseq(%rip), %eax
	movl	%eax, %edi
	call	tdeletechar
	jmp	.L586
.L570:
	movl	524+csiescseq(%rip), %eax
	testl	%eax, %eax
	je	.L649
	movl	524+csiescseq(%rip), %eax
	jmp	.L650
.L649:
	movl	$1, %eax
.L650:
	movl	%eax, 524+csiescseq(%rip)
	movl	524+csiescseq(%rip), %eax
	negl	%eax
	movl	%eax, %edi
	call	tputtab
	jmp	.L586
.L565:
	movl	524+csiescseq(%rip), %eax
	testl	%eax, %eax
	je	.L651
	movl	524+csiescseq(%rip), %eax
	jmp	.L652
.L651:
	movl	$1, %eax
.L652:
	movl	%eax, 524+csiescseq(%rip)
	movl	524+csiescseq(%rip), %eax
	leal	-1(%rax), %edx
	movl	16064+term(%rip), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	tmoveato
	jmp	.L586
.L561:
	movl	588+csiescseq(%rip), %edx
	movzbl	520+csiescseq(%rip), %eax
	movsbl	%al, %eax
	movl	%edx, %ecx
	leaq	524+csiescseq(%rip), %rdx
	movl	$1, %esi
	movl	%eax, %edi
	call	tsetmode
	jmp	.L586
.L558:
	movl	588+csiescseq(%rip), %eax
	movl	%eax, %esi
	leaq	524+csiescseq(%rip), %rdi
	call	tsetattr
	jmp	.L586
.L557:
	movl	524+csiescseq(%rip), %eax
	cmpl	$6, %eax
	jne	.L669
	movl	16064+term(%rip), %eax
	leal	1(%rax), %ecx
	movl	16068+term(%rip), %eax
	leal	1(%rax), %edx
	leaq	-48(%rbp), %rax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	leaq	.LC38(%rip), %rdx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-48(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ttywrite
	jmp	.L669
.L556:
	movzbl	520+csiescseq(%rip), %eax
	testb	%al, %al
	jne	.L670
	movl	524+csiescseq(%rip), %eax
	testl	%eax, %eax
	je	.L655
	movl	524+csiescseq(%rip), %eax
	jmp	.L656
.L655:
	movl	$1, %eax
.L656:
	movl	%eax, 524+csiescseq(%rip)
	movl	528+csiescseq(%rip), %eax
	testl	%eax, %eax
	je	.L657
	movl	528+csiescseq(%rip), %eax
	jmp	.L658
.L657:
	movl	term(%rip), %eax
.L658:
	movl	%eax, 528+csiescseq(%rip)
	movl	528+csiescseq(%rip), %eax
	leal	-1(%rax), %edx
	movl	524+csiescseq(%rip), %eax
	subl	$1, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	tsetscroll
	movl	$0, %esi
	movl	$0, %edi
	call	tmoveato
	jmp	.L586
.L555:
	movl	$0, %edi
	call	tcursor
	jmp	.L586
.L553:
	movl	$1, %edi
	call	tcursor
	jmp	.L586
.L585:
	movzbl	593+csiescseq(%rip), %eax
	movsbl	%al, %eax
	cmpl	$113, %eax
	jne	.L671
	movl	524+csiescseq(%rip), %eax
	movl	%eax, %edi
	call	xsetcursor@PLT
	testl	%eax, %eax
	jne	.L672
	nop
	jmp	.L586
.L663:
	nop
	jmp	.L586
.L664:
	nop
	jmp	.L586
.L665:
	nop
	jmp	.L586
.L668:
	nop
	jmp	.L586
.L669:
	nop
.L586:
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L662
	call	__stack_chk_fail@PLT
.L662:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	csihandle, .-csihandle
	.section	.rodata
.LC39:
	.string	"ESC["
.LC40:
	.string	"(\\n)"
.LC41:
	.string	"(\\r)"
.LC42:
	.string	"(\\e)"
.LC43:
	.string	"(%02x)"
	.text
	.type	csidump, @function
csidump:
.LFB65:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$4, %edx
	movl	$1, %esi
	leaq	.LC39(%rip), %rdi
	call	fwrite@PLT
	movq	$0, -8(%rbp)
	jmp	.L674
.L680:
	leaq	csiescseq(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	andl	$255, %eax
	movl	%eax, -12(%rbp)
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$16384, %eax
	testl	%eax, %eax
	je	.L675
	movq	stderr(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	putc@PLT
	jmp	.L676
.L675:
	cmpl	$10, -12(%rbp)
	jne	.L677
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$4, %edx
	movl	$1, %esi
	leaq	.LC40(%rip), %rdi
	call	fwrite@PLT
	jmp	.L676
.L677:
	cmpl	$13, -12(%rbp)
	jne	.L678
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$4, %edx
	movl	$1, %esi
	leaq	.LC41(%rip), %rdi
	call	fwrite@PLT
	jmp	.L676
.L678:
	cmpl	$27, -12(%rbp)
	jne	.L679
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$4, %edx
	movl	$1, %esi
	leaq	.LC42(%rip), %rdi
	call	fwrite@PLT
	jmp	.L676
.L679:
	movq	stderr(%rip), %rax
	movl	-12(%rbp), %edx
	leaq	.LC43(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L676:
	addq	$1, -8(%rbp)
.L674:
	movq	512+csiescseq(%rip), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L680
	movq	stderr(%rip), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	putc@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	csidump, .-csidump
	.type	csireset, @function
csireset:
.LFB66:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$600, %edx
	movl	$0, %esi
	leaq	csiescseq(%rip), %rdi
	call	memset@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	csireset, .-csireset
	.section	.rodata
.LC44:
	.string	"erresc: invalid base64\n"
.LC45:
	.string	"(null)"
	.align 8
.LC46:
	.string	"erresc: invalid color j=%d, p=%s\n"
.LC47:
	.string	"erresc: unknown str "
	.text
	.type	strhandle, @function
strhandle:
.LFB67:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -16(%rbp)
	movl	16096+term(%rip), %eax
	andl	$-21, %eax
	movl	%eax, 16096+term(%rip)
	call	strparse
	movl	160+strescseq(%rip), %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L683
	movq	32+strescseq(%rip), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	jmp	.L684
.L683:
	movl	$0, %eax
.L684:
	movl	%eax, -24(%rbp)
	movzbl	strescseq(%rip), %eax
	movsbl	%al, %eax
	cmpl	$107, %eax
	je	.L685
	cmpl	$107, %eax
	jg	.L686
	cmpl	$95, %eax
	jg	.L686
	cmpl	$94, %eax
	jge	.L710
	cmpl	$80, %eax
	je	.L710
	cmpl	$93, %eax
	jne	.L686
	cmpl	$104, -24(%rbp)
	je	.L688
	cmpl	$104, -24(%rbp)
	jg	.L711
	cmpl	$52, -24(%rbp)
	je	.L690
	cmpl	$52, -24(%rbp)
	jg	.L711
	cmpl	$4, -24(%rbp)
	je	.L691
	cmpl	$4, -24(%rbp)
	jg	.L711
	cmpl	$2, -24(%rbp)
	je	.L692
	cmpl	$2, -24(%rbp)
	jg	.L711
	cmpl	$0, -24(%rbp)
	je	.L693
	cmpl	$1, -24(%rbp)
	je	.L694
	jmp	.L711
.L693:
	cmpl	$1, -28(%rbp)
	jle	.L712
	movq	40+strescseq(%rip), %rax
	movq	%rax, %rdi
	call	xsettitle@PLT
	movq	40+strescseq(%rip), %rax
	movq	%rax, %rdi
	call	xseticontitle@PLT
	jmp	.L712
.L694:
	cmpl	$1, -28(%rbp)
	jle	.L713
	movq	40+strescseq(%rip), %rax
	movq	%rax, %rdi
	call	xseticontitle@PLT
	jmp	.L713
.L692:
	cmpl	$1, -28(%rbp)
	jle	.L714
	movq	40+strescseq(%rip), %rax
	movq	%rax, %rdi
	call	xsettitle@PLT
	jmp	.L714
.L690:
	cmpl	$2, -28(%rbp)
	jle	.L715
	movl	allowwindowops(%rip), %eax
	testl	%eax, %eax
	je	.L715
	movq	48+strescseq(%rip), %rax
	movq	%rax, %rdi
	call	base64dec
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L700
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	xsetsel@PLT
	call	xclipcopy@PLT
	jmp	.L715
.L700:
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$23, %edx
	movl	$1, %esi
	leaq	.LC44(%rip), %rdi
	call	fwrite@PLT
	jmp	.L715
.L691:
	cmpl	$2, -28(%rbp)
	jle	.L716
	movq	48+strescseq(%rip), %rax
	movq	%rax, -16(%rbp)
.L688:
	cmpl	$1, -28(%rbp)
	jle	.L702
	movq	40+strescseq(%rip), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	jmp	.L703
.L702:
	movl	$-1, %eax
.L703:
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	xsetcolorname@PLT
	testl	%eax, %eax
	je	.L704
	cmpl	$104, -24(%rbp)
	jne	.L705
	cmpl	$1, -28(%rbp)
	jle	.L717
.L705:
	cmpq	$0, -16(%rbp)
	je	.L706
	movq	-16(%rbp), %rax
	jmp	.L707
.L706:
	leaq	.LC45(%rip), %rax
.L707:
	movq	stderr(%rip), %rdi
	movl	-20(%rbp), %edx
	movq	%rax, %rcx
	leaq	.LC46(%rip), %rsi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L682
.L704:
	call	redraw
	jmp	.L682
.L716:
	nop
	jmp	.L711
.L685:
	movq	32+strescseq(%rip), %rax
	movq	%rax, %rdi
	call	xsettitle@PLT
	jmp	.L682
.L711:
	nop
.L686:
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$20, %edx
	movl	$1, %esi
	leaq	.LC47(%rip), %rdi
	call	fwrite@PLT
	call	strdump
	jmp	.L682
.L710:
	nop
	jmp	.L682
.L712:
	nop
	jmp	.L682
.L713:
	nop
	jmp	.L682
.L714:
	nop
	jmp	.L682
.L715:
	nop
	jmp	.L682
.L717:
	nop
.L682:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	strhandle, .-strhandle
	.type	strparse, @function
strparse:
.LFB68:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	8+strescseq(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$0, 160+strescseq(%rip)
	movq	8+strescseq(%rip), %rdx
	movq	24+strescseq(%rip), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L727
	jmp	.L721
.L726:
	movl	160+strescseq(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, 160+strescseq(%rip)
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rcx
	leaq	strescseq(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rcx,%rdx)
	jmp	.L722
.L724:
	addq	$1, -8(%rbp)
.L722:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -12(%rbp)
	cmpl	$59, -12(%rbp)
	je	.L723
	cmpl	$0, -12(%rbp)
	jne	.L724
.L723:
	cmpl	$0, -12(%rbp)
	je	.L728
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$0, (%rax)
.L721:
	movl	160+strescseq(%rip), %eax
	cmpl	$15, %eax
	jle	.L726
	jmp	.L718
.L727:
	nop
	jmp	.L718
.L728:
	nop
.L718:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	strparse, .-strparse
	.section	.rodata
.LC48:
	.string	"st: execvp %s\n"
.LC49:
	.string	"failed"
.LC50:
	.string	"\n"
	.text
	.globl	externalpipe
	.type	externalpipe, @function
externalpipe:
.LFB69:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-20(%rbp), %rax
	movq	%rax, %rdi
	call	pipe@PLT
	cmpl	$-1, %eax
	je	.L757
	call	fork@PLT
	cmpl	$-1, %eax
	je	.L732
	testl	%eax, %eax
	je	.L733
	jmp	.L756
.L732:
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	jmp	.L729
.L733:
	movl	-20(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	dup2@PLT
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	execvp@PLT
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC48(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	leaq	.LC49(%rip), %rdi
	call	perror@PLT
	movl	$0, %edi
	call	exit@PLT
.L756:
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	movl	$1, %esi
	movl	$13, %edi
	call	signal@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L735
.L752:
	movl	term(%rip), %edx
	movl	$2002, %eax
	subl	%edx, %eax
	cmpl	%eax, -60(%rbp)
	jg	.L736
	movl	-60(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	term(%rip), %rax
	movq	(%rdx,%rax), %rax
	jmp	.L737
.L736:
	movq	16+term(%rip), %rdx
	movl	-60(%rbp), %eax
	leal	-2000(%rax), %ecx
	movl	term(%rip), %eax
	addl	%ecx, %eax
	cltq
	salq	$3, %rax
	subq	$24, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
.L737:
	movq	%rax, -48(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, %edi
	call	tlinehistlen
	leal	1(%rax), %edx
	movl	4+term(%rip), %eax
	cmpl	%eax, %edx
	jge	.L738
	movl	-60(%rbp), %eax
	movl	%eax, %edi
	call	tlinehistlen
	jmp	.L739
.L738:
	movl	4+term(%rip), %eax
	subl	$1, %eax
.L739:
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	js	.L758
	cmpl	$0, -52(%rbp)
	je	.L759
	movl	-52(%rbp), %eax
	cltq
	addq	$1, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	jmp	.L744
.L747:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	leaq	-12(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	utf8encode
	movq	%rax, %rdx
	movl	-16(%rbp), %eax
	leaq	-12(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	xwrite
	testq	%rax, %rax
	js	.L760
	addq	$16, -48(%rbp)
.L744:
	movq	-48(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L747
	jmp	.L746
.L760:
	nop
.L746:
	movl	term(%rip), %edx
	movl	$2002, %eax
	subl	%edx, %eax
	cmpl	%eax, -60(%rbp)
	jg	.L748
	movl	-60(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	term(%rip), %rax
	movq	(%rdx,%rax), %rax
	jmp	.L749
.L748:
	movq	16+term(%rip), %rdx
	movl	-60(%rbp), %eax
	leal	-2000(%rax), %ecx
	movl	term(%rip), %eax
	addl	%ecx, %eax
	cltq
	salq	$3, %rax
	subq	$24, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
.L749:
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movzwl	4(%rax), %eax
	movzwl	%ax, %eax
	andl	$256, %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	jne	.L761
	movl	-16(%rbp), %eax
	movl	$1, %edx
	leaq	.LC50(%rip), %rsi
	movl	%eax, %edi
	call	xwrite
	testq	%rax, %rax
	js	.L762
	movl	$0, -56(%rbp)
	jmp	.L743
.L759:
	nop
	jmp	.L743
.L761:
	nop
.L743:
	addl	$1, -60(%rbp)
.L735:
	cmpl	$2002, -60(%rbp)
	jle	.L752
	jmp	.L741
.L758:
	nop
	jmp	.L741
.L762:
	nop
.L741:
	cmpl	$0, -56(%rbp)
	je	.L753
	movl	-16(%rbp), %eax
	movl	$1, %edx
	leaq	.LC50(%rip), %rsi
	movl	%eax, %edi
	call	xwrite
.L753:
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$13, %edi
	call	signal@PLT
	jmp	.L729
.L757:
	nop
.L729:
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L755
	call	__stack_chk_fail@PLT
.L755:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	externalpipe, .-externalpipe
	.section	.rodata
.LC51:
	.string	"ESC%c"
.LC52:
	.string	"ESC\\\n"
	.text
	.type	strdump, @function
strdump:
.LFB70:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movzbl	strescseq(%rip), %eax
	movsbl	%al, %edx
	movq	stderr(%rip), %rax
	leaq	.LC51(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	$0, -8(%rbp)
	jmp	.L764
.L772:
	movq	8+strescseq(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	andl	$255, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L765
	movq	stderr(%rip), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	putc@PLT
	jmp	.L763
.L765:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$16384, %eax
	testl	%eax, %eax
	je	.L767
	movq	stderr(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	putc@PLT
	jmp	.L768
.L767:
	cmpl	$10, -12(%rbp)
	jne	.L769
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$4, %edx
	movl	$1, %esi
	leaq	.LC40(%rip), %rdi
	call	fwrite@PLT
	jmp	.L768
.L769:
	cmpl	$13, -12(%rbp)
	jne	.L770
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$4, %edx
	movl	$1, %esi
	leaq	.LC41(%rip), %rdi
	call	fwrite@PLT
	jmp	.L768
.L770:
	cmpl	$27, -12(%rbp)
	jne	.L771
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$4, %edx
	movl	$1, %esi
	leaq	.LC42(%rip), %rdi
	call	fwrite@PLT
	jmp	.L768
.L771:
	movq	stderr(%rip), %rax
	movl	-12(%rbp), %edx
	leaq	.LC43(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L768:
	addq	$1, -8(%rbp)
.L764:
	movq	24+strescseq(%rip), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L772
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$5, %edx
	movl	$1, %esi
	leaq	.LC52(%rip), %rdi
	call	fwrite@PLT
.L763:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	strdump, .-strdump
	.type	strreset, @function
strreset:
.LFB71:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	8+strescseq(%rip), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	xrealloc
	movq	%rax, %rsi
	leaq	strescseq(%rip), %rdx
	movl	$0, %eax
	movl	$21, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rsi, 8+strescseq(%rip)
	movq	$512, 16+strescseq(%rip)
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L774
	call	__stack_chk_fail@PLT
.L774:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	strreset, .-strreset
	.section	.rodata
.LC53:
	.string	"Error sending break"
	.text
	.globl	sendbreak
	.type	sendbreak, @function
sendbreak:
.LFB72:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	cmdfd(%rip), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	tcsendbreak@PLT
	testl	%eax, %eax
	je	.L777
	leaq	.LC53(%rip), %rdi
	call	perror@PLT
.L777:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	sendbreak, .-sendbreak
	.section	.rodata
.LC54:
	.string	"Error writing to output file"
	.text
	.type	tprinter, @function
tprinter:
.LFB73:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	iofd(%rip), %eax
	cmpl	$-1, %eax
	je	.L780
	movl	iofd(%rip), %eax
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	xwrite
	testq	%rax, %rax
	jns	.L780
	leaq	.LC54(%rip), %rdi
	call	perror@PLT
	movl	iofd(%rip), %eax
	movl	%eax, %edi
	call	close@PLT
	movl	$-1, iofd(%rip)
.L780:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	tprinter, .-tprinter
	.globl	toggleprinter
	.type	toggleprinter, @function
toggleprinter:
.LFB74:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	16092+term(%rip), %eax
	xorl	$32, %eax
	movl	%eax, 16092+term(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	toggleprinter, .-toggleprinter
	.globl	printscreen
	.type	printscreen, @function
printscreen:
.LFB75:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	tdump
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	printscreen, .-printscreen
	.globl	printsel
	.type	printsel, @function
printsel:
.LFB76:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	tdumpsel
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	printsel, .-printsel
	.type	tdumpsel, @function
tdumpsel:
.LFB77:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	getsel
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L786
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tprinter
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L786:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	tdumpsel, .-tdumpsel
	.type	tdumpline, @function
tdumpline:
.LFB78:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	16+term(%rip), %rdx
	movl	-36(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	tlinelen
	movl	4+term(%rip), %edx
	cmpl	%edx, %eax
	jge	.L788
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	tlinelen
	cltq
	salq	$4, %rax
	subq	$16, %rax
	jmp	.L789
.L788:
	movl	4+term(%rip), %eax
	cltq
	salq	$4, %rax
	subq	$16, %rax
.L789:
	movq	-32(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.L792
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$32, %eax
	je	.L791
	jmp	.L792
.L793:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	leaq	-12(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	utf8encode
	movq	%rax, %rdx
	leaq	-12(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tprinter
	addq	$16, -32(%rbp)
.L792:
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jbe	.L793
.L791:
	movl	$1, %esi
	leaq	.LC50(%rip), %rdi
	call	tprinter
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L794
	call	__stack_chk_fail@PLT
.L794:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	tdumpline, .-tdumpline
	.type	tdump, @function
tdump:
.LFB79:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	.L796
.L797:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	tdumpline
	addl	$1, -4(%rbp)
.L796:
	movl	term(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L797
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	tdump, .-tdump
	.type	tputtab, @function
tputtab:
.LFB80:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	16064+term(%rip), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.L799
	jmp	.L800
.L804:
	addl	$1, -4(%rbp)
	jmp	.L801
.L802:
	addl	$1, -4(%rbp)
.L801:
	movl	4+term(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jnb	.L800
	movq	16112+term(%rip), %rdx
	movl	-4(%rbp), %eax
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L802
.L800:
	movl	4+term(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jnb	.L803
	movl	-20(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -20(%rbp)
	testl	%eax, %eax
	jne	.L804
	jmp	.L803
.L799:
	cmpl	$0, -20(%rbp)
	jns	.L803
	jmp	.L805
.L808:
	subl	$1, -4(%rbp)
	jmp	.L806
.L807:
	subl	$1, -4(%rbp)
.L806:
	cmpl	$0, -4(%rbp)
	je	.L805
	movq	16112+term(%rip), %rdx
	movl	-4(%rbp), %eax
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L807
.L805:
	cmpl	$0, -4(%rbp)
	je	.L803
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	testl	%eax, %eax
	jne	.L808
.L803:
	movl	4+term(%rip), %eax
	subl	$1, %eax
	cmpl	%eax, -4(%rbp)
	cmovbe	-4(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, 16064+term(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	tputtab, .-tputtab
	.type	tdefutf8, @function
tdefutf8:
.LFB81:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	cmpb	$71, -4(%rbp)
	jne	.L810
	movl	16092+term(%rip), %eax
	orl	$64, %eax
	movl	%eax, 16092+term(%rip)
	jmp	.L812
.L810:
	cmpb	$64, -4(%rbp)
	jne	.L812
	movl	16092+term(%rip), %eax
	andl	$-65, %eax
	movl	%eax, 16092+term(%rip)
.L812:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	tdefutf8, .-tdefutf8
	.section	.rodata
	.align 8
.LC55:
	.string	"esc unhandled charset: ESC ( %c\n"
	.text
	.type	tdeftran, @function
tdeftran:
.LFB82:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %eax
	movb	%al, -20(%rbp)
	movsbl	-20(%rbp), %eax
	movl	%eax, %esi
	leaq	cs.1(%rip), %rdi
	call	strchr@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L814
	movsbl	-20(%rbp), %edx
	movq	stderr(%rip), %rax
	leaq	.LC55(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L816
.L814:
	leaq	cs.1(%rip), %rdx
	movq	-8(%rbp), %rax
	subq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	vcs.0(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	16108+term(%rip), %eax
	movl	%edx, %ecx
	cltq
	leaq	16100+term(%rip), %rdx
	movb	%cl, (%rax,%rdx)
.L816:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	tdeftran, .-tdeftran
	.type	tdectest, @function
tdectest:
.LFB83:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %eax
	movb	%al, -20(%rbp)
	cmpb	$56, -20(%rbp)
	jne	.L823
	movl	$0, -8(%rbp)
	jmp	.L819
.L822:
	movl	$0, -4(%rbp)
	jmp	.L820
.L821:
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	leaq	16048+term(%rip), %rsi
	movl	$69, %edi
	call	tsetchar
	addl	$1, -4(%rbp)
.L820:
	movl	term(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L821
	addl	$1, -8(%rbp)
.L819:
	movl	4+term(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L822
.L823:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	tdectest, .-tdectest
	.type	tstrsequence, @function
tstrsequence:
.LFB84:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	cmpl	$159, %eax
	je	.L825
	cmpl	$159, %eax
	jg	.L826
	cmpl	$158, %eax
	je	.L827
	cmpl	$158, %eax
	jg	.L826
	cmpl	$144, %eax
	je	.L828
	cmpl	$157, %eax
	je	.L829
	jmp	.L826
.L828:
	movb	$80, -4(%rbp)
	jmp	.L826
.L825:
	movb	$95, -4(%rbp)
	jmp	.L826
.L827:
	movb	$94, -4(%rbp)
	jmp	.L826
.L829:
	movb	$93, -4(%rbp)
	nop
.L826:
	call	strreset
	movzbl	-4(%rbp), %eax
	movb	%al, strescseq(%rip)
	movl	16096+term(%rip), %eax
	orl	$4, %eax
	movl	%eax, 16096+term(%rip)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	tstrsequence, .-tstrsequence
	.type	tcontrolcode, @function
tcontrolcode:
.LFB85:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	cmpl	$159, %eax
	ja	.L831
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L833(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L833(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L833:
	.long	.L854-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L854-.L833
	.long	.L831-.L833
	.long	.L850-.L833
	.long	.L849-.L833
	.long	.L848-.L833
	.long	.L847-.L833
	.long	.L847-.L833
	.long	.L847-.L833
	.long	.L846-.L833
	.long	.L845-.L833
	.long	.L845-.L833
	.long	.L831-.L833
	.long	.L854-.L833
	.long	.L831-.L833
	.long	.L854-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L844-.L833
	.long	.L831-.L833
	.long	.L843-.L833
	.long	.L842-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L854-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L839-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L837-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L832-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L835-.L833
	.long	.L831-.L833
	.long	.L831-.L833
	.long	.L832-.L833
	.long	.L832-.L833
	.long	.L832-.L833
	.text
.L848:
	movl	$1, %edi
	call	tputtab
	jmp	.L830
.L849:
	movl	16068+term(%rip), %eax
	movl	16064+term(%rip), %edx
	subl	$1, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	call	tmoveto
	jmp	.L830
.L846:
	movl	16068+term(%rip), %eax
	movl	%eax, %esi
	movl	$0, %edi
	call	tmoveto
	jmp	.L830
.L847:
	movl	16092+term(%rip), %eax
	andl	$8, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, %edi
	call	tnewline
	jmp	.L830
.L850:
	movl	16096+term(%rip), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L852
	call	strhandle
	jmp	.L831
.L852:
	call	xbell@PLT
	jmp	.L831
.L842:
	call	csireset
	movl	16096+term(%rip), %eax
	andl	$-43, %eax
	movl	%eax, 16096+term(%rip)
	movl	16096+term(%rip), %eax
	orl	$1, %eax
	movl	%eax, 16096+term(%rip)
	jmp	.L830
.L845:
	movzbl	-4(%rbp), %edx
	movl	$15, %eax
	subl	%edx, %eax
	movl	%eax, 16104+term(%rip)
	jmp	.L830
.L843:
	movl	16068+term(%rip), %edx
	movl	16064+term(%rip), %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	leaq	16048+term(%rip), %rsi
	movl	$63, %edi
	call	tsetchar
.L844:
	call	csireset
	jmp	.L831
.L839:
	movl	$1, %edi
	call	tnewline
	jmp	.L831
.L837:
	movq	16112+term(%rip), %rdx
	movl	16064+term(%rip), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	$1, (%rax)
	jmp	.L831
.L835:
	movq	vtiden(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rcx
	movq	vtiden(%rip), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ttywrite
	jmp	.L831
.L832:
	movzbl	-4(%rbp), %eax
	movl	%eax, %edi
	call	tstrsequence
	jmp	.L830
.L831:
	movl	16096+term(%rip), %eax
	andl	$-21, %eax
	movl	%eax, 16096+term(%rip)
	jmp	.L830
.L854:
	nop
.L830:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	tcontrolcode, .-tcontrolcode
	.section	.rodata
	.align 8
.LC56:
	.string	"erresc: unknown sequence ESC 0x%02X '%c'\n"
	.text
	.type	eschandle, @function
eschandle:
.LFB86:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	subl	$35, %eax
	cmpl	$76, %eax
	ja	.L856
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L858(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L858(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L858:
	.long	.L874-.L858
	.long	.L856-.L858
	.long	.L873-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L872-.L858
	.long	.L872-.L858
	.long	.L872-.L858
	.long	.L872-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L871-.L858
	.long	.L870-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L869-.L858
	.long	.L868-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L867-.L858
	.long	.L866-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L865-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L864-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L859-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L863-.L858
	.long	.L862-.L858
	.long	.L861-.L858
	.long	.L859-.L858
	.long	.L859-.L858
	.long	.L859-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L860-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L859-.L858
	.long	.L856-.L858
	.long	.L856-.L858
	.long	.L857-.L858
	.long	.L857-.L858
	.text
.L862:
	movl	16096+term(%rip), %eax
	orl	$2, %eax
	movl	%eax, 16096+term(%rip)
	movl	$0, %eax
	jmp	.L875
.L874:
	movl	16096+term(%rip), %eax
	orl	$32, %eax
	movl	%eax, 16096+term(%rip)
	movl	$0, %eax
	jmp	.L875
.L873:
	movl	16096+term(%rip), %eax
	orl	$64, %eax
	movl	%eax, 16096+term(%rip)
	movl	$0, %eax
	jmp	.L875
.L859:
	movzbl	-4(%rbp), %eax
	movl	%eax, %edi
	call	tstrsequence
	movl	$0, %eax
	jmp	.L875
.L857:
	movzbl	-4(%rbp), %eax
	subl	$108, %eax
	movl	%eax, 16104+term(%rip)
	jmp	.L876
.L872:
	movzbl	-4(%rbp), %eax
	subl	$40, %eax
	movl	%eax, 16108+term(%rip)
	movl	16096+term(%rip), %eax
	orl	$8, %eax
	movl	%eax, 16096+term(%rip)
	movl	$0, %eax
	jmp	.L875
.L867:
	movl	16068+term(%rip), %edx
	movl	16088+term(%rip), %eax
	cmpl	%eax, %edx
	jne	.L877
	movl	16084+term(%rip), %eax
	movl	$1, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	tscrollup
	jmp	.L876
.L877:
	movl	16068+term(%rip), %eax
	leal	1(%rax), %edx
	movl	16064+term(%rip), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	tmoveto
	jmp	.L876
.L866:
	movl	$1, %edi
	call	tnewline
	jmp	.L876
.L865:
	movq	16112+term(%rip), %rdx
	movl	16064+term(%rip), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	$1, (%rax)
	jmp	.L876
.L864:
	movl	16068+term(%rip), %edx
	movl	16084+term(%rip), %eax
	cmpl	%eax, %edx
	jne	.L879
	movl	16084+term(%rip), %eax
	movl	$1, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	tscrolldown
	jmp	.L876
.L879:
	movl	16068+term(%rip), %eax
	leal	-1(%rax), %edx
	movl	16064+term(%rip), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	tmoveto
	jmp	.L876
.L863:
	movq	vtiden(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rcx
	movq	vtiden(%rip), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ttywrite
	jmp	.L876
.L860:
	call	treset
	call	resettitle
	call	xloadcols@PLT
	jmp	.L876
.L869:
	movl	$4, %esi
	movl	$1, %edi
	call	xsetmode@PLT
	jmp	.L876
.L868:
	movl	$4, %esi
	movl	$0, %edi
	call	xsetmode@PLT
	jmp	.L876
.L871:
	movl	$0, %edi
	call	tcursor
	jmp	.L876
.L870:
	movl	$1, %edi
	call	tcursor
	jmp	.L876
.L861:
	movl	16096+term(%rip), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L884
	call	strhandle
	jmp	.L884
.L856:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movzbl	-4(%rbp), %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$16384, %eax
	testl	%eax, %eax
	je	.L882
	movzbl	-4(%rbp), %eax
	jmp	.L883
.L882:
	movl	$46, %eax
.L883:
	movzbl	-4(%rbp), %edx
	movq	stderr(%rip), %rdi
	movl	%eax, %ecx
	leaq	.LC56(%rip), %rsi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L876
.L884:
	nop
.L876:
	movl	$1, %eax
.L875:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	eschandle, .-eschandle
	.type	tputc, @function
tputc:
.LFB87:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpl	$31, -52(%rbp)
	jbe	.L886
	cmpl	$127, -52(%rbp)
	je	.L886
	cmpl	$127, -52(%rbp)
	jbe	.L887
	cmpl	$159, -52(%rbp)
	ja	.L887
.L886:
	movl	$1, %eax
	jmp	.L888
.L887:
	movl	$0, %eax
.L888:
	movl	%eax, -28(%rbp)
	cmpl	$126, -52(%rbp)
	jbe	.L889
	movl	16092+term(%rip), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L890
.L889:
	movl	-52(%rbp), %eax
	movb	%al, -12(%rbp)
	movl	$1, -32(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -36(%rbp)
	jmp	.L891
.L890:
	leaq	-12(%rbp), %rdx
	movl	-52(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	utf8encode
	movl	%eax, -32(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L891
	movl	-52(%rbp), %eax
	movl	%eax, %edi
	movl	$0, %eax
	call	wcwidth@PLT
	movl	%eax, -36(%rbp)
	cmpl	$-1, -36(%rbp)
	jne	.L891
	movl	$1, -36(%rbp)
.L891:
	movl	16092+term(%rip), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L892
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-12(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tprinter
.L892:
	movl	16096+term(%rip), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L919
	cmpl	$7, -52(%rbp)
	je	.L894
	cmpl	$24, -52(%rbp)
	je	.L894
	cmpl	$26, -52(%rbp)
	je	.L894
	cmpl	$27, -52(%rbp)
	je	.L894
	cmpl	$127, -52(%rbp)
	jbe	.L895
	cmpl	$159, -52(%rbp)
	ja	.L895
.L894:
	movl	16096+term(%rip), %eax
	andl	$-6, %eax
	movl	%eax, 16096+term(%rip)
	movl	16096+term(%rip), %eax
	orl	$16, %eax
	movl	%eax, 16096+term(%rip)
	jmp	.L893
.L895:
	movq	24+strescseq(%rip), %rdx
	movl	-32(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	16+strescseq(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L896
	movq	16+strescseq(%rip), %rax
	movabsq	$9223372036854775805, %rdx
	cmpq	%rdx, %rax
	ja	.L920
	movq	16+strescseq(%rip), %rax
	addq	%rax, %rax
	movq	%rax, 16+strescseq(%rip)
	movq	16+strescseq(%rip), %rdx
	movq	8+strescseq(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xrealloc
	movq	%rax, 8+strescseq(%rip)
.L896:
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	8+strescseq(%rip), %rcx
	movq	24+strescseq(%rip), %rax
	addq	%rax, %rcx
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memmove@PLT
	movq	24+strescseq(%rip), %rdx
	movl	-32(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, 24+strescseq(%rip)
	jmp	.L885
.L919:
	nop
.L893:
	cmpl	$0, -28(%rbp)
	je	.L899
	movl	-52(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	tcontrolcode
	movl	16096+term(%rip), %eax
	testl	%eax, %eax
	jne	.L921
	movl	$0, 16120+term(%rip)
	jmp	.L921
.L899:
	movl	16096+term(%rip), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L901
	movl	16096+term(%rip), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L902
	movq	512+csiescseq(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 512+csiescseq(%rip)
	movl	-52(%rbp), %edx
	movl	%edx, %ecx
	leaq	csiescseq(%rip), %rdx
	movb	%cl, (%rax,%rdx)
	cmpl	$63, -52(%rbp)
	jbe	.L903
	cmpl	$126, -52(%rbp)
	jbe	.L904
.L903:
	movq	512+csiescseq(%rip), %rax
	cmpq	$510, %rax
	jbe	.L922
.L904:
	movl	$0, 16096+term(%rip)
	call	csiparse
	call	csihandle
	jmp	.L922
.L902:
	movl	16096+term(%rip), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L906
	movl	-52(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tdefutf8
	jmp	.L907
.L906:
	movl	16096+term(%rip), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L908
	movl	-52(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tdeftran
	jmp	.L907
.L908:
	movl	16096+term(%rip), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L909
	movl	-52(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tdectest
	jmp	.L907
.L909:
	movl	-52(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	eschandle
	testl	%eax, %eax
	je	.L923
.L907:
	movl	$0, 16096+term(%rip)
	jmp	.L885
.L901:
	movl	16068+term(%rip), %edx
	movl	16064+term(%rip), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	selected
	testl	%eax, %eax
	je	.L910
	call	selclear
.L910:
	movq	16+term(%rip), %rdx
	movl	16068+term(%rip), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	16064+term(%rip), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movl	16092+term(%rip), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L911
	movzbl	16072+term(%rip), %eax
	movsbl	%al, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L911
	movq	-24(%rbp), %rax
	movzwl	4(%rax), %eax
	orb	$1, %ah
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movw	%dx, 4(%rax)
	movl	$1, %edi
	call	tnewline
	movq	16+term(%rip), %rdx
	movl	16068+term(%rip), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	16064+term(%rip), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
.L911:
	movl	16092+term(%rip), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L912
	movl	16064+term(%rip), %edx
	movl	-36(%rbp), %eax
	addl	%eax, %edx
	movl	4+term(%rip), %eax
	cmpl	%eax, %edx
	jge	.L912
	movl	4+term(%rip), %eax
	movl	16064+term(%rip), %edx
	subl	%edx, %eax
	subl	-36(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movl	-36(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	addq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memmove@PLT
.L912:
	movl	16064+term(%rip), %edx
	movl	-36(%rbp), %eax
	addl	%eax, %edx
	movl	4+term(%rip), %eax
	cmpl	%eax, %edx
	jle	.L913
	movl	$1, %edi
	call	tnewline
	movq	16+term(%rip), %rdx
	movl	16068+term(%rip), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	16064+term(%rip), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
.L913:
	movl	16068+term(%rip), %ecx
	movl	16064+term(%rip), %edx
	movl	-52(%rbp), %eax
	leaq	16048+term(%rip), %rsi
	movl	%eax, %edi
	call	tsetchar
	movl	-52(%rbp), %eax
	movl	%eax, 16120+term(%rip)
	cmpl	$2, -36(%rbp)
	jne	.L914
	movq	-24(%rbp), %rax
	movzwl	4(%rax), %eax
	orb	$2, %ah
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movw	%dx, 4(%rax)
	movl	16064+term(%rip), %eax
	leal	1(%rax), %edx
	movl	4+term(%rip), %eax
	cmpl	%eax, %edx
	jge	.L914
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movw	$1024, 4(%rax)
.L914:
	movl	16064+term(%rip), %edx
	movl	-36(%rbp), %eax
	addl	%eax, %edx
	movl	4+term(%rip), %eax
	cmpl	%eax, %edx
	jge	.L915
	movl	16068+term(%rip), %eax
	movl	16064+term(%rip), %ecx
	movl	-36(%rbp), %edx
	addl	%ecx, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	call	tmoveto
	jmp	.L885
.L915:
	movzbl	16072+term(%rip), %eax
	orl	$1, %eax
	movb	%al, 16072+term(%rip)
	jmp	.L885
.L920:
	nop
	jmp	.L885
.L921:
	nop
	jmp	.L885
.L922:
	nop
	jmp	.L885
.L923:
	nop
.L885:
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L918
	call	__stack_chk_fail@PLT
.L918:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	tputc, .-tputc
	.type	twrite, @function
twrite:
.LFB88:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -12(%rbp)
	jmp	.L925
.L932:
	movl	16092+term(%rip), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L926
	movl	-44(%rbp), %eax
	subl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rax
	addq	%rax, %rcx
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	utf8decode
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jne	.L927
	jmp	.L928
.L926:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movl	$1, -16(%rbp)
.L927:
	cmpl	$0, -48(%rbp)
	je	.L929
	movl	-20(%rbp), %eax
	cmpl	$31, %eax
	jbe	.L930
	movl	-20(%rbp), %eax
	cmpl	$127, %eax
	je	.L930
	movl	-20(%rbp), %eax
	cmpl	$127, %eax
	jbe	.L929
	movl	-20(%rbp), %eax
	cmpl	$159, %eax
	ja	.L929
.L930:
	movl	-20(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L931
	movl	-20(%rbp), %eax
	andl	$127, %eax
	movl	%eax, -20(%rbp)
	movl	$94, %edi
	call	tputc
	movl	$91, %edi
	call	tputc
	jmp	.L929
.L931:
	movl	-20(%rbp), %eax
	cmpl	$10, %eax
	je	.L929
	movl	-20(%rbp), %eax
	cmpl	$13, %eax
	je	.L929
	movl	-20(%rbp), %eax
	cmpl	$9, %eax
	je	.L929
	movl	-20(%rbp), %eax
	xorl	$64, %eax
	movl	%eax, -20(%rbp)
	movl	$94, %edi
	call	tputc
.L929:
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	tputc
	movl	-16(%rbp), %eax
	addl	%eax, -12(%rbp)
.L925:
	movl	-12(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L932
.L928:
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rsi
	subq	%fs:40, %rsi
	je	.L934
	call	__stack_chk_fail@PLT
.L934:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	twrite, .-twrite
	.section	.rodata
	.align 8
.LC57:
	.string	"tresize: error resizing to %dx%d\n"
	.text
	.globl	tresize
	.type	tresize, @function
tresize:
.LFB89:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movl	%edi, -84(%rbp)
	movl	%esi, -88(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	8+term(%rip), %eax
	testl	%eax, %eax
	jne	.L936
	movl	4+term(%rip), %eax
	movl	%eax, 8+term(%rip)
.L936:
	movl	8+term(%rip), %eax
	cmpl	%eax, -84(%rbp)
	cmovge	-84(%rbp), %eax
	movl	%eax, -84(%rbp)
	movl	term(%rip), %eax
	cmpl	%eax, -88(%rbp)
	cmovle	-88(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	8+term(%rip), %eax
	cmpl	%eax, -84(%rbp)
	cmovle	-84(%rbp), %eax
	movl	%eax, -60(%rbp)
	cmpl	$0, -84(%rbp)
	jle	.L937
	cmpl	$0, -88(%rbp)
	jg	.L938
.L937:
	movq	stderr(%rip), %rax
	movl	-88(%rbp), %ecx
	movl	-84(%rbp), %edx
	leaq	.LC57(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L935
.L938:
	movl	$0, -76(%rbp)
	jmp	.L940
.L941:
	movq	16+term(%rip), %rdx
	movl	-76(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	24+term(%rip), %rdx
	movl	-76(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -76(%rbp)
.L940:
	movl	16068+term(%rip), %eax
	subl	-88(%rbp), %eax
	cmpl	%eax, -76(%rbp)
	jle	.L941
	cmpl	$0, -76(%rbp)
	jle	.L942
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16+term(%rip), %rcx
	movl	-76(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rax, %rcx
	movq	16+term(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	24+term(%rip), %rcx
	movl	-76(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rax, %rcx
	movq	24+term(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
.L942:
	movl	-88(%rbp), %eax
	addl	%eax, -76(%rbp)
	jmp	.L943
.L944:
	movq	16+term(%rip), %rdx
	movl	-76(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	24+term(%rip), %rdx
	movl	-76(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -76(%rbp)
.L943:
	movl	term(%rip), %eax
	cmpl	%eax, -76(%rbp)
	jl	.L944
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16+term(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xrealloc
	movq	%rax, 16+term(%rip)
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	24+term(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xrealloc
	movq	%rax, 24+term(%rip)
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	16040+term(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xrealloc
	movq	%rax, 16040+term(%rip)
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	16112+term(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xrealloc
	movq	%rax, 16112+term(%rip)
	movl	$0, -76(%rbp)
	jmp	.L945
.L948:
	movl	-84(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movl	-76(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rcx
	leaq	term(%rip), %rax
	movq	(%rcx,%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xrealloc
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	addq	$4, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	term(%rip), %rdx
	movq	%rax, (%rcx,%rdx)
	movl	-60(%rbp), %eax
	movl	%eax, -72(%rbp)
	jmp	.L946
.L947:
	movl	-76(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	term(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movl	-72(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	(%rdx,%rax), %rcx
	movq	16048+term(%rip), %rax
	movq	16056+term(%rip), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movl	-76(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	term(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movl	-72(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	movl	$32, (%rax)
	addl	$1, -72(%rbp)
.L946:
	movl	-72(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jl	.L947
	addl	$1, -76(%rbp)
.L945:
	cmpl	$1999, -76(%rbp)
	jle	.L948
	movl	$0, -76(%rbp)
	jmp	.L949
.L950:
	movl	-84(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	16+term(%rip), %rcx
	movl	-76(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	16+term(%rip), %rsi
	movl	-76(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	leaq	(%rsi,%rcx), %rbx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xrealloc
	movq	%rax, (%rbx)
	movl	-84(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	24+term(%rip), %rcx
	movl	-76(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	24+term(%rip), %rsi
	movl	-76(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	leaq	(%rsi,%rcx), %rbx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xrealloc
	movq	%rax, (%rbx)
	addl	$1, -76(%rbp)
.L949:
	movl	-76(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jl	.L950
	jmp	.L951
.L952:
	movl	-84(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	16+term(%rip), %rcx
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdi
	call	xmalloc
	movq	%rax, (%rbx)
	movl	-84(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	24+term(%rip), %rcx
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdi
	call	xmalloc
	movq	%rax, (%rbx)
	addl	$1, -76(%rbp)
.L951:
	movl	-76(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jl	.L952
	movl	8+term(%rip), %eax
	cmpl	%eax, -84(%rbp)
	jle	.L953
	movq	16112+term(%rip), %rdx
	movl	8+term(%rip), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movl	8+term(%rip), %edx
	movl	-84(%rbp), %eax
	subl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L955:
	subq	$4, -56(%rbp)
	movq	16112+term(%rip), %rax
	cmpq	%rax, -56(%rbp)
	jbe	.L954
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L955
.L954:
	movl	tabspaces(%rip), %eax
	movl	%eax, %eax
	salq	$2, %rax
	addq	%rax, -56(%rbp)
	jmp	.L956
.L957:
	movq	-56(%rbp), %rax
	movl	$1, (%rax)
	movl	tabspaces(%rip), %eax
	movl	%eax, %eax
	salq	$2, %rax
	addq	%rax, -56(%rbp)
.L956:
	movq	16112+term(%rip), %rdx
	movl	-84(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	cmpq	%rax, -56(%rbp)
	jb	.L957
.L953:
	movl	-68(%rbp), %eax
	movl	%eax, 4+term(%rip)
	movl	-84(%rbp), %eax
	movl	%eax, 8+term(%rip)
	movl	-88(%rbp), %eax
	movl	%eax, term(%rip)
	movl	-88(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %esi
	movl	$0, %edi
	call	tsetscroll
	movl	16068+term(%rip), %edx
	movl	16064+term(%rip), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	tmoveto
	movq	16048+term(%rip), %rax
	movq	16056+term(%rip), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	16064+term(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	16072+term(%rip), %eax
	movl	%eax, -24(%rbp)
	movl	$0, -76(%rbp)
	jmp	.L958
.L961:
	movl	-60(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.L959
	cmpl	$0, -64(%rbp)
	jle	.L959
	movl	-64(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	-84(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-60(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	tclearregion
.L959:
	cmpl	$0, -84(%rbp)
	jle	.L960
	movl	-64(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.L960
	movl	-88(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	-84(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-64(%rbp), %eax
	movl	%eax, %esi
	movl	$0, %edi
	call	tclearregion
.L960:
	call	tswapscreen
	movl	$1, %edi
	call	tcursor
	addl	$1, -76(%rbp)
.L958:
	cmpl	$1, -76(%rbp)
	jle	.L961
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 16048+term(%rip)
	movq	%rdx, 16056+term(%rip)
	movq	-32(%rbp), %rax
	movq	%rax, 16064+term(%rip)
	movl	-24(%rbp), %eax
	movl	%eax, 16072+term(%rip)
.L935:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE89:
	.size	tresize, .-tresize
	.globl	resettitle
	.type	resettitle, @function
resettitle:
.LFB90:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edi
	call	xsettitle@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE90:
	.size	resettitle, .-resettitle
	.type	drawregion, @function
drawregion:
.LFB91:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L964
.L969:
	movq	16040+term(%rip), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L970
	movq	16040+term(%rip), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	movl	16036+term(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jge	.L967
	movl	16032+term(%rip), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	16036+term(%rip), %edx
	subl	%edx, %eax
	leal	2001(%rax), %edx
	movslq	%edx, %rax
	imulq	$274877907, %rax, %rax
	shrq	$32, %rax
	sarl	$7, %eax
	movl	%edx, %ecx
	sarl	$31, %ecx
	subl	%ecx, %eax
	imull	$2000, %eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	term(%rip), %rax
	movq	(%rdx,%rax), %rax
	jmp	.L968
.L967:
	movq	16+term(%rip), %rdx
	movl	16036+term(%rip), %ecx
	movl	-4(%rbp), %eax
	subl	%ecx, %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
.L968:
	movl	-28(%rbp), %ecx
	movl	-4(%rbp), %edx
	movl	-20(%rbp), %esi
	movq	%rax, %rdi
	call	xdrawline@PLT
	jmp	.L966
.L970:
	nop
.L966:
	addl	$1, -4(%rbp)
.L964:
	movl	-4(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L969
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE91:
	.size	drawregion, .-drawregion
	.globl	draw
	.type	draw, @function
draw:
.LFB92:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	16064+term(%rip), %eax
	movl	%eax, -12(%rbp)
	movl	16076+term(%rip), %eax
	movl	%eax, -8(%rbp)
	movl	16080+term(%rip), %eax
	movl	%eax, -4(%rbp)
	call	xstartdraw@PLT
	testl	%eax, %eax
	je	.L986
	movl	16076+term(%rip), %eax
	testl	%eax, %eax
	js	.L974
	movl	4+term(%rip), %edx
	movl	16076+term(%rip), %eax
	cmpl	%eax, %edx
	jg	.L975
	movl	4+term(%rip), %eax
	subl	$1, %eax
	jmp	.L977
.L975:
	movl	16076+term(%rip), %eax
	jmp	.L977
.L974:
	movl	$0, %eax
.L977:
	movl	%eax, 16076+term(%rip)
	movl	16080+term(%rip), %eax
	testl	%eax, %eax
	js	.L978
	movl	term(%rip), %edx
	movl	16080+term(%rip), %eax
	cmpl	%eax, %edx
	jg	.L979
	movl	term(%rip), %eax
	subl	$1, %eax
	jmp	.L981
.L979:
	movl	16080+term(%rip), %eax
	jmp	.L981
.L978:
	movl	$0, %eax
.L981:
	movl	%eax, 16080+term(%rip)
	movq	16+term(%rip), %rdx
	movl	16080+term(%rip), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	16076+term(%rip), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	movzwl	4(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L982
	movl	16076+term(%rip), %eax
	subl	$1, %eax
	movl	%eax, 16076+term(%rip)
.L982:
	movq	16+term(%rip), %rdx
	movl	16068+term(%rip), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	movzwl	4(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L983
	subl	$1, -12(%rbp)
.L983:
	movl	term(%rip), %edx
	movl	4+term(%rip), %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	drawregion
	movl	16036+term(%rip), %eax
	testl	%eax, %eax
	jne	.L984
	movl	4+term(%rip), %r8d
	movq	16+term(%rip), %rdx
	movl	16080+term(%rip), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	16+term(%rip), %rdx
	movl	16080+term(%rip), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	16076+term(%rip), %eax
	cltq
	salq	$4, %rax
	leaq	(%rdx,%rax), %r9
	movl	16080+term(%rip), %r11d
	movl	16076+term(%rip), %r10d
	movq	16+term(%rip), %rdx
	movl	16068+term(%rip), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	movl	16068+term(%rip), %esi
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movl	-12(%rbp), %edi
	pushq	%r8
	pushq	%rcx
	pushq	8(%r9)
	pushq	(%r9)
	movl	%r11d, %r9d
	movl	%r10d, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	xdrawcursor@PLT
	addq	$32, %rsp
.L984:
	movl	-12(%rbp), %eax
	movl	%eax, 16076+term(%rip)
	movl	16068+term(%rip), %eax
	movl	%eax, 16080+term(%rip)
	call	xfinishdraw@PLT
	movl	16076+term(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jne	.L985
	movl	16080+term(%rip), %eax
	cmpl	%eax, -4(%rbp)
	je	.L971
.L985:
	movl	16080+term(%rip), %edx
	movl	16076+term(%rip), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	xximspot@PLT
	jmp	.L971
.L986:
	nop
.L971:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE92:
	.size	draw, .-draw
	.globl	redraw
	.type	redraw, @function
redraw:
.LFB93:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	tfulldirt
	call	draw
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE93:
	.size	redraw, .-redraw
	.local	buflen.5
	.comm	buflen.5,4,4
	.local	buf.4
	.comm	buf.4,8192,32
	.local	c.3
	.comm	c.3,56,32
	.section	.rodata
.LC58:
	.string	"\342\206\221"
.LC59:
	.string	"\342\206\223"
.LC60:
	.string	"\342\206\222"
.LC61:
	.string	"\342\206\220"
.LC62:
	.string	"\342\226\210"
.LC63:
	.string	"\342\226\232"
.LC64:
	.string	"\342\230\203"
.LC65:
	.string	" "
.LC66:
	.string	"\342\227\206"
.LC67:
	.string	"\342\226\222"
.LC68:
	.string	"\342\220\211"
.LC69:
	.string	"\342\220\214"
.LC70:
	.string	"\342\220\215"
.LC71:
	.string	"\342\220\212"
.LC72:
	.string	"\302\260"
.LC73:
	.string	"\302\261"
.LC74:
	.string	"\342\220\244"
.LC75:
	.string	"\342\220\213"
.LC76:
	.string	"\342\224\230"
.LC77:
	.string	"\342\224\220"
.LC78:
	.string	"\342\224\214"
.LC79:
	.string	"\342\224\224"
.LC80:
	.string	"\342\224\274"
.LC81:
	.string	"\342\216\272"
.LC82:
	.string	"\342\216\273"
.LC83:
	.string	"\342\224\200"
.LC84:
	.string	"\342\216\274"
.LC85:
	.string	"\342\216\275"
.LC86:
	.string	"\342\224\234"
.LC87:
	.string	"\342\224\244"
.LC88:
	.string	"\342\224\264"
.LC89:
	.string	"\342\224\254"
.LC90:
	.string	"\342\224\202"
.LC91:
	.string	"\342\211\244"
.LC92:
	.string	"\342\211\245"
.LC93:
	.string	"\317\200"
.LC94:
	.string	"\342\211\240"
.LC95:
	.string	"\302\243"
.LC96:
	.string	"\302\267"
	.section	.data.rel.local,"aw"
	.align 32
	.type	vt100_0.2, @object
	.size	vt100_0.2, 496
vt100_0.2:
	.quad	.LC58
	.quad	.LC59
	.quad	.LC60
	.quad	.LC61
	.quad	.LC62
	.quad	.LC63
	.quad	.LC64
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC65
	.quad	.LC66
	.quad	.LC67
	.quad	.LC68
	.quad	.LC69
	.quad	.LC70
	.quad	.LC71
	.quad	.LC72
	.quad	.LC73
	.quad	.LC74
	.quad	.LC75
	.quad	.LC76
	.quad	.LC77
	.quad	.LC78
	.quad	.LC79
	.quad	.LC80
	.quad	.LC81
	.quad	.LC82
	.quad	.LC83
	.quad	.LC84
	.quad	.LC85
	.quad	.LC86
	.quad	.LC87
	.quad	.LC88
	.quad	.LC89
	.quad	.LC90
	.quad	.LC91
	.quad	.LC92
	.quad	.LC93
	.quad	.LC94
	.quad	.LC95
	.quad	.LC96
	.data
	.type	cs.1, @object
	.size	cs.1, 3
cs.1:
	.string	"0B"
	.align 8
	.type	vcs.0, @object
	.size	vcs.0, 8
vcs.0:
	.long	0
	.long	3
	.ident	"GCC: (Ubuntu 10.3.0-1ubuntu1) 10.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
