<?php

namespace App\helpers;

class Response
{
    public static function json($data, int $statusCode = 200): void
    {
        http_response_code($statusCode);
        header('Content-Type: application/json');
        echo json_encode([
            'success' => true,
            'data' => $data,
        ]);
    }

    public static function error(string $message, int $statusCode = 400, $errors = null): void
    {
        http_response_code($statusCode);
        header('Content-Type: application/json');
        $response = [
            'success' => false,
            'message' => $message,
        ];
        if ($errors !== null) {
            $response['errors'] = $errors;
        }
        echo json_encode($response);
    }
}
