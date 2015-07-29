class Usuario
	constructor  : (q, http) ->
		@q = q;
		@http = http;
		@config = new config("http://boruto:3000/");
	
	Usuario : (id) ->
		async = @q.defer();

		@http.get @config.BASE_URL + "usuario/#{id}"
		.success((data, status, headers, config) -> async.resolve {data : data , status : status})
		.error((data, status, headers, config ) -> async.resolve({data:data, status:status }))
		
		async.promise;

	Create : (data) ->
		async = @q.defer();

		@http.post @config.BASE_URL + "usuario", data 
		.success((data, status, headers, config) -> async.resolve {data : data , status : status})
		.error((data, status, headers, config ) -> async.resolve({data:data, status:status }))

		async.promise;

	Delete : (id) ->
		async = @q.defer();

		@http.Delete @config.BASE_URL + "usuario/#{id}", data 
		.success((data, status, headers, config) -> async.resolve {data : data , status : status})
		.error((data, status, headers, config ) -> async.resolve({data:data, status:status }))
		
		async.promise;

	Update : (data)->
		async = @q.defer();

		@http.put @config.BASE_URL + "usuario/#{data._id}", data 
		.success((data, status, headers, config) -> async.resolve {data : data , status : status})
		.error((data, status, headers, config ) -> async.resolve({data:data, status:status }))

		async.promise;

	Login : (data) ->
		async = @q.defer();
		
		@http.post @config.BASE_URL + "login", data 
		.success((data, status, headers, config) -> async.resolve {data : data , status : status})
		.error((data, status, headers, config ) -> async.resolve({data:data, status:status }))

		async.promise;

	Logout : () ->
		async = @q.defer();
		
		@http.get @config.BASE_URL + "logout"
		.success(
			(data, status, headers, config) -> async.resolve { data : data, status : status, headers : headers, config : config}
		).error(
			(data, status, headers, config) -> async.resolve { data : data, status : status, headers : headers, config : config}
			)

		async.promise;

	Search : (data)->
		async = @q.defer();

		@http.get(@config.BASE_URL + "usuario/buscar", { url : @config.BASE_URL + "usuario/buscar", method : 'GET', params : data })
		.success((data, status, headers, config) -> async.resolve {data : data , status : status})
		.error((data, status, headers, config ) -> async.resolve({data:data, status:status }))

		async.promise;

	Inactivo : (id)->
		async = @q.defer();

		@http.put(@config.BASE_URL + "usuario/#{id}/desactivado")
		.success((data, status, headers, config) -> async.resolve {data : data , status : status})
		.error((data, status, headers, config ) -> async.resolve({data:data, status:status }))
		
		async.promise;

	Activo : (id)->
		async = @q.defer();

		@http.put(@config.BASE_URL + "usuario/#{id}/activado")
		.success((data, status, headers, config) -> async.resolve {data : data , status : status})
		.error((data, status, headers, config ) -> async.resolve({data:data, status:status }))

		async.promise;

	