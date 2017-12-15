// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap
//= require rails-ujs
//= require turbolinks
//= require_tree .



		function changeCurl() {
			var text = 'curl -X GET "https://galaxcyclopedia.herokuapp.com/solarsystem/?api_key={api_key}" \n  -H "accept: version.2.0.json" '
			$('#codesection').html(text)
		}
		function changeXHR() {
			var text = `var data = null;
var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === 4) {
    console.log(this.responseText);
  }
});

xhr.open("GET", `+ '"https://galaxcyclopedia.herokuapp.com/solarsystem/?api_key={api_key}");' +
`\nxhr.setRequestHeader("accept", "version.2.0.json");

xhr.send(data);`
			$('#codesection').html(text)
		}
		function changeAJAX() {
			var text = `var settings = {
  "async": true,
  "crossDomain": true,
  "url": ` + '"https://galaxcyclopedia.herokuapp.com/solarsystem/?api_key={api_key}",' +
  `\n  "method": "GET",
  "headers": {
    "accept": "version.2.0.json"
  }
}

$.ajax(settings).done(function (response) {
  console.log(response);
});`
			$('#codesection').html(text)
		}

		function changeRuby() {
			var text = `require 'uri'
require 'net/http'

url = ` + 'URI("https://galaxcyclopedia.herokuapp.com/solarsystem/?api_key={api_key}")'+

`\nhttp = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["accept"] = 'version.2.0.json'

response = http.request(request)
puts response.read_body`
			$('#codesection').html(text)
		}
		function changePython() {
			var text = `import http.client

conn = http.client.HTTPSConnection("galaxcyclopedia.herokuapp.com")

headers = {
    'accept': "version.2.0.json"
    }

conn.request("GET", "/solarsystem/?api_key={api_key}", headers=headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))`
			$('#codesection').html(text)
		}
		function changeC() {
			var text = 'var url = "https://galaxcyclopedia.herokuapp.com/solarsystem/?api_key={api_key}"'+
`\nvar client = new RestClient(url);
var request = new RestRequest(Method.GET);
request.AddHeader("accept", "version.2.0.json");
IRestResponse response = client.Execute(request);`
			$('#codesection').html(text)
		}

		function changeNode() {
			var text = `var request = require("request");

var options = { method: 'GET',
  url: 'https://galaxcyclopedia.herokuapp.com/solarsystem/',
  qs: { api_key: '{api_key}' },
  headers:
   { accept: 'version.2.0.json' } };

request(options, function (error, response, body) {
  if (error) throw new Error(error);

  console.log(body);
});`
			$('#codesection').html(text)
		}
		function changeJava() {
			var text = `OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
  .url("https://galaxcyclopedia.herokuapp.com/solarsystem/?api_key={api_key}")
  .get()
  .addHeader("accept", "version.2.0.json")
  .build();

Response response = client.newCall(request).execute();`
			$('#codesection').html(text)
		}
		function changeHTTP() {
			var text = `GET /solarsystem/?api_key={api_key} HTTP/1.1
Host: galaxcyclopedia.herokuapp.com
accept: version.2.0.json`
			$('#codesection').html(text)
		}
		var jsonPrettyPrint = {
		   replacer: function(match, pIndent, pKey, pVal, pEnd) {
		      var key = '<span class=json-key>';
		      var val = '<span class=json-value>';
		      var str = '<span class=json-string>';
		      var r = pIndent || '';
		      if (pKey)
		         r = r + key + pKey.replace(/[": ]/g, '') + '</span>: ';
		      if (pVal)
		         r = r + (pVal[0] == '"' ? str : val) + pVal + '</span>';
		      return r + (pEnd || '');
		      },
		   toHtml: function(obj) {
		      var jsonLine = /^( *)("[\w]+": )?("[^"]*"|[\w.+-]*)?([,[{])?$/mg;
		      return JSON.stringify(obj, null, 2)
		         .replace(/&/g, '&amp;').replace(/\\"/g, '&quot;')
		         .replace(/</g, '&lt;').replace(/>/g, '&gt;')
		         .replace(jsonLine, jsonPrettyPrint.replacer);
		      }
		   };
		function makeajaxcall() {

			var search = $('#basic-url').val();
			var settings = {
			  "async": true,
			  "crossDomain": true,
			  "url": "https://galaxcyclopedia.herokuapp.com/"+`${search}`,
			  "method": "GET",
			  "headers": {
			    "accept": "version.2.0.json"
			  }
			}

			$.ajax(settings).done(function (response) {

			  $('#exampleresponse').html(jsonPrettyPrint.toHtml(response));

			}).fail(()=>{
			  $('#exampleresponse').html(jsonPrettyPrint.toHtml({"Message": 'Invalid Request. Try Again.'}))
			});

		}

		$(window).on('keydown',(e)=>{
			if (e.keyCode == 13) {
				makeajaxcall();
			}
		})


		$(window).on("click",()=>{
			$('ol>li').each((index,item)=>{
				if (item && item.classList.value == 'active') {
					$('.scrollmenu > a.highlightedbar').removeClass('highlightedbar');
					$('.scrollmenu > a')[index].classList.add('highlightedbar');
				}

			})
			if (window.location.pathname != '/about') {
				$('ol>li').each((index,item)=>{
					if (item && item.classList.value == 'active') {
						$('.scrollmenu > a.highlightedbar').removeClass('highlightedbar');
					}
				})
			}

		})