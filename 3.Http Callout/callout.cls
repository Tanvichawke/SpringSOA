public with sharing class callout {
    public void methodForCallout() {
        // Define the endpoint URL
       String endpoint = 'https://www.example.com/api/';

        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(endpoint);
        request.setMethod('GET');

        HttpResponse response = http.send(request);

        System.debug(response.getBody());
    }
}