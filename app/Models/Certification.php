<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Certification extends Model
{
    use HasFactory;

    protected $fillable = [
        'person_id', 'name', 'issuing_organization', 'issue_date', 'expiry_date', 
        'credential_id', 'credential_url', 'description'
    ];

    protected $casts = [
        'issue_date' => 'date',
        'expiry_date' => 'date',
    ];

    public function person()
    {
        return $this->belongsTo(Person::class);
    }
}