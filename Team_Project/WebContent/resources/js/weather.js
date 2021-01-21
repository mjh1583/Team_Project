const weather = document.querySelector(".js-weather");

const API_KEY = "2f56e0eca22d5ff3b63420e13297030b";
const COORDS = "coords";

function getWeather(lat, lng) {
		fetch(
			`https://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lng}&appid=${API_KEY}&units=metric`
		).then(function(response) {
			return response.json();
		}).then(function(json){
			console.log(json);
			const temperature = json.main.temp;
			const place = json.name;
			const weathers = json.weather[0];
			weatherIcon_src = `https://openweathermap.org/img/wn/${weathers.icon}@2x.png`;
			weather.innerText = `${temperature} @ ${place} @ ${weathers.main} @ ${weatherIcon_src}`;
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

function handleGeoError(position) {
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
