package com.example.jokesbackend;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@SpringBootApplication
public class JokesBackendApplication {

	public static void main(String[] args) {
		SpringApplication.run(JokesBackendApplication.class, args);
	}

	@RestController
	public class JokeController {

		// The following CORS annotation is bad practice in production code because it allows any origin to access the API.
		// It is only used here to allow the React frontend to access the API during development.
		@CrossOrigin(origins = "*")
		@GetMapping("/joke")
		public String getJoke() {
			RestTemplate restTemplate = new RestTemplate();
			String jokeApiUrl = "https://v2.jokeapi.dev/joke/Any?blacklistFlags=nsfw,religious,political,racist,sexist,explicit&format=txt&type=single";
			String joke = restTemplate.getForObject(jokeApiUrl, String.class);

			return joke;
		}
	}
}
