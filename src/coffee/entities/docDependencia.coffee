class DocDependencia
	constructor  : (q, http) ->
		@q = q;
		@http = http;
		@config = new config("http://boruto:3000/");

	List : () ->
		async = @q.defer();
		
		@http.get @config.BASE_URL + "docdependencia"
		.success(
			(data, status, headers, config) -> async.resolve { data : data, status : status}
		).error(
			(data, status, headers, config) -> async.resolve { data : data, status : status}
			)

		async.promise;

	DocDependencia : (id) ->
		async = @q.defer();

		@http.get @config.BASE_URL + "docdependencia/#{id}"
		.success(
			(data, status, headers, config) -> async.resolve { data : data, status : status}
		).error(
			(data, status, headers, config) -> async.resolve { data : data, status : status}
			)

		async.promise;

	Create : (data) ->
		async = @q.defer();

		@http.post @config.BASE_URL + "docdependencia", data 
		.success(
			(data, status, headers, config) -> async.resolve { data : data, status : status}
		).error(
			(data, status, headers, config) -> async.resolve { data : data, status : status}
			)

		async.promise;

	Delete : (id) ->
		async = @q.defer();

		@http.Delete @config.BASE_URL + "docdependencia/#{id}", data 
		.success(
			(data, status, headers, config) -> async.resolve { data : data, status : status}
		).error(
			(data, status, headers, config) -> async.resolve { data : data, status : status}
			)
		
		async.promise;

	Update : (data)->
		async = @q.defer();

		@http.put @config.BASE_URL + "docdependencia/#{id}", data 
		.success(
			(data, status, headers, config) -> async.resolve { data : data, status : status}
		).error(
			(data, status, headers, config) -> async.resolve { data : data, status : status}
			)

		async.promise;