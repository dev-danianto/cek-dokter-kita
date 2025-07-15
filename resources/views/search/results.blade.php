<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hasil Pencarian untuk "{{ $query }}"</title>

    <!-- Styles / Scripts -->
    @vite('resources/css/app.css')
</head>

<body class="bg-gray-50">
    <div class="container mx-auto px-4 py-8">
        <!-- Logo dan Search Bar -->
        <div class="text-center w-full max-w-3xl mx-auto mb-8">
            <a href="{{ url('/') }}">
                <img src="{{ asset('images/search-images.png') }}" alt="Search Image"
                    class="w-full max-w-[150px] sm:max-w-[200px] h-auto mx-auto mb-4">
            </a>

            <!-- Search Bar -->
            <form action="{{ route('search.results') }}" method="GET" class="w-full max-w-lg mx-auto">
                <div
                    class="flex items-center bg-white border border-gray-300 rounded-full px-4 py-2 shadow-sm hover:shadow-md transition">
                    <input type="text" name="query" placeholder="Cari Dokter Anda"
                        class="flex-grow bg-transparent focus:outline-none text-gray-700 text-base"
                        value="{{ $query ?? '' }}" />
                    <button type="submit" class="ml-2">
                        <div class="bg-blue-100 p-1.5 rounded-full hover:bg-blue-200 transition">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-blue-600" fill="currentColor"
                                viewBox="0 0 20 20">
                                <path fill-rule="evenodd"
                                    d="M12.9 14.32a8 8 0 111.41-1.41l4.1 4.1a1 1 0 01-1.42 1.42l-4.1-4.1zM14 8a6 6 0 11-12 0 6 6 0 0112 0z"
                                    clip-rule="evenodd" />
                            </svg>
                        </div>
                    </button>
                </div>
            </form>
        </div>

        <!-- Bagian Hasil Pencarian -->
        <div class="w-full max-w-5xl mx-auto">
            @if (!empty($query))
                <!-- Info Hasil Pencarian -->
                <div class="mb-6 px-2">
                    <h2 class="text-xl font-semibold text-gray-800">Hasil pencarian untuk: "{{ $query }}"</h2>
                    <p class="text-gray-600">Ditemukan {{ $results->total() }} orang</p>
                </div>

                <!-- Kartu Hasil -->
                @if ($results->count() > 0)
                    <div class="space-y-6">
                        @foreach ($results as $person)
                            <div
                                class="bg-white border border-gray-200 rounded-lg shadow-sm overflow-hidden hover:shadow-lg transition-shadow duration-300">
                                <div class="p-6 md:p-8">
                                    <div class="grid grid-cols-1 md:grid-cols-5 gap-8">
                                        <!-- Info Personal (Kolom Kiri) -->
                                        <div
                                            class="md:col-span-2 border-b md:border-b-0 md:border-r pb-6 md:pb-0 md:pr-8">
                                            <h3 class="text-2xl font-bold text-gray-900">{{ $person->name }}</h3>
                                            <p class="text-lg text-blue-600 font-medium mt-1">{{ $person->job_title }}
                                            </p>
                                            @if ($person->company)
                                                <p class="text-gray-700">{{ $person->company }}</p>
                                            @endif

                                            <div class="mt-6 space-y-2 text-sm text-gray-600">
                                                <p class="flex items-center"><span class="w-5">📧</span>
                                                    {{ $person->email }}</p>
                                                @if ($person->city)
                                                    <p class="flex items-center"><span class="w-5">📍</span>
                                                        {{ $person->city }}</p>
                                                @endif
                                            </div>

                                            @if ($person->bio)
                                                <p
                                                    class="mt-6 text-sm text-gray-500 italic border-l-4 border-gray-200 pl-4">
                                                    {{ $person->bio }}
                                                </p>
                                            @endif
                                        </div>

                                        <!-- Pendidikan & Sertifikasi (Kolom Kanan) -->
                                        <div class="md:col-span-3 space-y-6">
                                            <!-- Pendidikan -->
                                            <div>
                                                <h4 class="text-lg font-semibold text-gray-700 mb-3">Pendidikan</h4>
                                                <div class="space-y-3">
                                                    @forelse ($person->education as $edu)
                                                        <div>
                                                            <p class="font-semibold text-gray-800">{{ $edu->degree }}
                                                                - {{ $edu->major }}</p>
                                                            <p class="text-sm text-gray-600">{{ $edu->institution }}
                                                            </p>
                                                        </div>
                                                    @empty
                                                        <p class="text-sm text-gray-500">Tidak ada informasi pendidikan.
                                                        </p>
                                                    @endforelse
                                                </div>
                                            </div>

                                            <!-- Sertifikasi -->
                                            <div>
                                                <h4 class="text-lg font-semibold text-gray-700 mb-3">Sertifikasi</h4>
                                                <div class="space-y-3">
                                                    @forelse ($person->certifications as $cert)
                                                        <div>
                                                            <p class="font-semibold text-gray-800">{{ $cert->name }}
                                                            </p>
                                                            <p class="text-sm text-gray-600">
                                                                {{ $cert->issuing_organization }}</p>
                                                        </div>
                                                    @empty
                                                        <p class="text-sm text-gray-500">Tidak ada informasi
                                                            sertifikasi.</p>
                                                    @endforelse
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>

                    <!-- Pagination -->
                    <div class="mt-8">
                        {{ $results->appends(['query' => $query])->links() }}
                    </div>
                @else
                    <div class="text-center bg-white p-8 rounded-lg shadow-md border">
                        <h3 class="text-2xl font-semibold text-gray-700">Tidak ada hasil ditemukan</h3>
                        <p class="text-gray-500 mt-2">Coba gunakan kata kunci lain untuk menemukan hasil yang Anda cari.
                        </p>
                    </div>
                @endif
            @endif
        </div>
    </div>
</body>

</html>
