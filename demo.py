import numpy as np
#import matplotlib.pyplot as plt

" Compile Fortran lib "
import os
fpath = './exmp.f90'
cmd = 'python -m numpy.f2py -c ' + fpath  + ' -m exmp'
os.system(cmd)

" Import and use the lib "
import exmp
print(exmp.fib.__doc__)
a = np.zeros(16, 'd')
x = 34
exmp.fib(a, x)
print(a)
print(x)