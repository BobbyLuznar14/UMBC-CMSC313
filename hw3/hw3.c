#include <stdio.h>

void matmult(int result[3][3], int first[3][3], int second[3][3]){

    int sum = 0;
    // temp arr. for mult
    // after assign the result to the value in this arr.
    // this way one can easily set the result to one of the inputs of the fn
    int arr[3][3];

    for(int i = 0;i< 3;i++){
        for(int z = 0;z<3;z++){
            sum = 0;

            for(int d = 0;d<3;d++){

                sum = sum +(first[i][d]*second[d][z]);
            }



            arr[i][z] = sum;




            



        }
    }

    for(int i = 0;i<3;i++){
        for(int z = 0 ;z<3;z++){

            result[i][z] = arr[i][z];
        }
    }

    return;


}
void matadd (int result[3][3], int first[3][3], int second[3][3]){

    // temp arr. for mult
    // after assign the result to the value in this arr.
    // this way one can easily set the result to one of the inputs of the fn
    int arr[3][3];


    for(int i = 0;i< 3;i++){
        for(int z = 0;z<3;z++){


            arr[i][z] = (first[i][z]+second[i][z]);



        }
    }

    for(int i = 0;i<3;i++){
        for(int z = 0 ;z<3;z++){

            result[i][z] = arr[i][z];
        }
    }


    return;
}

// just a function to help print out an arr...
void print(int arr[3][3],char a){
  
    for( int i = 0;i<3;i++){
        if(i == 1){
            // print the output A*B+A if the char is p, (specific for hw)...
            if(a=='P'){
                printf("A*B+A = |");
            }else{
                printf("%c = |",a);

            }
           
        }else{
            if(a=='P'){

                printf("        [");
            }else{
                printf("    [");
            }
        }
        for(int z = 0;z<3;z++){
            if(z == 1){
                printf(" %d ",arr[i][z]);

            }else{
                printf("%d",arr[i][z]);

            }
            
        }

        if(i == 1){
            printf("|\n");
        }else{
            printf("]\n");

        }

        
    }



}


int main(){
    


    int A[3][3] = {{1,2,3},{4,5,6},{7,8,9}};
    int B[3][3] =  {{1,2,0},{3,4,5},{0,6,7}};

   
    print(A,'A');
    printf("\n\n");
    print(B,'B');
    printf("\n\n");
    matmult(B,A,B);
    //print(B,'B');
    matadd(B,A,B);
    //printf("\n\n");
    
    print(B,'P');


    return 0;
}