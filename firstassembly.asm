  The goals of this whole thing: 
   Problem oriented learning assembly and  Binary code. 
   Problem is how to create a below eyelid screen to use neuralink none invasively. 

   Chaotic now, but getting organized with time. 


decimal to hex numbers: 

679 

679 / 256 (16)^2 = 2.65 
= 679 - 512 = 167 

167 / 16 (16^1) = 10,43 0r in hexadecimal is  A 

167 - 160 = 7 
679 = 2A7 in HEX 



if I want to add 5 + 3  and 

5 = 0101  
3 = 0011 

 And the + equals something else in binary. 
 Let's work the operation in Binary code. 

 0 + 0 = 0 
 1 + 1 = 1 
 0 + 1 = 1 
 1 + 1 = 0 

 We need to crunch these numbers into my intuition. Using colors and sounds. 
 This is the only way to be  truly creative I see.



 adding BINARY 
 a lot of borowing and jumping





 substracting BINARY 


This an assembly program that will print  "Welcome to the New generation of humanity.NeuraLink"

  



 .global 


_start:              @this start can be anything     
                     @ it like I am hitting switches. to control the registers 

                    @ Every R represents a different system. if I want to out put to the screen, I'll have to set the registers in a certain way.  
MOV R7, #4          @ R7 system to system call #4 which means I want to write something on screen or eyes lids   
MOV R0, #1          @ This #1 means I want to use the monitor/ eye lids lenses would be#2100
MOV R2, #150 @Length.How many characters should converted to banary and out to the screen.

LDR R1, =message @ Ldr is lowd into the screen/or eyelid.The output will be called message(Variable) 
SWI 0   @ this is to software interept 

end: 

MOV R7, #1 @this is a jumb to the terminal  
SWI 0


.data  @ this to define our data. 
message: 
  .ascii "Welcome to the new Generation of humanity. NeuraLink \n" 

  @ esc out of that and go to the rasberry do the asmtut.s thing. 
  // this is specific to the tutorial 


  @ to allow keyboard input 

 _start 
  MOV R7, #3
  MOV R0, #0 @ input water floow come from the key board hence #0
  MOV R2, #10 @ the amount of characters
  LDR R1, =message @ this is comand is to load   
  SWI 0 

_write: 


  MOV R7, #4 @ this command is for call system output info to the screen/eyelid 
  MOV R1, #1 @ this input goes to the monitor 
  MOV R2, #10 @ the amount of characters
  LDR R1, =message @ this is comand is to load   
  SWI 0 




end 





   

  The commands/instructions will follow simple format: 
  <INSTRUCTIONS> 
  Tipically 3 to 4 characters =. 


   <Dest>
   where the info will stored
    Then I will put coma
   <Operand>, 


   then another Operand. 
     i,e: MV R2, #3

          ADD R0, R1, #0x14 
  to add: 

.global_ start: 
  
  _start: 

  MOV R1, #0xA                @ a hex number inside here. 
  ADD R0, R1, #0x14           @ R0 is register 0. R1 perand sis for what ever number i input stays here. 
                              @ with this comand I am saying 10 + 20 in hexadecimal values. 
  SWI 0                             


now to add and substract


.global_start 

_start: 
 MOV R1, #0x14 @ I gave this hex the value of 14
 SUB R0, R1, #0xA @ A means 10 
 MOV R7, #1 
 SWI 0

 @ to multiply I need to creat or store the numbers inside registers. 

 _start: 

 MOV R1, #0x14 
 MOV R2, #0xA
 SUB R0, R1, R2
 MOV R7, #1 
 SWI 0 


 @ output on Eyelid 

  ----------------------------------
                    200 
  ----------------------------------                  

  
  @ Now ro multiply with cumulate( this perticular function is useful) MLA

  _start: 

   MOV R1, #0x14 
   MOV R2, #0xA 
   MOV R3, #0x5     @ Register 3 holds number 5 
   MLA R0, R1, R2, R3   @ Opernds of R1 and R2 will multiply with each other, then add to Register 3. R3
   MOV R7, #1           @ output to screen or eyelid Neuralink. 

  SWI 0 


  @ there is branch intruction for next time. 










  The goals of this whole thing: 
   Problem oriented learning assembly. 
   Problem is how to create a below eyelid screen to use neuralink none invasively.  