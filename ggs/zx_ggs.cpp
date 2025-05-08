/*
    This algorithm was created by Chad Edward Worley. The original
    explanation and sample code can be found at www.chadworley.com .
    Any software derived from this code or the underlying algorithm
    must be open source. This comment should remain in any code derived
    from this code.
*/
#include <iostream>
#include <fstream>
#include <math.h>
#include <stdlib.h>
#include <time.h>
#include <sstream>

/*
    This code is meant to be instructional, not practical. I've tried 
    to focus on using straight-forward methods, rather than the best 
    methods. I've used a lot of comments, so make sure you use an 
    editing program that has color-coded highlighting.
*/
/*
    If you are used to Python, some things are going to seem strange.
    First, the 2D arrays are stored as 1D arrays; this ends up being
    easier. To access the [i][j] value of A, use A[i+j*Sx], where Sx
    is the size of A's first dimension.
    Also, you should learn about dynamic memory management, pointers,
    and passing by reference.
    O yeah, and all variables have to be initialized to a specific
    type (like int or float).
*/
/*
    To run this code, you'll need a c++ compiler. I use the free and
    open-source g++. Once you have that, open a terminal, navigate to
    the correct folder, and use the command:
    g++ Gray_Scott_on_an_expanding_domain_Instructional_code.cpp
    On my linux computer, this would create a.out, which could be run
    with this command:
    ./a.out
    When you adjust this code, you will need to recompile. You can
    change that, but how is out of this doc's scope.
*/

using namespace std; //makes cout and stringstream work without std::

//Global Variables:
float k = 0.064; //changing k and f is one way to get new behavior
float f = 0.0231;
int rnds = 7; //rounds of cell quadruplication
int spr = 600; //steps per round
int Sxi = 51; //initial size in x direction (Size_(x,initial))
int Syi = 33; //initial size in y direction
float h = 1.0; //initial distance between two cell's centers
float DA = 0.5; //diffusivity of A
float DB = 0.25; //diffusivity of B
float dt = 0.2; //the change in time for each step
float cl = 0.002; //chaos level
string aaa = "zz/zx"; //output-file tag

//Functions:
void step(int Sx, int Sy, float *A, float *B, float *A2, float *B2)
//Process a step of simulation. The old concentrations, A and B, determine
//the new concentrations, A2 and B2, after a small timestep.
//A better option is to use a more sophisticated discrete laplace operator!!
// https://en.wikipedia.org/wiki/Discrete_Laplace_operator
{
    int i,j;
    int ip,im,jp,jm,C,L,R,D,U,LD,LU,RD,RU;
    float LA, LB;
    h = h*pow(2,1.0/spr);
    for(i=0; i<Sy; ++i)
	{
	    ip = (i+1+Sy)%Sy; //i plus 1 with periodic boundary
	    im = (i-1+Sy)%Sy; //i minus 1 with periodic boundary
	    for(j=0; j<Sx; ++j)
	    {
	        jp = (j+1+Sx)%Sx; //j plus 1 with periodic boundary
	        jm = (j-1+Sx)%Sx; //j minus 1 with periodic boundary
	        C = j+i*Sx; //index of central cell
	        L = jm+i*Sx; //index of left cell
	        R = jp+i*Sx; //index of right cell
	        D = j+im*Sx; //index of downward cell
	        U = j+ip*Sx; //index of upward cell
	        LD = jm+im*Sx; //index of left cell
	        LU = jm+ip*Sx; //index of left cell
	        RD = jp+im*Sx; //index of left cell
	        RU = jp+ip*Sx; //index of left cell
	        // LA = ((A[L]+A[R]+A[D]+A[U])-4*A[C])/h/h;
	        // LB = ((B[L]+B[R]+B[D]+B[U])-4*B[C])/h/h;
	        LA = ((A[LD]+A[LU]+A[RD]+A[RU])/4+(A[L]+A[R]+A[D]+A[U])/2-3*A[C])/h/h;
	        LB = ((B[LD]+B[LU]+B[RD]+B[RU])/4+(B[L]+B[R]+B[D]+B[U])/2-3*B[C])/h/h;
          A2[C] = A[C]+dt*(DA*LA-A[C]*B[C]*B[C]+f*(1.0-A[C]));
          B2[C] = B[C]+dt*(DB*LB+A[C]*B[C]*B[C]-(k+f)*B[C]);
          //The following two lines add some randomness.
          A2[C] = A2[C]*(1.0-cl)+cl*rand()/RAND_MAX;
          B2[C] = B2[C]*(1.0-cl)+cl*rand()/RAND_MAX;
          // //another (I think better) option for randomness is:
          // A2[C] = A2[C]+(cl*rand()/RAND_MAX-cl/2.0)*min(A2[C],(float)(1.0)-A2[C]);
          // B2[C] = B2[C]+(cl*rand()/RAND_MAX-cl/2.0)*min(B2[C],(float)(1.0)-B2[C]);
	    }
	}
}

void doub(int &Sx, int &Sy, float *&A, float *&B, float *&A2, float *&B2)
//Very simple method of doubling the number of gridpoints along any axis.
//This effectively quadruples the total number of gridpoints.
//Each cell splits twice, making 3 more cells with the same concentration.
//Another option would be to interpolate when adding new gridpoints.
{
    delete[] A2;
    delete[] B2;
    A2 = new float[Sx*2*Sy*2];
    B2 = new float[Sx*2*Sy*2];
	for(int i=0; i<Sy; ++i)
	{
	    for(int j=0; j<Sx; ++j)
	    {
	        A2[j*2+(i*2)*(Sx*2)]=A[j+i*Sx];
	        A2[j*2+1+(i*2)*(Sx*2)]=A[j+i*Sx];
	        A2[j*2+(i*2+1)*(Sx*2)]=A[j+i*Sx];
	        A2[j*2+1+(i*2+1)*(Sx*2)]=A[j+i*Sx];
	        B2[j*2+(i*2)*(Sx*2)]=B[j+i*Sx];
	        B2[j*2+1+(i*2)*(Sx*2)]=B[j+i*Sx];
	        B2[j*2+(i*2+1)*(Sx*2)]=B[j+i*Sx];
	        B2[j*2+1+(i*2+1)*(Sx*2)]=B[j+i*Sx];
	    }
	}
    delete[] A;
    delete[] B;
    A = new float[Sx*2*Sy*2];
	B = new float[Sx*2*Sy*2];
	Sx = Sx*2;
	Sy = Sy*2;
	for(int i=0; i<Sy; ++i)
	{
	    for(int j=0; j<Sx; ++j)
	    {
	        A[j+i*Sx]=A2[j+i*Sx];
	        B[j+i*Sx]=B2[j+i*Sx];
	        if(rand()<RAND_MAX/400){
	            A[j+i*Sx]=0;
	            B[j+i*Sx]=1;
	        }
	        if(rand()<RAND_MAX/400){
	            A[j+i*Sx]=1;
	            B[j+i*Sx]=0;
	        }
	    }
	}
}

void makefile(int Sx, int Sy, float *A, int num, int seed)
//Make a pgm image file. This format is used because it is extremely
//simple to write code to make this type of file. You will want to convert
//this image to a losslessly compressed image, like a png.
{
    ofstream myfile;
    string extension = ".pgm";
    string u = "_";
    stringstream sss; //from namespace std
    sss << aaa << u << k << u << f << u << spr << u 
    << cl << u << Sxi << u << Syi << u << seed << u << num << extension;
    myfile.open(sss.str().c_str());
    myfile << "P5\n" << Sx << " " << Sy << "\n" << "255\n";
    for(int i=0; i<Sy; ++i)
	{
	    for(int j=0; j<Sx; ++j)
	    {
	        myfile << (char)(255*A[j+i*Sx]);
	    }
	}
    myfile.close();
}

int main()
{
    int t0 = time(NULL);
    int seed = time(NULL); 
    srand(seed); //common way to get new randomness each run.
    int Sx = Sxi;
    int Sy = Syi;
    float *A = new float[Sx*Sy];
    float *B = new float[Sx*Sy];
    float *A2 = new float[Sx*Sy];
    float *B2 = new float[Sx*Sy];
  //initialize such that A=1 and B=0 everywhere except the center
	for(int i=0; i<Sy; ++i)
	{
	    for(int j=0; j<Sx; ++j)
	    {
	        A[j+i*Sx] = 1.0;
	        B[j+i*Sx] = 0.0;
	    }
	}
	//2 centers, A=0 and B=1
	A[Sx/4+Sy/2*Sx] = 0.0;
	B[Sx/4+Sy/2*Sx] = 1.0;
	A[Sx-Sx/4+Sy/2*Sx] = 0.0;
	B[Sx-Sx/4+Sy/2*Sx] = 1.0;
	// //at the center, A=0 and B=1
	// A[Sx/2+Sy/2*Sx] = 0.0;
	// B[Sx/2+Sy/2*Sx] = 1.0;
	for(int m=0;m<rnds;++m)
	{
	    doub(Sx,Sy,A,B,A2,B2);
	    for(int k=0;k<spr/2;++k)
	    {
	        step(Sx,Sy,A,B,A2,B2);
	        step(Sx,Sy,A2,B2,A,B);//now use A2 and B2 to update A and B
	        h = h*pow(2,2./spr); //h grows during each round
	    }
	    h = 1.0; //h returns to 1, but the grid is doubled
	             //which is equivalent to h continuing to grow without grid doubling
	    makefile(Sx,Sy,A,m,seed);
	    cout << m+1 << " " << time(NULL)-t0 << "\n"; 
	    //The above line makes terminal-text output:
	    //The round number and how long it took to finish are displayed.
	    //To predict how long the next stage will take, multiply by 4.
	}
	delete[] A;
	delete[] A2;
	delete[] B;
	delete[] B2;
	return 0;
}
