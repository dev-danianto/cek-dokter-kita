<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>People Search Results</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-12">
                <!-- Search Box -->
                <div class="mb-4">
                    <form action="{{ route('search.results') }}" method="GET">
                        <div class="input-group">
                            <input type="text" name="query" class="form-control"
                                placeholder="Search people, education, certifications..." value="{{ $query }}">
                            <button class="btn btn-primary" type="submit">Search</button>
                        </div>
                    </form>
                </div>

                <!-- Results Info -->
                <div class="mb-3">
                    <h4>Search Results for: "{{ $query }}"</h4>
                    <p>Found {{ $results->total() }} people</p>
                </div>

                <!-- Results -->
                @if ($results->count() > 0)
                    <div class="row">
                        @foreach ($results as $person)
                            <div class="col-md-12 mb-4">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <h5 class="card-title">{{ $person->name }}</h5>
                                                <p class="card-text">
                                                    <strong>{{ $person->job_title }}</strong>
                                                    @if ($person->company)
                                                        <br>{{ $person->company }}
                                                    @endif
                                                </p>

                                                <p class="card-text">
                                                    <small class="text-muted">📧 {{ $person->email }}</small><br>
                                                    @if ($person->phone)
                                                        <small class="text-muted">📞 {{ $person->phone }}</small><br>
                                                    @endif
                                                    @if ($person->city)
                                                        <small class="text-muted">📍 {{ $person->city }}</small>
                                                    @endif
                                                </p>

                                                @if ($person->bio)
                                                    <p class="card-text">
                                                        <small>{{ $person->bio }}</small>
                                                    </p>
                                                @endif
                                            </div>

                                            <div class="col-md-4">
                                                <h6 class="text-primary">🎓 Education</h6>
                                                @if ($person->education->count() > 0)
                                                    @foreach ($person->education as $edu)
                                                        <div class="mb-2">
                                                            <strong>{{ $edu->degree }}</strong> in
                                                            {{ $edu->major }}<br>
                                                            <small class="text-muted">{{ $edu->institution }}
                                                                ({{ $edu->start_year }}-{{ $edu->end_year ?? 'Present' }})</small>
                                                            @if ($edu->gpa)
                                                                <small class="text-muted">- GPA:
                                                                    {{ $edu->gpa }}</small>
                                                            @endif
                                                        </div>
                                                    @endforeach
                                                @else
                                                    <small class="text-muted">No education information</small>
                                                @endif
                                            </div>

                                            <div class="col-md-4">
                                                <h6 class="text-success">🏆 Certifications</h6>
                                                @if ($person->certifications->count() > 0)
                                                    @foreach ($person->certifications as $cert)
                                                        <div class="mb-2">
                                                            <strong>{{ $cert->name }}</strong><br>
                                                            <small
                                                                class="text-muted">{{ $cert->issuing_organization }}</small><br>
                                                            <small
                                                                class="text-muted">{{ $cert->issue_date->format('M Y') }}
                                                                @if ($cert->expiry_date)
                                                                    - {{ $cert->expiry_date->format('M Y') }}
                                                                @endif
                                                            </small>
                                                        </div>
                                                    @endforeach
                                                @else
                                                    <small class="text-muted">No certifications</small>
                                                @endif
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>

                    <!-- Pagination -->
                    <div class="d-flex justify-content-center">
                        {{ $results->appends(['query' => $query])->links() }}
                    </div>
                @else
                    <div class="alert alert-info">
                        <h5>No people found</h5>
                        <p>Try searching with different keywords like names, universities, certifications, or skills.
                        </p>
                    </div>
                @endif
            </div>
        </div>
    </div>
</body>

</html>
