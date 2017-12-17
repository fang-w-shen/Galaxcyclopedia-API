
class Rack::Attack

	Rack::Attack.cache.store = ActiveSupport::Cache::MemoryStore.new

	Rack::Attack.throttle('solarsystem/ip', limit: 30, period: 30.seconds) do |req|
		req.ip if req.path == '/solarsystem' || req.path == '/mercury' || req.path == '/venus' || req.path == '/earth' || req.path == '/mars' || req.path == '/jupiter' || req.path == '/uranus' || req.path == '/saturn' || req.path == '/neptune'
	end

	self.throttled_response = lambda do |env|
		now = Time.now
		match_data = env['rack.attack.match_data']

		headers = {
			'X-RateLimit-Limit' => match_data[:limit].to_s,
			'X-RateLimit-Remaining' => '0',
			'X-RateLimit-Reset' => (now + (match_data[:period] - now.to_i % match_data[:period])).to_s
		}

		[ 429, headers, ["Rate limit reached. Please wait 30 seconds."]]
	end
end