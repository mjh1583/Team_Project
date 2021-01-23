const API_KEY = "2f56e0eca22d5ff3b63420e13297030b";
const COORDS = "coords";

function getWeather(lat, lng) {
		fetch(
			`https://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lng}&appid=${API_KEY}&units=metric`
		).then(function(response) {
			return response.json();
		}).then(function(json){
			console.log(json);
			/*const temperature = json.main.temp;
			const place = json.name;
			const weathers = json.weather[0];
			const weatherIcon_src = `https://openweathermap.org/img/wn/${weathers.icon}@2x.png`;
			var img = document.getElementById('current-weather-icon');
			img.attr("src", weatherIcon_src);
			jQuery('#current-weather-icon').attr("src", weatherIcon_src);
			weather.innerText = `${temperature} @ ${place} @ ${weathers.main} @ ${weatherIcon_src}`;*/
			
			const location = document.querySelector('.location');
			const currentTemp = document.querySelector('.current-temp');
			const feelsLike = document.querySelector('.feels-like');
			const minTemp = document.querySelector('.min-temp');
			const maxTemp = document.querySelector('.max-temp');
			const icon = document.querySelector('.icon');
			const weatherStatus = document.querySelector('.weather-status');
			
			const weathers = json.weather[0];
			
			location.append(`${json.name}`);
			currentTemp.append(`${json.main.temp}`);
			feelsLike.append(`${json.main.feels_like}`);
			minTemp.append(`${json.main.temp_min}`);
			maxTemp.append(`${json.main.temp_max}`);
			icon.innerHTML = `<img src='https://openweathermap.org/img/wn/${weathers.icon}@2x.png'>`;
			weatherStatus.append(`${weathers.main}`);
			
		});
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
