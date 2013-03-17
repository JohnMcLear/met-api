#46fc7ec8-e920-4b07-8244-eab69debd27b
noop = ->

module.exports = class MetApi
	constructor: (apiKey) ->
		if apiKey and typeof apiKey is "string"
			@apiKey = apiKey
		else
			throw new Error "apiKey is a required parameter"
		#@apiUrl = "http://datapoint.metoffice.gov.uk/public/data/val/wxobs/all/json/# {locationId}?res=hourly&key=#{@apiKey}"

	getForecast: (options = {}) ->

	_getLocationId: (location) ->

	_makeRequest: (url, callback) ->