class tipoCliente 
	constructor  : (q, http) ->
		@q = q;
		@http = http;
		@config = new config("http://boruto:3000/");


	List : () ->
		async = @q.defer();

		@http.get  @config.BASE_URL + "tipoCliente"
		.success(
			(data) -> async.resolve data
		)

		async.promise;

	tipoCliente : (id) ->
		async = @q.defer();

		@http.get @config.BASE_URL + "tipoCliente/#{id}"
		.success(
			(data) -> async.resolve data
		)

		async.promise;

	Create : (data) ->
		async = @q.defer();

		@http.post @config.BASE_URL + "tipoCliente", data 
		.success(
			(data) -> async.resolve data

		)

		async.promise;

	Delete : (id) ->
		async = @q.defer();

		@http.Delete  @config.BASE_URL + "tipoCliente/#{id}", data 
		.success(
			(data) -> async.resolve data
		)

		async.promise;

	Update : (data)->
		async = @q.defer();

		@http.put  @config.BASE_URL + "tipoCliente/#{id}", data 
		.success(
			(data) -> async.resolve data
		)

		async.promise;