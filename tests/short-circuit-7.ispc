
export uniform int width() { return programCount; }

uniform int * uniform ptr;

uniform bool crash() {
    return *ptr > 0;
}

export void f_fu(uniform float RET[], uniform float aFOO[], uniform float b) {
    float a = aFOO[programIndex]; 
    float a0 = aFOO[0], a1 = aFOO[1];
    if (a0 < a1 || crash())
        RET[programIndex] = 1;
    else
        RET[programIndex] = 0;
}

export void result(uniform float RET[]) {
    RET[programIndex] = 1;
}
