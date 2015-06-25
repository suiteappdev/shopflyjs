class lineaPrecio 
	constructor  : (q, http) ->
		@q = q;
		@http = http;
		@config = new config("http://boruto:3000/");

	List : () ->
		async = @q.defer();

		@http.get @config.BASE_URL + "lineaPrecio"
		.success(
			(data) -> async.resolve data
		)

		async.promise;

	lineaPrecio : (id) ->
		async = @q.defer();

		@http.get @config.BASE_URL + "lineaPrecio/#{id}"
		.success(
			(data) -> async.resolve data
		)

		async.promise;

	Create : (data) ->
		async = @q.defer();

		@http.post @config.BASE_URL + "lineaPrecio", data 
		.success(
			(data) -> async.resolve data

		)

		async.promise;

	Delete : (id) ->
		async = @q.defer();

		@http.Delete @config.BASE_URL + "lineaPrecio/#{id}", data 
		.success(
			(data) -> async.resolve data
		)

		async.promise;

	Update : (data)->
		async = @q.defer();

		@http.put @config.BASE_URL + "lineaPrecio/#{id}", data 
		.success(
			(data) -> async.resolve data
		)

		async.promise;