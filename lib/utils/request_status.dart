enum RequestState { loading, success, empty, error }

bool isLoading(RequestState value) => value == RequestState.loading;

bool isSuccess(RequestState value) => value == RequestState.success;

bool isEmpty(RequestState value) => value == RequestState.empty;

bool isError(RequestState value) => value == RequestState.error;
