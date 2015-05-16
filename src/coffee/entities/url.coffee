class url
	@pais = "/pais"
	@departamento = "/departamento"
	@ciudad = "/ciudad"
	@barrio = "/barrio"

	construct : (base, mode = "pro") ->
		@base = base
		@mode = mode
