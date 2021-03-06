// Initialize stack pointer to 256
@256
D=A
@SP
M=D

// call Sys.init 0
@Sys$return.1
D=A
@SP
A=M
M=D
@SP
M=M+1 // push return-address

@0
D=A
@R1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // push LCL

@0
D=A
@R2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // push ARG

@0
D=A
@R3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // push THIS

@0
D=A
@R4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // push THAT

@SP
D=M
@5
D=D-A
@ARG
M=D // ARG = SP-n-5

@SP
D=M
@LCL
M=D // LCL = SP

@Sys.init
0;JMP // goto f

(Sys$return.1)

// function Class1.set 0
(Class1.set)

// Class1.set: push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// Class1.set: pop static 0
@Class1.0
D=A
@R13
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D

// Class1.set: push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// Class1.set: pop static 1
@Class1.1
D=A
@R13
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D

// Class1.set: push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return from Class1.set
@LCL
D=M
@R14
M=D // endFrame = LCL

@R14
D=M
@5
A=D-A
D=M
@R15
M=D // retAddr = *(endFrame-5)

@0
D=A
@ARG
D=D+M
@R13
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D // *ARG = pop()

@ARG
D=M
@1
D=D+A
@SP
M=D // SP = ARG+1

@R14
D=M
@1
A=D-A
D=M
@THAT
M=D // THAT = *(endFrame-1)

@R14
D=M
@2
A=D-A
D=M
@THIS
M=D // THIS = *(endFrame-2)

@R14
D=M
@3
A=D-A
D=M
@ARG
M=D // ARG = *(endFrame-3)

@R14
D=M
@4
A=D-A
D=M
@LCL
M=D // LCL = *(endFrame-4)

@R15
A=M
0;JMP // goto retAddr

// function Class1.get 0
(Class1.get)

// Class1.get: push static 0
@Class1.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// Class1.get: push static 1
@Class1.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// Class1.get: sub
@SP
M=M-1
A=M
D=M
A=A-1
M=M-D

// return from Class1.get
@LCL
D=M
@R14
M=D // endFrame = LCL

@R14
D=M
@5
A=D-A
D=M
@R15
M=D // retAddr = *(endFrame-5)

@0
D=A
@ARG
D=D+M
@R13
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D // *ARG = pop()

@ARG
D=M
@1
D=D+A
@SP
M=D // SP = ARG+1

@R14
D=M
@1
A=D-A
D=M
@THAT
M=D // THAT = *(endFrame-1)

@R14
D=M
@2
A=D-A
D=M
@THIS
M=D // THIS = *(endFrame-2)

@R14
D=M
@3
A=D-A
D=M
@ARG
M=D // ARG = *(endFrame-3)

@R14
D=M
@4
A=D-A
D=M
@LCL
M=D // LCL = *(endFrame-4)

@R15
A=M
0;JMP // goto retAddr

// function Class2.set 0
(Class2.set)

// Class2.set: push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// Class2.set: pop static 0
@Class2.0
D=A
@R13
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D

// Class2.set: push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// Class2.set: pop static 1
@Class2.1
D=A
@R13
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D

// Class2.set: push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return from Class2.set
@LCL
D=M
@R14
M=D // endFrame = LCL

@R14
D=M
@5
A=D-A
D=M
@R15
M=D // retAddr = *(endFrame-5)

@0
D=A
@ARG
D=D+M
@R13
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D // *ARG = pop()

@ARG
D=M
@1
D=D+A
@SP
M=D // SP = ARG+1

@R14
D=M
@1
A=D-A
D=M
@THAT
M=D // THAT = *(endFrame-1)

@R14
D=M
@2
A=D-A
D=M
@THIS
M=D // THIS = *(endFrame-2)

@R14
D=M
@3
A=D-A
D=M
@ARG
M=D // ARG = *(endFrame-3)

@R14
D=M
@4
A=D-A
D=M
@LCL
M=D // LCL = *(endFrame-4)

@R15
A=M
0;JMP // goto retAddr

// function Class2.get 0
(Class2.get)

// Class2.get: push static 0
@Class2.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// Class2.get: push static 1
@Class2.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// Class2.get: sub
@SP
M=M-1
A=M
D=M
A=A-1
M=M-D

// return from Class2.get
@LCL
D=M
@R14
M=D // endFrame = LCL

@R14
D=M
@5
A=D-A
D=M
@R15
M=D // retAddr = *(endFrame-5)

@0
D=A
@ARG
D=D+M
@R13
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D // *ARG = pop()

@ARG
D=M
@1
D=D+A
@SP
M=D // SP = ARG+1

@R14
D=M
@1
A=D-A
D=M
@THAT
M=D // THAT = *(endFrame-1)

@R14
D=M
@2
A=D-A
D=M
@THIS
M=D // THIS = *(endFrame-2)

@R14
D=M
@3
A=D-A
D=M
@ARG
M=D // ARG = *(endFrame-3)

@R14
D=M
@4
A=D-A
D=M
@LCL
M=D // LCL = *(endFrame-4)

@R15
A=M
0;JMP // goto retAddr

// function Sys.init 0
(Sys.init)

// Sys.init: push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// Sys.init: push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Class1.set 2
@Sys.init$return.1
D=A
@SP
A=M
M=D
@SP
M=M+1 // push return-address

@0
D=A
@R1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // push LCL

@0
D=A
@R2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // push ARG

@0
D=A
@R3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // push THIS

@0
D=A
@R4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // push THAT

@SP
D=M
@7
D=D-A
@ARG
M=D // ARG = SP-n-5

@SP
D=M
@LCL
M=D // LCL = SP

@Class1.set
0;JMP // goto f

(Sys.init$return.1)

// Sys.init: pop temp 0
@0
D=A
@R5
D=D+A
@R13
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D

// Sys.init: push constant 23
@23
D=A
@SP
A=M
M=D
@SP
M=M+1

// Sys.init: push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Class2.set 2
@Sys.init$return.2
D=A
@SP
A=M
M=D
@SP
M=M+1 // push return-address

@0
D=A
@R1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // push LCL

@0
D=A
@R2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // push ARG

@0
D=A
@R3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // push THIS

@0
D=A
@R4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // push THAT

@SP
D=M
@7
D=D-A
@ARG
M=D // ARG = SP-n-5

@SP
D=M
@LCL
M=D // LCL = SP

@Class2.set
0;JMP // goto f

(Sys.init$return.2)

// Sys.init: pop temp 0
@0
D=A
@R5
D=D+A
@R13
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D

// call Class1.get 0
@Sys.init$return.3
D=A
@SP
A=M
M=D
@SP
M=M+1 // push return-address

@0
D=A
@R1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // push LCL

@0
D=A
@R2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // push ARG

@0
D=A
@R3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // push THIS

@0
D=A
@R4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // push THAT

@SP
D=M
@5
D=D-A
@ARG
M=D // ARG = SP-n-5

@SP
D=M
@LCL
M=D // LCL = SP

@Class1.get
0;JMP // goto f

(Sys.init$return.3)

// call Class2.get 0
@Sys.init$return.4
D=A
@SP
A=M
M=D
@SP
M=M+1 // push return-address

@0
D=A
@R1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // push LCL

@0
D=A
@R2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // push ARG

@0
D=A
@R3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // push THIS

@0
D=A
@R4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1 // push THAT

@SP
D=M
@5
D=D-A
@ARG
M=D // ARG = SP-n-5

@SP
D=M
@LCL
M=D // LCL = SP

@Class2.get
0;JMP // goto f

(Sys.init$return.4)

(Sys.init$WHILE)

@Sys.init$WHILE
0;JMP // goto

