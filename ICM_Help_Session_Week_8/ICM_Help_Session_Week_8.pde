import org.json.*;

// Make sure to paste in your API Key here
String apiKey = "YOUR_API_KEY_GOES_HERE"

// Assuming you got the API Key for Article search, all of your search requests are going to start out with this URL String
String baseURL = "http://api.nytimes.com/svc/search/v1/article";


void setup() {
  //getOJArticles(); //THE METHOD GETS CALLED HERE
  getSandyArticles();
};

void draw() {
};

void getSandyArticles() {
  
  // Build up the request URL for your search string
  // Read the documentation on the NYT Developers site for how to construct your query string
  // http://developer.nytimes.com/docs/article_search_api/
  /*
  * QUERY NYT for Data
  * Keywords: Sandy, looting
  * From Oct 30, 2012 to Nov 4, 2012
  * Query string includes the baseURL and your API key defined above
  */
  String request = baseURL + "?query=Sandy+looting&begin_date=20121030&end_date=20121104&api-key=" + apiKey;
  
  // Load the search results into a string you can print out
  String result = join( loadStrings( request ), "");
  println( result );


  // Here you can start to actually dig into the data
  try {
    
    // Load the search results into a JSONObject so Processing can parse the JSON data structure
    JSONObject nytData = new JSONObject(result);
    JSONArray results = nytData.getJSONArray("results");
    
    // Get the "total" result number and store is an integer
    int total = nytData.getInt("total");
    println ("There were " + total + " occurences of the term Sandy + looting in 4 days");
  }
  catch (JSONException e) {
    println ("There was an error parsing the JSONObject.");
  };
};

