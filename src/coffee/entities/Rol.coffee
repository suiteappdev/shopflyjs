class Rol
	constructor  : (q, http) ->
		@q = q;
		@http = http;
		@config = new config("http://boruto:3000/");

	List : () ->
		async = @q.defer();
		
		@http.get @config.BASE_URL + "rol"
		.success(
			(data, status, headers, config) -> async.resolve { data : data, status : status}
		).error(
			(data, status, headers, config) -> async.resolve { data : data, status : status}
			)


		async.promise;

	Rol : (id) ->
		async = @q.defer();

		@http.get @config.BASE_URL + "rol/#{id}"
		.success(
			(data, status, headers, config) -> async.resolve { data : data, status : status}
		).error(
			(data, status, headers, config) -> async.resolve { data : data, status : status}
			)


		async.promise;


	Create : (data) ->
		async = @q.defer();

		@http.post @config.BASE_URL + "rol", data 
		.success(
			(data, status, headers, config) -> async.resolve { data : data, status : status}
		).error(
			(data, status, headers, config) -> async.resolve { data : data, status : status}
			)

		async.promise;

	Delete : (id) ->
		async = @q.defer();

		@http.delete @config.BASE_URL + "rol/#{id}" 
		.success(
			(data, status, headers, config) -> async.resolve { data : data, status : status}
		).error(
			(data, status, headers, config) -> async.resolve { data : data, status : status}
			)

		async.promise;

	Update : (data)->
		async = @q.defer();

		@http.put @config.BASE_URL + "rol/#{data._id}", data 
		.success(
			(data, status, headers, config) -> async.resolve { data : data, status : status}
		).error(
			(data, status, headers, config) -> async.resolve { data : data, status : status}
			)

		async.promise;

	Inactivo : (id)->
		async = @q.defer();

		@http.put(@config.BASE_URL + "rol/#{id}/desactivado")
		.success(
			(data, status, headers, config) -> async.resolve { data : data, status : status}
		).error(
			(data, status, headers, config) -> async.resolve { data : data, status : status}
			)
		
		async.promise;

	Activo : (id)->
		async = @q.defer();

		@http.put(@config.BASE_URL + "rol/#{id}/activado")
		.success(
			(data, status, headers, config) -> async.resolve { data : data, status : status}
		).error(
			(data, status, headers, config) -> async.resolve { data : data, status : status}
			)

		async.promise;
