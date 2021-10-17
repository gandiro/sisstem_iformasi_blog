<?php

namespace App\Models;


class Post 
{
    private static $blog_post = [
        [
            "title" => "Judul Post Pertama",
            "slug" => "judul-post-pertama",
            "author" => "Gandi Robet",
            "body" => "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Impedit obcaecati aut, facere vitae in officiis earum non exercitationem, incidunt eligendi eaque ea nam, quam praesentium temporibus? Nulla consequatur minus pariatur explicabo placeat suscipit qui esse, autem nobis accusamus maxime tempora quas maiores officia eos cum facilis in aliquam earum iste temporibus quaerat. Nemo officia suscipit deserunt voluptas accusantium incidunt eius quaerat, neque ducimus, aliquam tempora veritatis in officiis saepe molestias odit vitae hic beatae qui a. Possimus quibusdam voluptatibus odit!"
        ],
        [
            "title" => "Judul Post Kedua",
            "slug" => "judul-post-kedua",
            "author" => "Sentono Jaya",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus vitae quia, sequi beatae necessitatibus sed voluptatibus nostrum consequatur autem ullam omnis. Tempora veniam vero, eveniet eum dolor sed saepe accusantium impedit corrupti itaque fugit doloribus ipsum vel accusamus quas quia iure voluptatum incidunt voluptate autem molestiae aspernatur! Voluptatum voluptate culpa commodi nobis natus, ipsam quam consequuntur voluptatem accusamus reiciendis tempore vitae molestias itaque enim, necessitatibus sunt beatae reprehenderit placeat fugiat, quod illum provident saepe odio. Quam vel, laborum saepe voluptatum expedita maxime? Beatae, voluptatum exercitationem a reprehenderit voluptates consequuntur impedit corrupti sit harum tenetur facere ea quaerat eligendi molestias! Minima!"
        ],
    ];

    public static function all() {
        return collect(self::$blog_post);
    }

    public static function find($slug) {
        $posts = static::all();
        return $posts->firstWhere('slug', $slug);
    }
}

Post::create([
    'title' => 'Judul Pertama',
    'category_id' => 1,
    'slug' => 'judul-pertama',
    'excerpt' => 'Lorem',
    'body' => 'Lorem'
])