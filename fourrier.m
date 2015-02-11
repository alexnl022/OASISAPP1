## Copyright (C) 2015 UX303L
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {Function File} {@var{retval} =} fourrier (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: UX303L <UX303L@ASUS>
## Created: 2015-01-30

function ek = fourrier (k,N)
  n = (0:N-1)';
  ek = exp(2*i*pi*k*n/N)/N;
  
endfunction
