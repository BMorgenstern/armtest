int square(int arg)
{
    return arg*arg;
}

int (*exfunc)(int)=square;


int sum(int a, int b)
{
    return a+b;
}

int func(int arg)
{
    return exfunc(arg);
}
int main()
{
    return 0;
}
