class Empresa
	constructor  : (q, http) ->
		@q = q;
		@http = http;
		@config = new config("http://boruto:3000/");

	List : () ->
		async = @q.defer();
		
		@http.get @config.BASE_URL + "empresa"
		.success((data, status, headers, config) -> async.resolve {data :data , status : status})
		.error((data, status, headers, config) -> async.resolve {data :data , status : status})
		
		async.promise;

	Empresa : (id) ->
		async = @q.defer();

		@http.get @config.BASE_URL + "empresa/#{id}"
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

		@http.put @config.BASE_URL + "empresa/#{id}", data 
		.success((data, status, headers, config) -> async.resolve {data :data , status : status})
		.error((data, status, headers, config) -> async.resolve {data :data , status : status})

		async.promise;