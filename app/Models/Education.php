<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Education extends Model
{
    use HasFactory;

    protected $fillable = [
        'person_id', 'institution', 'degree', 'major', 'start_year', 'end_year', 'gpa', 'description'
    ];

    public function person()
    {
        return $this->belongsTo(Person::class);
    }
}