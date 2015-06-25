class Credito 
	constructor  : (q, http) ->
		@q = q;
		@http = http;
		@config = new config("http://boruto:3000/");

	List : () ->
		async = @q.defer();

		@http.get @config.BASE_URL + "credito"
		.success(
			(data) -> async.resolve data
		)

		async.promise;

	Credito : (id) ->
		async = @q.defer();

		@http.get @config.BASE_URL + "credito/#{id}"
		.success(
			(data) -> async.resolve data
		)

		async.promise;

	Create : (data) ->
		async = @q.defer();

		@http.post @config.BASE_URL + "credito", data 
		.success(
			(data) -> async.resolve data

		)

		async.promise;

	Delete : (id) ->
		async = @q.defer();

		@http.Delete @config.BASE_URL + "credito/#{id}", data 
		.success(
			(data) -> async.resolve data
		)

		async.promise;

	Update : (data)->
		async = @q.defer();

		@http.put @config.BASE_URL + "credito/#{id}", data 
		.success(
			(data) -> async.resolve data
		)

		async.promise;