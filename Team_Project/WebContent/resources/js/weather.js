const API_KEY = "2f56e0eca22d5ff3b63420e13297030b";
const COORDS = "coords";

function getWeather(lat, lng) {
	var cities = new Array("location","seoul", "daegu", "daejeon", "busan", "incheon", "ulsan", "gwangju", "jeju");
	
	for(var i = 0; i < cities.length; i++){
		var city = cities[i];
		console.log(city);
		
		if(city == "location") {
			fetch(
				`https://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lng}&appid=${API_KEY}&units=metric`
			).then(function(response) {
				return response.json();
			}).then(function(json){
				console.log(json);
				var location = document.querySelector('.location');
				var currentTemp = document.querySelector('.current-temp');
				var feelsLike = document.querySelector('.feels-like');
				var minTemp = document.querySelector('.min-temp');
				var maxTemp = document.querySelector('.max-temp');
				var icon = document.querySelector('.icon');
				var weatherStatus = document.querySelector('.weather-status');
				var weathers = json.weather[0];
				
				location.append(`${json.name}`);
				currentTemp.append(`${json.main.temp}`);
				feelsLike.append(`${json.main.feels_like}`);
				minTemp.append(`${json.main.temp_min}`);
				maxTemp.append(`${json.main.temp_max}`);
				icon.innerHTML = `<img src='https://openweathermap.org/img/wn/${weathers.icon}@2x.png'>`;
				weatherStatus.append(`${weathers.main}`);
			});
		}
		else if(city != "location"){
			fetch(
			`https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=${API_KEY}&units=metric`
			).then(function(response) {
				return response.json();
			}).then(function(json){
				console.log(json);
				var currentTemp = document.querySelector('.' + city + '_current-temp');
				var feelsLike = document.querySelector('.' + city + '_feels-like');
				var minTemp = document.querySelector('.' + city + '_min-temp');
				var maxTemp = document.querySelector('.' + city + '_max-temp');
				var icon = document.querySelector('.' + city + '_icon');
				var weatherStatus = document.querySelector('.' + city + '_weather-status');
				var weathers = json.weather[0];
				
				currentTemp.append(`${json.main.temp}`);
				feelsLike.append(`${json.main.feels_like}`);
				minTemp.append(`${json.main.temp_min}`);
				maxTemp.append(`${json.main.temp_max}`);
				icon.innerHTML = `<img src='https://openweathermap.org/img/wn/${weathers.icon}@2x.png'>`;
				weatherStatus.append(`${weathers.main}`);
			});
		}
	}	
}

function saveCoords(coordsObj) {
	localStorage.setItem(COORDS,JSON.stringify(coordsObj));
}

function handleGeoSuccess(position) {
	const latitude = position.coords.latitude;
	const longitude = position.coords.longitude;
	const coordsObj = {
		latitude,
		longitude
	};
	saveCoords(coordsObj);
	getWeather(latitude, longitude);
}

function handleGeoError() {
	console.log("Can't access geo location");
}

function askForCoords(){ 
	navigator.geolocation.getCurrentPosition(handleGeoSuccess, handleGeoError);
}

function loadCoords() {
	const loadedCoords = localStorage.getItem(COORDS);
	if(loadedCoords === null) {
		askForCoords();
	}
	else {
		const parsedCoords = JSON.parse(loadedCoords);
		getWeather(parsedCoords.latitude, parsedCoords.longitude);
	}
}

function init() {
	loadCoords();
}

init();
