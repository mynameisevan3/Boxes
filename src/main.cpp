/*===================
    Boxes: The Game
  ===================*/


// Includes
#include <iostream>


//Function Prototypes
int oneBox( );
int boxGrid( int width = 2, int height = 1 );


// Main
int main( int argc, char* argv[ ] ) {

  oneBox( );

  std::cout << "\n\n";

  boxGrid( 32, 16 );

  return 0;

}


// Function Implementations

// oneBox
//   Function - prints one box.
//   Inputs   - none.
//   Outputs  - int 1 if successful.
int oneBox( ) {
  std::cout << "\u25A0";
  return 1;
}

// boxGrid
//   Function - prints a grid of boxes.
//   Inputs   - int width  - the width of the box grid.
//              int height - the height of the box grid.
//   Outputs  - int ( number of boxes generated ) if successful.
int boxGrid( int width, int height ) {
  int numberOfBoxes = 0;
  for( int y = 0; y < height; y++ ) {
    for( int x = 0; x < width; x++ ) {
      numberOfBoxes += oneBox( );
    }
    std::cout << std::endl;
  }
  // Check for a boxy problem.
  if( ( width * height ) == numberOfBoxes ) {
    return numberOfBoxes;
  } else {
    // Report a boxy problem.
    return -1;
  }
}



// END main.cpp - Boxes: The Game

    

