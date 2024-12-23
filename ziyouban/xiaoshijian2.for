C##############################################################################C
      SUBROUTINE   HETVAL(CMNAME,TEMP,TIME,DTIME,STATEV,FLUX,PREDEF
     1 ,DPRED)
      INCLUDE 'ABA_PARAM.INC'
      CHARACTER*80 CMNAME
      DIMENSION TEMP(2),STATEV(20),PREDEF(*),TIME(2),FLUX(2),DPRED(*)
      PARAMETER(b=0.36,c=0.74,Q0=118470,Cemass=2580)
      IF (ABS(TIME(2)-DTIME) .LT. 0.000000000001 ) THEN
        STATEV(2) = 0.00D0
        STATEV(3) = 0.00D0
        STATEV(4) = 0.00D0
        STATEV(5) = 0.00D0
      ENDIF

      R=8.315
      Ea=33500.0
      Tref=20+273
      DelatTIME=EXP(Ea/R*(1.0/Tref-1.0/(TEMP(1)+273)))*DTIME
      EqTIME=DelatTIME+STATEV(2)
      STATEV(2)=EqTIME
      TINITAL=31
      FLUX(1)= Cemass*Q0*EXP(-55*((2*0.481*EXP(0.039*TINITAL)*EqTIME)
     1 **(-1.25)))*(55*((2*0.481)**(-1.25)))*EXP(-0.039*TINITAL*1.25)
     2 *1.25*((EqTIME)**(-2.25))
      ACFLUX=Cemass*Q0*EXP(-55*(2*0.481*EXP(0.039*TINITAL)*EqTIME)**
     1 -1.25)
      STATEV(3) = FLUX(1)
      STATEV(4) = ACFLUX

      RETURN
      END
C#################################################################################################C

C##############################################################################C
      SUBROUTINE FILM(H,SINK,TEMP,KSTEP,KINC,TIME,NOEL,NPT,
     1 COORDS,JLTYP,FIELD,NFIELD,SNAME,NODE,AREA)
      INCLUDE 'ABA_PARAM.INC'
      DIMENSION H(2),TIME(2),COORDS(3),FIELD(NFIELD),Tav(9),Vav(9)
      DIMENSION value(1)
      DOUBLE PRECISION Tav,Vav
      CHARACTER*80 SNAME
      REAL*8 value,SINK

      DATA Tav/16,16,16,16,16,16,16,16,16/
      DATA Vav/1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0/
      Totaltime=00.00
      value1=0.00D0
      Dtime1=0.00
      Totaltime=Dtime1+TIME(2)

      DO I=1,9
       IF (((Totaltime-24.00*I).GT.-24.00) .AND. ((Totaltime-24.00*I)
     1  .LE.0.000000000001)) THEN
        Tavvalue=Tav(I)
        Vavvalue=Vav(I)
        SINK=Tav(I)
       ELSE
       ENDIF
      ENDDO

      IF(SNAME.EQ.'ASSEMBLY_DINGMIAN')THEN
       IF (KSTEP.EQ.1) THEN
        vv=Vavvalue
        H(1)=(4.67+3.83*vv)*3600
        H(2)=0
       ELSEIF (KSTEP.EQ.2) THEN
        H(1)=0.0
        H(2)=0.0
       ELSEIF (KSTEP.EQ.3) THEN
        H(1)=3.5
        H(2)=0.0
       ELSEIF (KSTEP.EQ.4) THEN
        vv=Vavvalue
        H(1)=(4.67+3.83*vv)*3600
        H(2)=0
       ENDIF

      ELSEIF(SNAME.EQ.'ASSEMBLY_DIMIAN')THEN
       IF (KSTEP.EQ.1) THEN
        vv=Vavvalue
        H(1)=(2.16+3.83*vv)*3600
        H(1)=1/(1/H(1)+0.015/837)
        H(2)=0
       ELSEIF (KSTEP.EQ.2) THEN
        H(1)=0.0
        H(2)=0.0
       ELSEIF (KSTEP.EQ.3) THEN
        H(1)=3.5
        H(2)=0.0
       ELSEIF (KSTEP.EQ.4) THEN
        vv=Vavvalue
        H(1)=(2.16+3.83*vv)*3600
        H(2)=0
       ENDIF

      ELSEIF(SNAME.EQ.'ASSEMBLY_CEMIAN1')THEN
       IF (KSTEP.EQ.1) THEN
        vv=Vavvalue
        H(1)=(3.67+3.83*vv)*3600
        H(1)=1/(1/H(1)+0.015/837)
        H(2)=0
       ELSEIF (KSTEP.EQ.2) THEN
        H(1)=0.0
        H(2)=0.0
       ELSEIF (KSTEP.EQ.3) THEN
        H(1)=3.5
        H(2)=0.0
       ELSEIF (KSTEP.EQ.4) THEN
        vv=Vavvalue
        H(1)=(3.67+3.83*vv)*3600
        H(2)=0
       ENDIF

      ELSEIF(SNAME.EQ.'ASSEMBLY_CEMIAN2')THEN
       IF (KSTEP.EQ.1) THEN
        vv=Vavvalue
        H(1)=(3.67+3.83*vv)*3600
        H(1)=1/(1/H(1)+0.015/837)
        H(2)=0
       ELSEIF (KSTEP.EQ.2) THEN
        H(1)=0.0
        H(2)=0.0
       ELSEIF (KSTEP.EQ.3) THEN
        H(1)=3.5
        H(2)=0.0
       ELSEIF (KSTEP.EQ.4) THEN
        vv=Vavvalue
        H(1)=(3.67+3.83*vv)*3600
        H(2)=0
       ENDIF

      ELSEIF(SNAME.EQ.'ASSEMBLY_CEMIAN3')THEN
       IF (KSTEP.EQ.1) THEN
        vv=Vavvalue
        H(1)=(3.67+3.83*vv)*3600
        H(1)=1/(1/H(1)+0.015/837)
        H(2)=0
       ELSEIF (KSTEP.EQ.2) THEN
        H(1)=0.0
        H(2)=0.0
       ELSEIF (KSTEP.EQ.3) THEN
        H(1)=3.5
        H(2)=0.0
       ELSEIF (KSTEP.EQ.4) THEN
        vv=Vavvalue
        H(1)=(3.67+3.83*vv)*3600
        H(2)=0
       ENDIF

      ELSEIF(SNAME.EQ.'ASSEMBLY_CEMIAN4')THEN
       IF (KSTEP.EQ.1) THEN
        vv=Vavvalue
        H(1)=(3.67+3.83*vv)*3600
        H(1)=1/(1/H(1)+0.015/837)
        H(2)=0
       ELSEIF (KSTEP.EQ.2) THEN
        H(1)=0.0
        H(2)=0.0
       ELSEIF (KSTEP.EQ.3) THEN
        H(1)=3.5
        H(2)=0.0
       ELSEIF (KSTEP.EQ.4) THEN
        vv=Vavvalue
        H(1)=(3.67+3.83*vv)*3600 
        H(2)=0
       ENDIF

      ENDIF

      RETURN
      END
C#################################################################################################C




C##############################################################################C
      SUBROUTINE DFLUX(FLUX,SOL,KSTEP,KINC,TIME,NOEL,NPT,COORDS,
     1 JLTYP,TEMP,PRESS,SNAME)
      INCLUDE 'ABA_PARAM.INC'
      DIMENSION FLUX(2),TIME(2),COORDS(3),SOL(1),Tav(9)
      REAL*8 value,Tav

      qrqa1=0.00D0
      JLTYP=0 
      DATA Tav/16,16,16,16,16,16,16,16,16/
      Totaltime=00.00
      value1=0.00D0
      Dtime1=0.00
      Totaltime=Dtime1+TIME(2)
      DO I=1,9
       IF (((Totaltime-24.00*I).GT.-24.00) .AND. ((Totaltime-24.00*I)
     1  .LE.0.000000000001)) THEN
        Tavvalue=Tav(I)
       ELSE
       ENDIF
      ENDDO

       TotalQ=0.00D0
       qrqr=0.00D0
       qrqa=0.00D0
       qrqr1=0.85
       qrqr=qrqr1*0.0000000567D0*3600.00D0*
     1      ((273+Tavvalue)**4-(273+SOL(1))**4)
       qrqa=qrqr1*0.18*0.0000000567D0*3600.00D0*(273+Tavvalue)**4*
     1      (1+sin(qrqa1))/2
       TotalQ = qrqr-qrqa
       FLUX(1)=TotalQ
       FLUX(2)=0

      RETURN
      END
C#################################################################################################C

