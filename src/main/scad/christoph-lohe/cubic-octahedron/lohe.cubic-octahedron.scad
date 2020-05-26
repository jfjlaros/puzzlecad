include <puzzlecad.scad>

$burr_scale = 8.5;
$burr_bevel = 1.2;

*pieces();

module pieces() {

    burr_plate([

        // Piece S2
        ["..bb|aabb|aa..", "..bb|aab{connect=fy+z+,clabel=A}b{connect=fy+z+,clabel=A}|aa.."],
        ["xx|xx", "xx|x{connect=mz+y-,clabel=A}x{connect=mz+y-,clabel=A}"],
    
        // Piece S3
        ["aa..|aabb|..bb", "aa..|a{connect=fx-z+,clabel=B}abb{connect=fy-z+,clabel=C}|..bb"],
        ["xx|xx", "xx|xx{connect=mz+y-,clabel=B}"],
        ["x{connect=fy-z+,clabel=D}x|xx", "xx|x{connect=mz+y-,clabel=C}x"],
        ["xx|xx", "xx|x{connect=mz+y+,clabel=D}x"],
    
        // Piece S4
        ["aa..|aabb|..bb", "a{connect=fy-z+,clabel=E}a{connect=fy-z+,clabel=E}..|aabb|..bb{connect=mz+y+,clabel=F}"],
        ["xx|xx", "xx|x{connect=mz+y-,clabel=E}x{connect=mz+y-,clabel=E}"],
        ["x{connect=fy-z+,clabel=G}x|xx", "xx|x{connect=fz+y-,clabel=F}x"],
        ["xx|xx", "xx|x{connect=mz+y+,clabel=G}x"],
    
        // Piece S5
        ["..bb|aabb|aa..", "..bb{connect=mz+y+,clabel=H}|aabb{connect=fx+z+,clabel=J}|a{connect=fy+z+,clabel=K}a{connect=fy+z+,clabel=K}.."],
        ["xx|xx{connect=fx+z+,clabel=L}", "xx|x{connect=fz+x-,clabel=H}x"],
        ["xx|xx", "xx|x{connect=mz+y-,clabel=J}x"],
        ["xx|xx", "xx|x{connect=mz+y-,clabel=K}x{connect=mz+y-,clabel=K}"],
        ["xx|xx", "xx|xx{connect=mz+y+,clabel=L}"]
        
    ]);
    
}
