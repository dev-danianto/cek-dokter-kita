<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Person;

class SearchController extends Controller
{
    public function index()
    {
        return view('search.index');
    }

    public function results(Request $request)
    {
        $query = $request->input('query');
        
        if (empty($query)) {
            return redirect()->route('search')->with('error', 'Please enter a search term');
        }

        // Search people with their education and certifications
        $results = Person::with(['education', 'certifications'])
            ->where('name', 'LIKE', "%{$query}%")
            ->orWhere('email', 'LIKE', "%{$query}%")
            ->orWhere('job_title', 'LIKE', "%{$query}%")
            ->orWhere('company', 'LIKE', "%{$query}%")
            ->orWhere('city', 'LIKE', "%{$query}%")
            ->orWhere('bio', 'LIKE', "%{$query}%")
            // Search in education
            ->orWhereHas('education', function($q) use ($query) {
                $q->where('institution', 'LIKE', "%{$query}%")
                  ->orWhere('degree', 'LIKE', "%{$query}%")
                  ->orWhere('major', 'LIKE', "%{$query}%");
            })
            // Search in certifications
            ->orWhereHas('certifications', function($q) use ($query) {
                $q->where('name', 'LIKE', "%{$query}%")
                  ->orWhere('issuing_organization', 'LIKE', "%{$query}%");
            })
            ->paginate(10);

        return view('search.results', compact('results', 'query'));
    }
}