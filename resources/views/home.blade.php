<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cek Dokter Kita by Dani Anto Pakpahan</title>

    <!-- Styles / Scripts -->
    @vite('resources/css/app.css')
</head>

<body>
    <div class="container mx-auto flex justify-center items-center px-2 sm:px-4 py-4 sm:py-6 overflow-x-hidden">
        <div class="text-center w-full max-w-[90vw] sm:max-w-3xl">
            <img src="{{ asset('images/search-images.png') }}" alt="Search Image"
                class="w-full max-w-[200px] sm:max-w-[300px] lg:max-w-[400px] h-auto mx-auto">

            <!-- Search Bar -->
            <form action="{{ route('search.results') }}" method="GET"
                class="w-full max-w-[85vw] sm:max-w-sm lg:max-w-lg mx-auto">
                <div
                    class="flex items-center bg-white border border-gray-300 rounded-full px-2 sm:px-4 py-1.5 sm:py-2 shadow-sm hover:shadow-md transition">
                    <input type="text" name="query" placeholder="Cari Dokter Anda"
                        class="flex-grow bg-transparent focus:outline-none text-gray-700 text-sm sm:text-base" />
                    <button type="submit" class="ml-1 sm:ml-2">
                        <div class="bg-blue-100 p-1 sm:p-1.5 rounded-full">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 sm:h-5 sm:w-5 text-blue-600"
                                fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd"
                                    d="M12.9 14.32a8 8 0 111.41-1.41l4.1 4.1a1 1 0 01-1.42 1.42l-4.1-4.1zM14 8a6 6 0 11-12 0 6 6 0 0112 0z"
                                    clip-rule="evenodd" />
                            </svg>
                        </div>
                    </button>
                </div>
            </form>
        </div>
    </div>

</body>

</html>
