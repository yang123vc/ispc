
export uniform int width() { return programCount; }



struct Foo {
    float f;
};

float func(Foo foo[], int offset) {
    return foo[offset].f;
}

export void f_fu(uniform float RET[], uniform float aFOO[], uniform float b) {
    float a = aFOO[programIndex];
    Foo foo[programCount+5];
    uniform int i;
    for (i = 0; i < programCount+5; ++i)
        foo[i].f = i*a;
    RET[programIndex] = func(foo, (int)a);
}

export void result(uniform float RET[]) { RET[programIndex] = (1+programIndex)*(1+programIndex); }
