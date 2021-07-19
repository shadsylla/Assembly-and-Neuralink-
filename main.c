#include <stdio.h>

#define SIZE 10 


/*prototype*/ 

void bubble (int work[], const int size, int (*compare) 
	(int a, int b) );
	int  ascending (int a, int b); 
	int descending ( int a, int b ); 


	int main()
	{
		int order; /* this is 1 for ascending order and 
		2 for descending order */ 
		int counter; /* counter */ 


		/*initialize array */ 

		int a [ SIZE ] = {2, 6, 4, 8, 10, 12, 89, 68, 45, 37};

		printf("Enter 1 to sort in ascending order, \n"
			    "Enter 2 to sort in descending order: ");

		scanf("%d", &order ); 

		printf ("\nData items in original order\n" );

		/*output original array */

		for (counter = 0; counter < SIZE; counter++)
		{
			printf("5%d", a[ counter ] ); 

		}

		/* Here I will sort the array by ascending order. And 
		 Pass func ascending as an argument to calrify the ascending 
		  sorting order */ 

		if ( order == 1 )
		{
			bubble( a, SIZE, ascending ); 
			printf( "\nData items in ascending order \n");

	    } 
	    /* here I will provide in which condition the sorting 
	       is done in an descending manner.*/

	    else { 
               
             bubble(a, SIZE, descending );

             printf("\n Data items in descending order:\n ")
	       

	    }


	    /* print on taht screen our sorted data */ 

	    for (counter =0; counter < SIZE; counter ++)
	    {
	    	printf("5%d" a, [ counter ] );
	    }
           
           printf("\n" );


           return 0; /* indicates good termination*/


	} // end of the main



   /* multipurpose bubble sort; paramter compare is a pointer 
    to the comparison function that determines sorting order */ 


   void bubble ( int work[], const int size, int (int a, int b); /*prototype*/ 
   { 
      int pass; /* pass counter*/ 
      int count;/* comparison counter */ 

     void swap(int *element1Ptr, int *element2Ptr ); /*prototype*/ 

   	   /* here goes the loop for control */ 
   	for (pass = 1; pass = < size; pass++)
   		{  /* now to cntrol how many comparisons per pass, I need 
   			another loop */ 

   		  for ( count = 0; count < size - 1; count++)
   		  {
   		  	/* if near by elements are out of order, go ahead and swap them*/ 

   		  	if ((*compare) (work [ count ], work [ count + 1 ]) ) 
   		  	{
   		  		 swap(&work [ count ], &work [count], &work [ count + 1] ) )
             }
   		  }



   		}
   	}



   } /*end func bubble */


   	/* let's swap values at memory locations 
   	to which element pointer 1 and element pointer 2 point to */ 
    
    void swap( int *element1Ptr, int element2Ptr)
       
    {
       int hold; 
       *element1Ptr = hold; 
       *element1Ptr = *element2Ptr; 
       *element2Ptr = hold; 

} /* this swap func, is very intressting to me.So much it deserves a study. 
 Element point 1 = integer hold. Then element point 2 is the same as element ptr 1. 
 So all of them are hold now.  Incredibly fascinating*/ 
    T

 int ascending ( int a, int b)
 {

 	return b < a; /* listen computer: any time integer b is less than A SWAP. */

 }

  int descending(int a, int b )
  {
	return b > a;  /* vice versa with the previous func. */
  }