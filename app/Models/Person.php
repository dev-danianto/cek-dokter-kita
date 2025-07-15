<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Person extends Model
{
    use HasFactory;

    protected $fillable = [
        'name', 'email', 'phone', 'job_title', 'company', 'city', 'bio', 'birth_date'
    ];

    protected $casts = [
        'birth_date' => 'date',
    ];

    public function education()
    {
        return $this->hasMany(Education::class);
    }

    public function certifications()
    {
        return $this->hasMany(Certification::class);
    }
}