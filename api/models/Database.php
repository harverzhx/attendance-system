<?php

namespace App\models;

use App\config\Database as DbConnection;

class Database
{
    protected static function getDb(): \PDO
    {
        return DbConnection::getInstance()->getConnection();
    }

    public static function validateContactNumber(?string $number): ?string
    {
        if (empty($number)) return null;

        $cleaned = preg_replace('/[\s\-\(\)]/', '', $number);

        if (!preg_match('/^(?:\+63|0)?9\d{9}$/', $cleaned)) {
            return 'Please enter a valid Philippine contact number (e.g. +63 9xxxxxxxxx or 09xxxxxxxxx).';
        }

        return null;
    }

    public static function validateEmail(?string $email): ?string
    {
        if (empty($email)) return null;

        if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            return 'Please enter a valid email address.';
        }

        $domain = substr(strrchr($email, "@"), 1);
        if (!preg_match('/\.[a-zA-Z]{2,}$/', $domain)) {
            return 'Please enter a valid email address.';
        }

        try {
            $records = @dns_get_record($domain, DNS_MX);
            if (empty($records)) {
                $records = @dns_get_record($domain, DNS_A);
            }
            if (empty($records)) {
                $records = @dns_get_record($domain, DNS_AAAA);
            }
            if (empty($records)) {
                $records = @dns_get_record($domain, DNS_CNAME);
            }
            if (empty($records)) {
                $records = @dns_get_record($domain, DNS_NS);
            }
            if (empty($records)) {
                return 'Please enter a valid email address. Domain does not exist.';
            }
        } catch (\Throwable $e) {
            // DNS check unavailable, allow if format is valid
        }

        return null;
    }

    public static function toProperCase(string $str): string
    {
        return preg_replace_callback('/\w\S*/', function($m) {
            return ucfirst(strtolower($m[0]));
        }, $str);
    }
}
