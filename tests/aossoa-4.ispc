
export uniform int width() { return programCount; }

export void f_v(uniform float RET[]) {
#define width 3
//CO    const uniform int width = 4;
    uniform float a[width*programCount], r[width*programCount];
    for (uniform int i = 0; i < width*programCount; ++i)
        a[i] = -1;

    float x = width * programIndex;
    float y = 1 + width * programIndex;
    float z = 2 + width * programIndex;

    soa_to_aos3(x, y, z, a);
    uniform int errs = 0;
    for (uniform int i = 0; i < width * programCount; ++i)
        if (a[i] != i) ++errs;

    RET[programIndex] = errs; 
}

export void result(uniform float RET[]) {
    RET[programIndex] = 0;
}

