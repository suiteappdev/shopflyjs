(()->
	myApp = angular.module "shopfly", []

	myApp.service "$API", ["$http", "$q", ($http, $q) ->
		_barrio = new Barrio($q, $http);
		_banco = new Banco($q, $http);
		_tipoCliente = new tipoCliente($q, $http);
		_cliente = new Cliente($q, $http);
		_lineaPrecio = new lineaPrecio($q, $http);
		_empresa = new Empresa($q, $http);
		_cargo = new Cargo($q, $http);
		_punto = new Punto($q, $http);
		_sucursal = new Sucursal($q, $http);
		_credito = new Credito($q, $http);
		_perfil = new Perfil($q, $http);
		_docDependencia = new DocDependencia($q, $http);
		_tipoContribuyente = new TipoContribuyente($q, $http);
		_iva = new Iva($q, $http);
		_retencion  = new Retencion($q, $http);
		_indice  = new Indice($q, $http);
		_plantilla  = new Plantilla($q, $http);
		_ruta  = new Ruta($q, $http);

		"Barrio" : _barrio,
		"Banco" : _banco,
		"TipoCliente" : _tipoCliente,
		"Cliente" : _cliente,
		"LineaPrecio" : _lineaPrecio,
		"Empresa" : _empresa,
		"Cargo" : _cargo,
		"Punto" : _punto,
		"Sucursal" : _sucursal,
		"Credito" : _credito,
		"Perfil" : _perfil,
		"DocDependencia" : _docDependencia,
		"TipoContribuyente" : _tipoContribuyente,
		"Iva" : _iva,
		"Retencion" : _retencion,
		"Indice" : _indice,
		"Plantilla" : _plantilla,
		"Ruta"		: _ruta
 	]
)();


		