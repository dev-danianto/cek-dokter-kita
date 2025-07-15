<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Person;

class SearchController extends Controller
{
    public function index()
    {
        return view('home'); 
    }

    public function results(Request $request)
    {
        $query = $request->input('query');

        // Mulai membangun query
        $resultsQuery = Person::with(['education', 'certifications']);

        if (!empty($query)) {
            // Jika ada query, terapkan filter pencarian
            $resultsQuery->where(function ($q) use ($query) {
                $q->where('name', 'LIKE', "%{$query}%")
                  ->orWhere('email', 'LIKE', "%{$query}%")
                  ->orWhere('job_title', 'LIKE', "%{$query}%")
                  ->orWhere('company', 'LIKE', "%{$query}%")
                  ->orWhere('city', 'LIKE', "%{$query}%")
                  ->orWhere('bio', 'LIKE', "%{$query}%")
                  ->orWhereHas('education', function($subQ) use ($query) {
                      $subQ->where('institution', 'LIKE', "%{$query}%")
                           ->orWhere('degree', 'LIKE', "%{$query}%")
                           ->orWhere('major', 'LIKE', "%{$query}%");
                  })
                  ->orWhereHas('certifications', function($subQ) use ($query) {
                      $subQ->where('name', 'LIKE', "%{$query}%")
                           ->orWhere('issuing_organization', 'LIKE', "%{$query}%");
                  });
            });
        } else {
            // Jika query kosong, pastikan tidak ada hasil yang dikembalikan
            $resultsQuery->whereRaw('1 = 0');
        }

        $results = $resultsQuery->paginate(10);

        return view('search.results', compact('results', 'query'));
    }
}
