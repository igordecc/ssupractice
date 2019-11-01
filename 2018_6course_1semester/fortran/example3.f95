program example3
implicit none
integer :: i,j, x,y
real, allocatable :: common_array(:,:)

print *, "---- task 3.1 -----"  !3.1
x=3
y=5
allocate(common_array(x, y))
do i=1,x
    do j=1,y
        common_array(i, j) = i + j
    end do
end do

print *, "where array>5 make it negative"
where(common_array>5) common_array=-common_array
print *, common_array

common_array = abs(common_array)

print *, "complex where"
where (common_array < 5)
    common_array = 0
elsewhere (common_array == 5)
    common_array = common_array**2
elsewhere (common_array >5 .AND. common_array<8)
    common_array = common_array*10
end where
print *, "result: ", common_array 

print *, "---- task 3.2 -----" !3.2





end program example3