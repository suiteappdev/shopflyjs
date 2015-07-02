class Cliente
	constructor  : (q, http) ->
		@q = q;
		@http = http;
		@config = new config("http://boruto:3000/");

	List : () ->
		async = @q.defer();
		
		@http.get @config.BASE_URL + "cliente"
		.success((data, status, headers, config) -> async.resolve {data : data , status : status})
		.error((data, status, headers, config ) -> async.resolve({data:data, status:status }))

		async.promise;

	Cliente : (id) ->
		async = @q.defer();

		@http.get @config.BASE_URL + "cliente/#{id}"
		.success((data, status, headers, config) -> async.resolve {data : data , status : status})
		.error((data, status, headers, config ) -> async.resolve({data:data, status:status }))
		
		async.promise;

	Create : (data) ->
		async = @q.defer();

		@http.post @config.BASE_URL + "cliente", data 
		.success(
			(data, status, headers, config) -> 
				async.resolve data

		).error(
			(data, status, headers, config) -> 
				async.resolve({data : data , status : status})
			)

		async.promise;

	Delete : (id) ->
		async = @q.defer();

		@http.Delete @config.BASE_URL + "cliente/#{id}", data 
		.success(
			(data) -> async.resolve data
		)

		async.promise;

	Update : (data)->
		async = @q.defer();

		@http.put @config.BASE_URL + "cliente/#{data._id}", data 
		.success((data, status, headers, config) -> async.resolve {data : data , status : status})
		.error((data, status, headers, config ) -> async.resolve({data:data, status:status }))

		async.promise;

	Search : (data)->
		async = @q.defer();

		@http.get(@config.BASE_URL + "cliente/buscar", { url : @config.BASE_URL + "cliente/buscar", method : 'GET', params : data })
		.success((data, status, headers, config) -> async.resolve {data : data , status : status})
		.error((data, status, headers, config ) -> async.resolve({data:data, status:status }))

		async.promise;

	Inactivo : (id)->
		async = @q.defer();

		@http.put(@config.BASE_URL + "cliente/#{id}/desactivado").success(
			(data) -> async.resolve data
		)

		async.promise;

	Activo : (id)->
		async = @q.defer();

		@http.put(@config.BASE_URL + "cliente/#{id}/activado").success(
			(data) -> async.resolve data
		)

		async.promise;