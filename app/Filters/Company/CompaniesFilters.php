<?php

namespace App\Filters\Company;

use App\Filters\FiltersAbstract;
use App\Models\Company;

use App\Filters\Company\{
    PacketFilter
};

class CompaniesFilters extends FiltersAbstract
{
    /**
     * Default course filters.
     *
     * @var array
     */
    protected $filters = [
        'name' => PacketFilter::class,
        
    ];

    public static function mappings()
    {
        $map = [
            'ime' => [
                'asc' => 'asc',
                'desc' => 'desc',
            ],
            'value' => [
                'asc' => 'asc',
                'desc' => 'desc',
            ],
           
        ];

        // if (auth()->check()) {
        //     $map = array_merge($map, [
        //         'started' => [
        //             'true' => 'Started',
        //             'false' => 'Not started',
        //         ]
        //     ]);
        // }

        return $map;
    }
}
