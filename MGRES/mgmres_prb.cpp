# include <cmath>
# include <cstdlib>
# include <ctime>
# include <iomanip>
# include <iostream>
# include <fstream>
# include <string>

using namespace std;

# include "mgmres.hpp"

int main (int argc, char** argv );
void test01 ( );
void test02 ( );
void test03 ( );
void test04 ( );
void test01_ErrorInjected (int psize,  int fPos, int range1, int range2, int k );
void test01_ErrorInjected_ReadingMatrix (int psize,  int fPos, int range1, int range2, int kf , string namematrix ) ;


//****************************************************************************80

int main (int argc, char** argv )
{

//srand(time(NULL)) ;

   if (argc != 6) 
   {
      cout << "usage: ./main  [problemSize] [flipPosition] [range1] [range2] [Bit Injecting Type] [Matrix Name]" << endl;
      return 0;
   }



  int psize = atoi(argv[1]);  // problem size
  int fPos = atoi(argv[2]);   // iteration to flip bits
  int range1=atoi(argv[3]);   //   Bit flip range start
  int range2=atoi(argv[4]) ;  // Bit flip range finish
  int k=atoi(argv[5]) ;  // K for injecting type
  std::string matixname= atoi(argv[6]) ; // Matrix Name

  timestamp ( );
  cout << "\n";
  cout << "MGMRES_PRB:\n";
  cout << "  C++ version\n";
  cout << "  Test the MGMRES library.\n";


  //test01 ( );
  //test02 ( );
  //test03 ( );
  //test04 ( );

  cout << "\n";
  cout << "Fault Tolerance Test\n";
  cout << "  C++ version\n";
  

  //test01_ErrorInjected ( psize, fPos, range1,  range2,  k );
  test01_ErrorInjected_ReadingMatrix( psize, fPos, range1,  range2,  k , matrixname);

  //
  //  Terminate.
  //
    cout << "\n";
    cout << "MGMRES_PRB:\n";
    cout << "  Normal end of execution.\n";
    cout << "\n";
  timestamp ( );

    return 0;
}
//****************************************************************************80

void test01 ( )

//****************************************************************************80
//
//  Purpose:
//
//    TEST01 tests MGMRES_ST on the simple -1,2-1 matrix.
//
//  Discussion:
//
//    This is a very weak test, since the matrix has such a simple
//    structure, is diagonally dominant (though not strictly), 
//    and is symmetric.
//
//    To make the matrix bigger, simply increase the value of N.
//
//  Licensing:
//
//    This code is distributed under the GNU LGPL license. 
//
//  Modified:
//
//    13 July 2007
//
//  Author:
//
//    John Burkardt
//
{
# define N 20
# define NZ_NUM 3 * N - 2

  double a[NZ_NUM];
  int i;
  int ia[NZ_NUM];
  int itr_max;
  int j;
  int ja[NZ_NUM];
  int k;
  int mr;
  int n = N;
  int nz_num = NZ_NUM;
  double rhs[N];
  int test;
  double tol_abs;
  double tol_rel;
  double x_error;
  double x_estimate[N];
  double x_exact[N];

  cout << "\n";
  cout << "TEST01\n";
  cout << "  Test MGMRES_ST on the simple -1,2-1 matrix.\n";
//
//  Set the matrix.
//  Note that we use zero based index values in IA and JA.
//
  k = 0;

  for ( i = 0; i < n; i++ )
  {
    if ( 0 < i )
    {
      ia[k] = i;
      ja[k] = i-1;
      a[k] = -1.0;
      k = k + 1;
    }

    ia[k] = i;
    ja[k] = i;
    a[k] = 2.0;
    k = k + 1;

    if ( i < n-1 )
    {
      ia[k] = i;
      ja[k] = i+1;
      a[k] = -1.0;
      k = k + 1;
    }

  }
//
//  Set the right hand side:
//
  for ( i = 0; i < n-1; i++ )
  {
    rhs[i] = 0.0;
  }
  rhs[N-1] = ( double ) ( n + 1 );
//
//  Set the exact solution.
//
  for ( i = 0; i < n; i++ )
  {
    x_exact[i] = ( double ) ( i + 1 );
  }

  for ( test = 1; test <= 3; test++ )
  {
//
//  Set the initial solution estimate.
//
    for ( i = 0; i < n; i++ )
    {
      x_estimate[i] = 0.0;
    }

    x_error = 0.0;
    for ( i = 0; i < n; i++ )
    {
      x_error = x_error + pow ( x_exact[i] - x_estimate[i], 2 );
    }
    x_error = sqrt ( x_error );

    if ( test == 1 )
    {
      itr_max = 1;
      mr = 20;
    }
    else if ( test == 2 )
    {
      itr_max = 2;
      mr = 10;
    }
    else if ( test == 3 )
    {
      itr_max = 5;
      mr = 4;
    }
    tol_abs = 1.0E-08;
    tol_rel = 1.0E-08;

    cout << "\n";
    cout << "  Test " << test << "\n";
    cout << "  Matrix order N = " << n << "\n";
    cout << "  Inner iteration limit = " << mr << "\n";
    cout << "  Outer iteration limit = " << itr_max << "\n";
    cout << "  Initial X_ERROR = " << x_error << "\n";

    mgmres_st ( n, nz_num, ia, ja, a, x_estimate, rhs, itr_max, mr, 
      tol_abs, tol_rel );

    x_error = 0.0;
    for ( i = 0; i < n; i++ )
    {
      x_error = x_error + pow ( x_exact[i] - x_estimate[i], 2 );
    }
    x_error = sqrt ( x_error );

    cout << "  Final X_ERROR = " << x_error << "\n";
  }
  return;
# undef N
# undef NZ_NUM
}
//****************************************************************************80

void test02 ( )

//****************************************************************************80
//
//  Purpose:
//
//    TEST02 tests MGMRES_ST on a 9 by 9 matrix.
//
//  Discussion:
//
//    A = 
//      2  0  0 -1  0  0  0  0  0
//      0  2 -1  0  0  0  0  0  0
//      0 -1  2  0  0  0  0  0  0
//     -1  0  0  2 -1  0  0  0  0
//      0  0  0 -1  2 -1  0  0  0
//      0  0  0  0 -1  2 -1  0  0
//      0  0  0  0  0 -1  2 -1  0
//      0  0  0  0  0  0 -1  2 -1
//      0  0  0  0  0  0  0 -1  2
//
//  Licensing:
//
//    This code is distributed under the GNU LGPL license. 
//
//  Modified:
//
//    18 October 2006
//
//  Author:
//
//    John Burkardt
//
{
# define N 9
# define NZ_NUM 23

  double a[NZ_NUM] = {
    2.0, -1.0,
    2.0, -1.0,
    -1.0, 2.0,
    -1.0, 2.0, -1.0,
    -1.0, 2.0, -1.0,
    -1.0, 2.0, -1.0,
    -1.0, 2.0, -1.0,
    -1.0, 2.0, -1.0,
    -1.0, 2.0 };
  int i;
  int ia[NZ_NUM] = {
    0, 0,
    1, 1,
    2, 2,
    3, 3, 3,
    4, 4, 4,
    5, 5, 5,
    6, 6, 6,
    7, 7, 7,
    8, 8 };
  int itr_max;
  int j;
  int ja[NZ_NUM] = {
    0, 3,
    1, 2,
    1, 2,
    0, 3, 4,
    3, 4, 5,
    4, 5, 6,
    5, 6, 7,
    6, 7, 8,
    7, 8 };
  int k;
  int mr;
  int n = N;
  int nz_num = NZ_NUM;
  double rhs[N] = {
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0 };
  int seed = 123456789;
  int test;
  double tol_abs;
  double tol_rel;
  double x_error;
  double *x_estimate;
  double x_exact[N] = {
    3.5,
    1.0,
    1.0,
    6.0,
    7.5,
    8.0,
    7.5,
    6.0,
    3.5 };

  cout << "\n";
  cout << "TEST02\n";
  cout << "  Test MGMRES_ST on matrix that is not quite the -1,2,-1 matrix,\n";
  cout << "  of order N = " << n << "\n";

  for ( test = 1; test <= 2; test++ )
  {
    if ( test == 1 )
    {
      cout << "\n";
      cout << "  First try, use zero initial vector:\n";
      cout << "\n";

      x_estimate = new double[n];
      for ( i = 0; i < n; i++ )
      {
        x_estimate[i] = 0.0;
      }
    }
    else
    {
      cout << "\n";
      cout << "  Second try, use random initial vector:\n";
      cout << "\n";

      x_estimate = r8vec_uniform_01 ( n, seed );
    }
//
//  Set the initial solution estimate.
//
    x_error = 0.0;
    for ( i = 0; i < n; i++ )
    {
      x_error = x_error + pow ( x_exact[i] - x_estimate[i], 2 );
    }
    x_error = sqrt ( x_error );

    cout << "  Before solving, X_ERROR = " << x_error << "\n";

    itr_max = 20;
    mr = n - 1;
    tol_abs = 1.0E-08;
    tol_rel = 1.0E-08;

    mgmres_st ( n, nz_num, ia, ja, a, x_estimate, rhs, itr_max, mr, 
      tol_abs, tol_rel );

    x_error = 0.0;
    for ( i = 0; i < N; i++ )
    {
      x_error = x_error + pow ( x_exact[i] - x_estimate[i], 2 );
    }
    x_error = sqrt ( x_error );

    cout << "  After solving, X_ERROR = " << x_error << "\n";

    cout << "\n";
    cout << "  Final solution estimate:\n";
    cout << "\n";
    for ( i = 0; i < n; i++ )
    {
      cout << "  " << setw(8)  << i
           << "  " << setw(12) << x_estimate[i] << "\n";
    }

    delete [] x_estimate;
  }

  return;
# undef N
# undef NZ_NUM
}
//******************************************************************************

void test03 ( )

//******************************************************************************
//
//  Purpose:
//
//    TEST03 tests PMGMRES_ILU_CR on the simple -1,2-1 matrix.
//
//  Discussion:
//
//    This is a very weak test, since the matrix has such a simple
//    structure, is diagonally dominant (though not strictly), 
//    and is symmetric.
//
//    To make the matrix bigger, simply increase the value of N.
//
//    Note that PGMRES_ILU_CR expects the matrix to be stored using the
//    sparse compressed row format.
//
//  Licensing:
//
//    This code is distributed under the GNU LGPL license. 
//
//  Modified:
//
//    25 July 2007
//
//  Author:
//
//    John Burkardt
//
{
# define N 20
# define NZ_NUM 3 * N - 2

  double a[NZ_NUM];
  int i;
  int ia[N+1];
  int itr_max;
  int j;
  int ja[NZ_NUM];
  int k;
  int mr;
  int n = N;
  int nz_num = NZ_NUM;
  double rhs[N];
  int test;
  double tol_abs;
  double tol_rel;
  double x_error;
  double x_estimate[N];
  double x_exact[N];

  cout << "\n";
  cout << "TEST03\n";
  cout << "  Test PMGMRES_ILU_CR on the simple -1,2-1 matrix.\n";
//
//  Set the matrix.
//  Note that we use zero based index valuesin IA and JA.
//
  k = 0;
  ia[0] = 0;

  cout << "\n";
  cout << "  ia[" << 0 << "] = " << ia[0] << "\n";
  for ( i = 0; i < n; i++ )
  {
    ia[i+1] = ia[i];
    if ( 0 < i )
    {
      ia[i+1] = ia[i+1] + 1;
      ja[k] = i-1;
      a[k] = -1.0;
      k = k + 1;
    }

    ia[i+1] = ia[i+1] + 1;
    ja[k] = i;
    a[k] = 2.0;
    k = k + 1;

    if ( i < N-1 )
    {
      ia[i+1] = ia[i+1] + 1;
      ja[k] = i+1;
      a[k] = -1.0;
      k = k + 1;
    }
    cout << "  ia[" << i+1 << "] = " << ia[i+1] << "\n";
  }
//
//  Set the right hand side:
//
  for ( i = 0; i < n-1; i++ )
  {
    rhs[i] = 0.0;
  }
  rhs[n-1] = ( double ) ( n + 1 );
//
//  Set the exact solution.
//
  for ( i = 0; i < n; i++ )
  {
    x_exact[i] = ( double ) ( i + 1 );
  }

  for ( test = 1; test <= 3; test++ )
  {
//
//  Set the initial solution estimate.
//
    for ( i = 0; i < n; i++ )
    {
      x_estimate[i] = 0.0;
    }
    x_error = 0.0;
    for ( i = 0; i < n; i++ )
    {
      x_error = x_error + pow ( x_exact[i] - x_estimate[i], 2 );
    }
    x_error = sqrt ( x_error );

    if ( test == 1 )
    {
      itr_max = 1;
      mr = 20;
    }
    else if ( test == 2 )
    {
      itr_max = 2;
      mr = 10;
    }
    else if ( test == 3 )
    {
      itr_max = 5;
      mr = 4;
    }
    tol_abs = 1.0E-08;
    tol_rel = 1.0E-08;

    cout << "\n";
    cout << "  Test " << test << "\n";
    cout << "  Matrix order N = " << n << "\n";
    cout << "  Inner iteration limit = " << mr << "\n";
    cout << "  Outer iteration limit = " << itr_max << "\n";
    cout << "  Initial X_ERROR = " << x_error << "\n";

    pmgmres_ilu_cr ( n, nz_num, ia, ja, a, x_estimate, rhs, itr_max, mr, 
      tol_abs, tol_rel );

    x_error = 0.0;
    for ( i = 0; i < n; i++ )
    {
      x_error = x_error + pow ( x_exact[i] - x_estimate[i], 2 );
    }
    x_error = sqrt ( x_error );

    cout << "  Final X_ERROR = " << x_error << "\n";
  }

  return;
# undef N
# undef NZ_NUM
}
//******************************************************************************

void test04 ( )

//******************************************************************************
//
//  Purpose:
//
//    TEST04 tests PMGMRES_ILU_CR on a simple 5 by 5 matrix.
//
//  Licensing:
//
//    This code is distributed under the GNU LGPL license. 
//
//  Modified:
//
//    25 July 2007
//
//  Author:
//
//    John Burkardt
//
{
# define N 5
# define NZ_NUM 9

  double a[NZ_NUM] = { 
     1.0, 2.0, 1.0, 
     2.0,
     3.0, 3.0,
     4.0, 
     1.0, 5.0 };
  int i;
  int ia[N+1] = { 0, 3, 4, 6, 7, 9 };
  int itr_max;
  int j;
  int ja[NZ_NUM] = {
    0, 3, 4, 
    1, 
    0, 2, 
    3, 
    1, 4 };
  int k;
  int mr;
  int n = N;
  int nz_num = NZ_NUM;
  double rhs[N] = { 14.0, 4.0, 12.0, 16.0, 27.0 };
  int test;
  double tol_abs;
  double tol_rel;
  double x_error;
  double x_estimate[N];
  double x_exact[N] = { 1.0, 2.0, 3.0, 4.0, 5.0 };

  cout << "\n";
  cout << "TEST04\n";
  cout << "  Test PMGMRES_ILU_CR on a simple 5 x 5 matrix.\n";

  cout << "\n";
  for ( i = 0; i <= n + 1; i++ )
  {
    cout << "  ia[" << i << "] = " << ia[i] << "\n";
  }
  for ( test = 1; test <= 3; test++ )
  {
//
//  Set the initial solution estimate.
//
    for ( i = 0; i < n; i++ )
    {
      x_estimate[i] = 0.0;
    }
    x_error = 0.0;
    for ( i = 0; i < n; i++ )
    {
      x_error = x_error + pow ( x_exact[i] - x_estimate[i], 2 );
    }
    x_error = sqrt ( x_error );

    if ( test == 1 )
    {
      itr_max = 1;
      mr = 20;
    }
    else if ( test == 2 )
    {
      itr_max = 2;
      mr = 10;
    }
    else if ( test == 3 )
    {
      itr_max = 5;
      mr = 4;
    }
    tol_abs = 1.0E-08;
    tol_rel = 1.0E-08;

    cout << "\n";
    cout << "  Test " << test << "\n";
    cout << "  Matrix order N = " << n << "\n";
    cout << "  Inner iteration limit = " << mr << "\n";
    cout << "  Outer iteration limit = " << itr_max << "\n";
    cout << "  Initial X_ERROR = " << x_error << "\n";

    pmgmres_ilu_cr ( n, nz_num, ia, ja, a, x_estimate, rhs, itr_max, mr, 
      tol_abs, tol_rel );

    x_error = 0.0;
    for ( i = 0; i < n; i++ )
    {
      x_error = x_error + pow ( x_exact[i] - x_estimate[i], 2 );
    }
    x_error = sqrt ( x_error );

    cout << "  Final X_ERROR = " << x_error << "\n";
  }

  return;
# undef N
# undef NZ_NUM
}

void test01_ErrorInjected (int psize,  int fPos, int range1, int range2, int kf )

//****************************************************************************80
//
//  Purpose:
//
//    TEST01 tests MGMRES_ST on the simple -1,2-1 matrix.
//
//  Discussion:
//
//    This is a very weak test, since the matrix has such a simple
//    structure, is diagonally dominant (though not strictly), 
//    and is symmetric.
//
//    To make the matrix bigger, simply increase the value of N.
//
//  Licensing:
//
//    This code is distributed under the GNU LGPL license. 
//
//  Modified:
//
//    13 July 2007
//
//  Author:
//
//    John Burkardt
//
{
# define N 100
# define NZ_NUM 3 * N - 2

  double a[NZ_NUM];
  int i;
  int ia[NZ_NUM];
  int itr_max;
  int j;
  int ja[NZ_NUM];
  int k;
  int mr;
  int n = N;
  int nz_num = NZ_NUM;
  double rhs[N];
  int test;
  double tol_abs;
  double tol_rel;
  double x_error;
  double x_estimate[N];
  double x_exact[N];

  cout << "\n";
  cout << "TEST01\n";
  cout << "  Test MGMRES_ST on the simple -1,2-1 matrix.\n";
//
//  Set the matrix.
//  Note that we use zero based index values in IA and JA.
//
  k = 0;

  int successRate =0 ;
  int IsSuccess = 0;

  for ( i = 0; i < n; i++ )
  {
    if ( 0 < i )
    {
      ia[k] = i;
      ja[k] = i-1;
      a[k] = -1.0;
      k = k + 1;
    }

    ia[k] = i;
    ja[k] = i;
    a[k] = 2.0;
    k = k + 1;

    if ( i < n-1 )
    {
      ia[k] = i;
      ja[k] = i+1;
      a[k] = -1.0;
      k = k + 1;
    }

  }
//
//  Set the right hand side:
//
  for ( i = 0; i < n-1; i++ )
  {
    rhs[i] = 0.0;
  }
  rhs[N-1] = ( double ) ( n + 1 );
//
//  Set the exact solution.
//
  for ( i = 0; i < n; i++ )
  {
    x_exact[i] = ( double ) ( i + 1 );
  }

  for ( test = 1; test <= 100; test++ )
  {
//
//  Set the initial solution estimate.
//
    srand(time(NULL)) ;

    for ( i = 0; i < n; i++ )
    {
      x_estimate[i] = 0.0;
    }

    x_error = 0.0;
    for ( i = 0; i < n; i++ )
    {
      x_error = x_error + pow ( x_exact[i] - x_estimate[i], 2 );
    }
    x_error = sqrt ( x_error );


    itr_max = 100;
    mr = 50;

    /*

      if ( test == 1 )
      {
        itr_max = 100;
        mr = 100;
      }
      else if ( test == 2 )
      {
        itr_max = 2;
        mr = 50;
      }
      else if ( test == 3 )
      {
        itr_max = 5;
        mr = 25;
      }
    */

    tol_abs = 1.0E-08;
    tol_rel = 1.0E-08;

    cout << "\n";
    cout << "  Test " << test << "\n";
    cout << "  Matrix order N = " << n << "\n";
    cout << "  Inner iteration limit = " << mr << "\n";
    cout << "  Outer iteration limit = " << itr_max << "\n";
    cout << "  Initial X_ERROR = " << x_error << "\n";

     IsSuccess =  mgmres_fault_st ( n, nz_num, ia, ja, a, x_estimate, rhs, itr_max, mr, 
      tol_abs, tol_rel , psize ,  fPos , range1, range2 , kf);


    successRate = successRate + IsSuccess ;


    x_error = 0.0;
    for ( i = 0; i < n; i++ )
    {
      x_error = x_error + pow ( x_exact[i] - x_estimate[i], 2 );
    }
    x_error = sqrt ( x_error );

    cout << "  Final X_ERROR = " << x_error << "\n";

    cout << " Successful Rate = " << successRate << " % " <<endl ; 
    cout << " \n";
  }
  return;
# undef N
# undef NZ_NUM
}



void test01_ErrorInjected_ReadingMatrix (int psize,  int fPos, int range1, int range2, int kf , string matrixname)
{

# define N 100
# define NZ_NUM 3 * N - 2

  //double a[NZ_NUM];
  double *a ; // Val matrix for sparse format
  //int a;
  double *normalA ;


  //int ia[NZ_NUM];
  int *ia;

  int itr_max;
  int j;

  //int ja[NZ_NUM];
  int *ja;

  int k;
  int mr;
  //int n = N;
  int n;

  //int nz_num = NZ_NUM;
  int nz_num;

  //double rhs[N];
  double *rhs;

  int test;
  double tol_abs;
  double tol_rel;
  double x_error;
  //double x_estimate[N];
  double *x_estimate ;

  //double x_exact[N];
  double *x_exact ;


  cout << "\n";
  cout << "TEST01 reading matrix from file\n";

 
//  Note that we use zero based index values in IA and JA.
//
  k = 0;

  

   //ifstream matrixfile("1138_bus.mtx");

  //ifstream matrixfile("1138_bus.mtx");
  ifstream matrixfile(stringname);
  if(!(matrixfile.is_open())){
      cout << "Error : file not found " <<endl;
      return;
  }
  int m,ni,l;
  while(matrixfile.peek()=='%') matrixfile.ignore(2048, '\n');
  matrixfile>>m>>ni>>l ;

  nz_num = l ;
  n = ni ;

  cout << " m = "<<m<<endl ;
  cout << " n = "<<ni<<endl ;
  cout << " l = "<<l<<endl ;

  ia = new int[l] ;
  ja = new int[l] ;
  a = new double[l] ;

  normalA = new double[m*ni] ;

  rhs= new double[n];
  x_estimate = new double[n];
  x_exact  = new double[n];

  int xi , yi ;

  for (int i = 0; i < l; ++i)
  {
    /* code */
    matrixfile >> ia[i] >> ja[i] >> a[i] ;

    xi = ia[i] -1 ;
    yi = ja[i] -1 ;

    normalA[xi * m + yi] = a[i] ;

  }

  matrixfile.close() ;


  cout << " Matrix A is filled from file"<<endl ;

  int seed;

  srand (time(NULL));
  seed = rand();

  x_exact = r8vec_uniform_01 ( n, seed );


  //lets calculate rhs
  rhs = r8ge_mv ( m, ni, normalA , x_exact );


  /*
//
//  Set the right hand side:
//
  for ( i = 0; i < n-1; i++ )
  {
    rhs[i] = 0.0;
  }
  rhs[n-1] = ( double ) ( n + 1 );
//
//  Set the exact solution.
//
  for ( i = 0; i < n; i++ )
  {
    x_exact[i] = ( double ) ( i + 1 );
  }

  */

  int successRate =0 ;
  int IsSuccess = 0;

  for ( test = 1; test <= 100; test++ )
  {
//
//  Set the initial solution estimate.
//
    //srand(time(NULL)) ;

    for (int i = 0; i < n; i++ )
    {
      x_estimate[i] = 0.0;
    }

    x_error = 0.0;
    for (int  i = 0; i < n; i++ )
    {
      x_error = x_error + pow ( x_exact[i] - x_estimate[i], 2 );
    }
    x_error = sqrt ( x_error );


    itr_max = n;
    mr = 100;

   
    tol_abs = 1.0E-08;
    tol_rel = 1.0E-08;

    cout << "\n";
    cout << "  Test " << test << "\n";
    cout << "  Matrix order N = " << n << "\n";
    cout << "  Inner iteration limit = " << mr << "\n";
    cout << "  Outer iteration limit = " << itr_max << "\n";
    cout << "  Initial X_ERROR = " << x_error << "\n";

    IsSuccess = mgmres_fault_st ( n, nz_num, ia, ja, a, x_estimate, rhs, itr_max, mr, 
      tol_abs, tol_rel , psize ,  fPos , range1, range2 , kf);

    successRate = successRate + IsSuccess ;

    x_error = 0.0;
    for (int  i = 0; i < n; i++ )
    {
      x_error = x_error + pow ( x_exact[i] - x_estimate[i], 2 );
    }
    x_error = sqrt ( x_error );

    cout << "  Final X_ERROR = " << x_error << "\n";

    cout << " Successful Rate = " << successRate << " % " <<endl ; 
    cout << " \n";



  }
  return;
# undef N
# undef NZ_NUM
}





