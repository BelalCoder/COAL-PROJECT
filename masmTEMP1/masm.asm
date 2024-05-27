INCLUDE Irvine32.inc

ExitProcess PROTO, dwExitCode:DWORD

.data
   msgCorrect         BYTE "Correct!", 0
   msgIncorrect       BYTE "Incorrect.", 0
   userScore          DWORD 0

   ;questions and answers

    question1         BYTE "1. what is 2+2? (A)3  (B)4  (C)5  (D)6", 0
   correct1           BYTE 'B'

    question2          BYTE "2. what is the capital of pakistan? (A)multan  (B)Karachi  (C)Islamabad  (D)sindh", 0
   correct2          BYTE 'C'

   question3         BYTE "3. what color is the sky? (A)blue  (B)Green  (C)red  (D)Yellow", 0
    correct3           BYTE 'A'

    question4          BYTE "4. what is 10 divided by 2? (A)2  (B)5  (C)8  (D)10", 0
   correct4          BYTE 'B'

   question5         BYTE "5. who is the current leader of pakistan? (A)nawaz shareef  (B)Imran khan  (C)USA  (D)Bhutto", 0
    correct5           BYTE 'C'

    promptScore       BYTE "Your score is= ", 0

.code
main PROC

   mov edx, OFFSET question1
      call WriteString
   call ReadChar
      call Crlf
 cmp ah, 'a' 
mov ah, al                  
   jl Next1           
      sub ah, 32      
Next1:
      cmp ah, correct1
   je CorrectAnswer1
      jmp IncorrectAnswer1

CorrectAnswer1:
      inc userScore
   mov edx, OFFSET msgCorrect
      call WriteString
   call Crlf
      jmp Question2

IncorrectAnswer1:
   mov edx, OFFSET msgIncorrect
      call WriteString
   call Crlf

Question2:

   mov edx, OFFSET question2
      call WriteString
   call ReadChar
      call Crlf
   mov ah, al
      cmp ah, 'a'
   jl Next2
      sub ah, 32
Next2:
      cmp ah, correct2
   je CorrectAnswer2
      jmp IncorrectAnswer2

CorrectAnswer2:
      inc userScore
   mov edx, OFFSET msgCorrect
      call WriteString
   call Crlf
      jmp Question3

IncorrectAnswer2:
   mov edx, OFFSET msgIncorrect
      call WriteString
   call Crlf

Question3:

   mov edx, OFFSET question3
      call WriteString
   call ReadChar
      call Crlf
   mov ah, al
      cmp ah, 'a'
   jl Next3
      sub ah, 32
Next3:
      cmp ah, correct3
   je CorrectAnswer3
      jmp IncorrectAnswer3

CorrectAnswer3:
      inc userScore
   mov edx, OFFSET msgCorrect
      call WriteString
   call Crlf
      jmp Question4

IncorrectAnswer3:
   mov edx, OFFSET msgIncorrect
      call WriteString
   call Crlf

Question4:

   mov edx, OFFSET question4
      call WriteString
   call ReadChar
      call Crlf
   mov ah, al
      cmp ah, 'a'
   jl Next4
      sub ah, 32
Next4:
      cmp ah, correct4
   je CorrectAnswer4
      jmp IncorrectAnswer4

CorrectAnswer4:
      inc userScore
   mov edx, OFFSET msgCorrect
      call WriteString
   call Crlf
      jmp Question5

IncorrectAnswer4:
   mov edx, OFFSET msgIncorrect
      call WriteString
   call Crlf

Question5:

   mov edx, OFFSET question5
      call WriteString
   call ReadChar
      call Crlf
   mov ah, al
      cmp ah, 'a'
   jl Next5
      sub ah, 32
Next5:
      cmp ah, correct5
   je CorrectAnswer5
      jmp IncorrectAnswer5

CorrectAnswer5:
      inc userScore
   mov edx, OFFSET msgCorrect
      call WriteString
   call Crlf
      jmp EndQuiz

IncorrectAnswer5:
   mov edx, OFFSET msgIncorrect
      call WriteString
   call Crlf

EndQuiz:

   mov edx, OFFSET promptScore
      call WriteString
   mov eax, userScore
      call WriteDec
   call Crlf

   INVOKE ExitProcess, 0

main ENDP
END main
