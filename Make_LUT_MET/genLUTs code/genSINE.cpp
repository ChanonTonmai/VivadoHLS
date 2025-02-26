#include <stdint.h>
#include <stdio.h>
#include <iostream>
#include <iomanip>
#include <math.h>
using namespace std;
#define resolution 2.0
float pi = acos(-1.0);
int size = 360/resolution;
float value;
int angle = 0;

int main(int argc, char** argv) {
  cout << "#ifndef sineLUTs_h" << endl;
  cout << "#define sineLUTs_h" << endl;
  cout << "#include <stdint.h>" << endl;
  cout << "#define resolution 2.0" << endl;
  cout << "int size = 360/resolution;" << endl;
  cout << "// SINE LUT" << endl;
  cout << "static const float sineLUT[size+1] = {" << endl;
  for(int i = 0; i <= size; i ++) 
  {
	
  	value = sin(angle*(pi/180)); //converting angle(in deg) to sin() input in radians
	angle += resolution;
	if (i != size)
	{
  		cout << showbase << internal << setw(6) << setfill('0') << dec << value << ",";
	}
	
  }
    
  cout << endl << "};" << endl;
  cout << "#endif" << endl;
  return 0;
}

