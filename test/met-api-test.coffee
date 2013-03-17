MetApi = require "../lib/index"
should = require "should"

describe "Met Office API module", () ->	

	metApi = null

	afterEach () ->
		metApi = null

	describe "when instantiated", ->

		it "constructor should return a new instance of MetApi", () ->
			metApi = new MetApi("apikey")
			metApi.constructor.name.should.equal "MetApi"

		it "constructor should set api key", () ->
			metApi = new MetApi("apikey")
			metApi.apiKey.should.equal "apikey"

		it "constructor should throw error if api key parameter not a string", (done) ->
			(->new MetApi()).should.throw "apiKey is a required parameter"
			done()

	beforeEach () ->
		metApi = new MetApi("46fc7ec8-e920-4b07-8244-eab69debd27b")


	describe "_getLocationId", ->

		it "should exist", ->
			metApi._getLocationId.should.exist

	describe "_makeRequest", ->

		it "should exist", ->
			metApi._makeRequest.should.exist