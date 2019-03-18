//  mgmres.hpp
//
//  Thanks to Philip Sakievich for correcting mismatches between this HPP
//  file and the corresponding CPP file, 23 March 2016!
//
void atx_cr ( int n, int nz_num, int ia[], int ja[], double a[], double x[], 
  double w[] );
void atx_st ( int n, int nz_num, int ia[], int ja[], double a[], double x[], 
  double w[] );
void ax_cr ( int n, int nz_num, int ia[], int ja[], double a[], double x[],
  double w[] );
void ax_st ( int n, int nz_num, int ia[], int ja[], double a[], double x[],
  double w[] );
void diagonal_pointer_cr ( int n, int nz_num, int ia[], int ja[], int ua[] );
void ilu_cr ( int n, int nz_num, int ia[], int ja[], double a[], int ua[],
  double l[] );
void lus_cr ( int n, int nz_num, int ia[], int ja[], double l[], int ua[], 
  double r[], double z[] );
void mgmres_st ( int n, int nz_num, int ia[], int ja[], double a[], double x[],
  double rhs[], int itr_max, int mr, double tol_abs, double tol_rel );
int mgmres_fault_st(int n, int nz_num, int ia[], int ja[], double a[], double x[],
	double rhs[], int itr_max, int mr, double tol_abs, double tol_rel ,
	int psize,  int fPos, int range1 , int range2, int kf ) ;
void mult_givens ( double c, double s, int k, double g[] );
void pmgmres_ilu_cr ( int n, int nz_num, int ia[], int ja[], double a[], 
  double x[], double rhs[], int itr_max, int mr, double tol_abs, 
  double tol_rel );
double r8vec_dot ( int n, double a1[], double a2[] );
double *r8vec_uniform_01 ( int n, int &seed );
void rearrange_cr ( int n, int nz_num, int ia[], int ja[], double a[] );
double *r8ge_mv ( int m, int n, double a[], double x[] );
void timestamp ( );
void injectBitFlipNotRandom( int n , double r[] , double s[] , double v[] , double h[] , double y[] , double x[] ,  int range1 , int range2 , int kf) ;

