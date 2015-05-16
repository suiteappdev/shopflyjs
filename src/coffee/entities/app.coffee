myApp = angular.module "shopfly", []

myApp.service "$API", ["$http", ($http) ->
	_pais = new pais();
	_departamento = new departamento();
	_ciudad = new ciudad();
	_barrio = new barrio();

	"Pais" : _pais,
	"Departamento" : _departamento,
	"Ciudad" : _ciudad,
	"Barrio" : _barrio
]
		