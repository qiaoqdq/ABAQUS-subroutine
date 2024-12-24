How to use ABAQUS secondary development program to solve the hydration heat temperature field of UHPC structure.
# Work flow
### 1.Autodesk 3D module is used to build 3D model. 
![3Dmodel](https://github.com/qiaoqdq/ABAQUS-subroutine/blob/master/ziyouban/1.jpg)  
  https://github.com/qiaoqdq/ABAQUS-subroutine/blob/master/ziyouban/3Dmodel.dwg  

### 2.Import HYPERMESH, meshing and establish contact surface and divide node or element group.         
![HYPERMESHmodel](https://github.com/qiaoqdq/ABAQUS-subroutine/blob/master/ziyouban/2.jpg)  
  HYPERMESH meshing tutorial:  https://www.bilibili.com/video/BV1F7411A74S/?spm_id_from=333.337.search-card.all.click&vd_source=e5645ef3ddc9bc78acf9a6bfe6c7175f  
  Project grid: https://github.com/qiaoqdq/ABAQUS-subroutine/blob/master/ziyouban/HYPERMESHmodel.hm  

### 3.Subroutines programming.  
  ABAQUS subroutines explain: https://www.bilibili.com/video/BV1rU4y1X7aT/?spm_id_from=333.337.search-card.all.click&vd_source=e5645ef3ddc9bc78acf9a6bfe6c7175f  
  This project subroutines: https://github.com/qiaoqdq/ABAQUS-subroutine/blob/master/ziyouban/xiaoshijian2.for  

### 4.Inport ABAQUS assign material, load, contact and association subroutines.  
  ABAQUS tutorials: https://www.bilibili.com/video/BV18t4y147A2/?spm_id_from=333.337.search-card.all.click&vd_source=e5645ef3ddc9bc78acf9a6bfe6c7175f  
  This project ABAQUS model: https://github.com/qiaoqdq/ABAQUS-subroutine/blob/master/ziyouban/moxing.cae  

### 5.View the results and export them.  
![Result](https://github.com/qiaoqdq/ABAQUS-subroutine/blob/master/ziyouban/3.png)

