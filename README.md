README.md
Flask Web Application
This is a Flask web application that provides the current adjusted time and weather information for Cairo, Egypt. the weather information is fetched from the OpenWeatherMap API.

Features
Displays the current adjusted time in Cairo, Egypt in the format YYYY-MM-DD HH:MM:SS AM/PM.
Provides weather information for Cairo, including the weather description and temperature.
Setup and Installation

python3 -m venv venv
source venv/bin/activate   # On Windows use `venv\Scripts\activate`
Install the dependencies:
pip install -r requirements.txt
Set up environment variables:

Create a .env file in the root directory and add your OpenWeatherMap API key:

makefile

API_KEY=your_openweathermap_api_key
Running the Application
To run the application, use the following command:


python app.py
The application will be accessible at http://0.0.0.0:5000/.

API Endpoint
GET /

Returns the current adjusted time and weather information for Cairo, Egypt.

Response:

json
{
  "current_time": "2023-05-23 11:22:33 AM",
  "time_zone": "Africa/Cairo",
  "weather": {
    "description": "clear sky",
    "temperature": 25.0
  }
}
Running Tests
To run the tests for the application, use the following command:


pytest
Project Structure
bash
.
├── app.py                  # Main application file
├── tests
│   └── test_app.py         # Test cases
├── requirements.txt        # Project dependencies
├── README.md               # Project documentation
└── .env                    # Environment variables (not included in version control)
Dependencies
Flask
pytz
requests
pytest


Acknowledgements
Flask
pytest
pytz
OpenWeatherMap API
Farah Ahmed
Feel free to contribute to this project by submitting issues or pull requests.