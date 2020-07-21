<?php

return [
    // ...
    'font_path' => public_path('assets//font/fonts'),
    'font_data' => [
        'examplefont' => [
            'R'  => 'ExampleFont-Regular.ttf',    // regular font
            'B'  => 'ExampleFont-Bold.ttf',       // optional: bold font
            'I'  => 'ExampleFont-Italic.ttf',     // optional: italic font
            'BI' => 'ExampleFont-Bold-Italic.ttf', // optional: bold-italic font
            'useOTL' => 0xFF,    // required for complicated langs like Persian, Arabic and Chinese
            'useKashida' => 75,  // required for complicated langs like Persian, Arabic and Chinese
            'unAGlyphs' => true,
        ]
    ]
    // ...
];
