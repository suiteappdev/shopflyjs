angular.module("dummyApp", ["shopfly"]).controller("mainCtrl", function($scope, $API){
		$API.Barrio.List().then(function(data){
			$scope.barrios = data;
		});

		$API.Banco.List().then(function(data){
			$scope.bancos = data;
		});

		$API.TipoCliente.List().then(function(data){
			$scope.TipoClientes = data;
		});
		
		$API.LineaPrecio.List().then(function(data){
			$scope.lineaPrecios = data;
		});
	});