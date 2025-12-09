#include "stdio.h"
#include <stdlib.h>
// base struct
typedef struct Vehicle{
    // a pointer to the polymorphic virtual func.
    struct vPoly* v; 
    // base class function ptr
    void (*startEngine)(struct Vehicle*);

    


}Vehicle;


// struct to house the polymorphic funcs.


typedef struct vPoly{
    void(*brake)(struct Vehicle*);

    void(*accelerate)(struct Vehicle*);




}vPoly;

//functions 
void startEngine(struct Vehicle* v) {
        printf("Engine started!\n");
}
void accelerate(struct Vehicle* v) {
    printf("Car: Pressing gas pedal...\n");
       
}

void brake(struct Vehicle* v) {
    printf("Car: Applying brakes...\n");
        
}
// child class has a parent class to inherit the parent stuff 
typedef struct Car{

    // has instance of parent struct.
    struct Vehicle v;

}Car;






int main(){
    // allocate data 
    Car* car = malloc(sizeof(Car));

    car->v.v = malloc(sizeof(vPoly));
    // assign the function ptrs to the respective functions.
    car->v.startEngine = startEngine;

    car->v.v->brake = brake;
    car->v.v->accelerate = accelerate;

    Vehicle* vehicle = (Vehicle*)car;
    vehicle->startEngine(vehicle);
    vehicle->v->accelerate(vehicle);
    vehicle->v->brake(vehicle);

    free(vehicle->v);
    free(vehicle);








    return 0;
}
