use Rack::Static,
  :urls => ["/imgs", "/js", "/css"],
  :root => "public"

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('public/board.html', File::RDONLY)
  ]
}