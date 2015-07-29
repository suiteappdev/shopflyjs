class Empresa
	constructor  : (q, http) ->
		@q = q;
		@http = http;
		@config = new config("http://boruto:3000/");

	List : () ->
		async = @q.defer();

		@http.get @config.BASE_URL + "empresa"
		.success((data)->
				async.resolve data
			)
		.error(()->
					async.reject "error"
				)
		
		async.promise;

	Empresa : (id) ->
		async = @q.defer();

		@http.get @config.BASE_URL + "empresa/#{id}"
		.success((data)->
				async.resolve data
			)
		.error(()->
					async.reject "error"
				)

		async.promise;
	
	Search : (data)->
		async = @q.defer();

		@http.get(@config.BASE_URL + "empresa/buscar", { url : @config.BASE_URL + "empresa/buscar", method : 'GET', params : data })
		.success((data, status, headers, config) -> async.resolve {data :data , status : status})
		.error((data, status, headers, config) -> async.resolve {data :data , status : status})
		
		async.promise;

	Create : (data) ->
		async = @q.defer();

		@http.post @config.BASE_URL + "empresa", data 
		.success((data, status, headers, config) -> async.resolve {data :data , status : status})
		.error((data, status, headers, config) -> async.resolve {data :data , status : status})

		async.promise;

	Delete : (id) ->
		async = @q.defer();

		@http.Delete @config.BASE_URL + "empresa/#{id}", data 
		.success((data, status, headers, config) -> async.resolve {data :data , status : status})
		.error((data, status, headers, config) -> async.resolve {data :data , status : status})
		
		async.promise;

	Update : (data)->
		async = @q.defer();

		@http.put @config.BASE_URL + "empresa/#{data._id}", data 
		.success((data, status, headers, config) -> async.resolve {data :data , status : status})
		.error((data, status, headers, config) -> async.resolve {data :data , status : status})

		async.promise;

	Inactivo : (id)->
		async = @q.defer();

		@http.put(@config.BASE_URL + "empresa/#{id}/desactivado")
		.success((data, status, headers, config) -> async.resolve {data :data , status : status})
		.error((data, status, headers, config) -> async.resolve {data :data , status : status})

		async.promise;

	Activo : (id)->
		async = @q.defer();

		@http.put(@config.BASE_URL + "empresa/#{id}/activado")
		.success((data, status, headers, config) -> async.resolve {data :data , status : status})
		.error((data, status, headers, config) -> async.resolve {data :data , status : status})

		async.promise;