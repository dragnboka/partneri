<?php

namespace App\Filters\Packet;

use App\Filters\FiltersAbstract;
use App\Models\Packet;

use App\Filters\Packet\{
    NameFilter,
    ValueFilter
};

class SubjectFilters extends FiltersAbstract
{
    /**
     * Default course filters.
     *
     * @var array
     */
    protected $filters = [
        'ime' => NameFilter::class,
        'value' => ValueFilter::class,
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
