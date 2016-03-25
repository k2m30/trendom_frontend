use Rack::Static,
    urls: %w(/img /js /css /fonts),
    root: 'public'

run lambda { |env|
  [
      200,
      {
          'Content-Type'  => 'text/html',
          'Cache-Control' => 'public, max-age=8'
      },
      File.open('public/index.html', File::RDONLY)
  ]
}