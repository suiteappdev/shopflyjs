class Sucursal
	constructor  : (q, http) ->
		@q = q;
		@http = http;
		@config = new config("http://boruto:3000/");

	List : () ->
		async = @q.defer();
		
		@http.get @config.BASE_URL + "sucursal"
		.success(
			(data) -> async.resolve data
		)

		async.promise;

	Sucursal : (id) ->
		async = @q.defer();

		@http.get @config.BASE_URL + "sucursal/#{id}"
		.success(
			(data) -> async.resolve data
		)

		async.promise;

	Create : (data) ->
		async = @q.defer();

		@http.post @config.BASE_URL + "sucursal", data 
		.success(
			(data) -> async.resolve data

		)

		async.promise;

	Delete : (id) ->
		async = @q.defer();

		@http.Delete @config.BASE_URL + "sucursal/#{id}", data 
		.success(
			(data) -> async.resolve data
		)

		async.promise;

	Update : (data)->
		async = @q.defer();

		@http.put @config.BASE_URL + "sucursal/#{id}", data 
		.success(
			(data) -> async.resolve data
		)

		async.promise;