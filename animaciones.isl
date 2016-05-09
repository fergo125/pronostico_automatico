<isl debug="true" offscreen="false">
	
	<bundle file = "./plantillas/temperatura_animacion.xidv" clear="true"/>
	<pause/>
	<movie file = "./animaciones/temperatura/temperatura_regional.gif">
		<resize width="600" height ="400"/>	
	</movie>
	
	<bundle file = "./plantillas/corrientes_animacion.xidv" clear="true"/>
	<pause/>
	<movie file = "./animaciones/corrientes/corrientes_regional.gif">
		<resize width="600" height ="400"/>	
	</movie>
	
	<bundle file = "./plantillas/anim_unidata_oleaje.xidv" clear="true"/>
	<pause/>
	<movie file = "./animaciones/oleaje/oleaje_regional.gif">
		<resize width="600" height ="400"/>	
	</movie>
	
	
</isl>

<!--isl debug="true" offscreen="false">

	<bundle file = "/animaciones/PruebaPuntosDeOleajeIDV.xidv"/>
	<pause/>
	<export file = "/home/miocimar/Escritorio/Prueba.csv" what="csv,netcdf" display="class:ucar.unidata.idv.control.ObsListControl"/>
</isl-->
