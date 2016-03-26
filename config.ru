use Rack::Static,
    urls: %w(/img /js /css /fonts),
    root: 'public',
    index: 'index.html'

use Rack::CommonLogger
use Rack::Reloader
run Rack::File.new('public')