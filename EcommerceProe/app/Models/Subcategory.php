<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Subcategory extends Model
{
    use HasFactory;
    protected $fillable = ['id','name','description','status','img','cat_id'];

    public function category(){
        return $this->belongsTo(Category::class, 'cat_id');
    }
}
