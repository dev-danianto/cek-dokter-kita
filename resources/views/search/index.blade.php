<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Professional Search</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">
                        <h4>🔍 Professional Search</h4>
                        <p class="mb-0">Search people by their background, education, and certifications</p>
                    </div>
                    <div class="card-body">
                        @if (session('error'))
                            <div class="alert alert-danger">{{ session('error') }}</div>
                        @endif

                        <form action="{{ route('search.results') }}" method="GET">
                            <div class="input-group">
                                <input type="text" name="query" class="form-control"
                                    placeholder="Search by name, university, certification, skill..."
                                    value="{{ request('query') }}">
                                <button class="btn btn-primary" type="submit">Search</button>
                            </div>
                        </form>

                        <div class="mt-3">
                            <small class="text-muted">
                                <strong>Try searching for:</strong><br>
                                • Names: "John", "Jane"<br>
                                • Universities: "Stanford", "ITB", "UI"<br>
                                • Certifications: "AWS", "Google", "Microsoft"<br>
                                • Skills: "Data Science", "Cybersecurity", "Machine Learning"
                            </small>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
