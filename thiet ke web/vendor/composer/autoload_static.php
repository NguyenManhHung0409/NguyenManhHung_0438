<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit0fde828886e9bbe3336d92f274385d3a
{
    public static $files = array (
        'cdbda8dc1e993771e3a33fb1a88df39e' => __DIR__ . '/../..' . '/app/Route.php',
        '11ae0977a068b163cab6ef3117ae4a1b' => __DIR__ . '/../..' . '/config/database.php',
    );

    public static $prefixLengthsPsr4 = array (
        'A' => 
        array (
            'App\\' => 4,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'App\\' => 
        array (
            0 => __DIR__ . '/../..' . '/app',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit0fde828886e9bbe3336d92f274385d3a::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit0fde828886e9bbe3336d92f274385d3a::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInit0fde828886e9bbe3336d92f274385d3a::$classMap;

        }, null, ClassLoader::class);
    }
}
