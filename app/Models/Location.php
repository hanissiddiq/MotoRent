<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Location extends Model
{
     use HasFactory;

    protected $fillable = [
        'loan_id',
        'latitude',
        'longitude',
        'recorded_at',
    ];

    public function loan()
    {
        return $this->belongsTo(Loan::class);
    }
}
