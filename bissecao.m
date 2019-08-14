## Copyright (C) 2019 Natanael
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} bissecao (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Natanael <Natanael@DESKTOP-78B49JH>
## Created: 2019-08-14

function retval = bissecao (a, b, TOL, N);

  i = 1;
  FA = funcao(a);
  
  while (i <= N)
    
    p = a + (b - a)/2;
    FP = funcao(p);
    
    if (FP == 0 | (b-a)/2 < TOL)
      
        printf ("O valor estimado é %d\n", p)
        return
      
    endif
    
    i = i +1;
    if (FA * FP > 0)
      
      a = p;
      FA = FP;
      
    else
       
       b = p;
     
    endif
  
  endwhile  
  
  printf ("Metodo falhou");
    
  
  
endfunction
