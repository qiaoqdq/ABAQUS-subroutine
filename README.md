How to use ABAQUS secondary development program to solve the hydration heat temperature field of UHPC structure.
# Work flow
1.Autodesk 3D module is used to build 3D model. 
![3Dmodel](https://github.com/qiaoqdq/ABAQUS-subroutine/blob/master/ziyouban/1.jpg)  
  https://github.com/qiaoqdq/ABAQUS-subroutine/blob/master/ziyouban/3Dmodel.dwg  
2.Import HYPERMESH, meshing and establish contact surface and divide node or element group.         
![HYPERMESHmodel](https://github.com/qiaoqdq/ABAQUS-subroutine/blob/master/ziyouban/2.jpg)
  https://github.com/qiaoqdq/ABAQUS-subroutine/blob/master/ziyouban/HYPERMESHmodel.hm  
3.Subroutines programming.  
  https://github.com/qiaoqdq/ABAQUS-subroutine/blob/master/ziyouban/xiaoshijian2.for  
4.Inport ABAQUS assign material, load, contact and association subroutines.  
  https://github.com/qiaoqdq/ABAQUS-subroutine/blob/master/ziyouban/moxing.cae  
5.View the results and export them.

