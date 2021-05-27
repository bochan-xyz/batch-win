package com.opentext.augmentedAuthoring.service.google;

import com.google.cloud.language.v1beta2.AnalyzeSentimentResponse;
import com.google.cloud.language.v1beta2.Document;
import com.google.cloud.language.v1beta2.LanguageServiceClient;
import com.google.cloud.language.v1beta2.Sentiment;
import com.opentext.augmentedAuthoring.response.ErrorResponse;
import com.opentext.augmentedAuthoring.response.ServiceResponse;
import com.opentext.augmentedAuthoring.service.ServiceCall;

import java.io.IOException;
import java.util.Map;

public class GoogleSentimentCall extends ServiceCall {

    public GoogleSentimentCall(Map<String, String> config) {
        super(config);
    }

        @Override
    public ServiceResponse execute(String text) {
        ServiceResponse serviceResponse = null;

        // Instantiates a client
        try (LanguageServiceClient language = LanguageServiceClient.create()) {

            Document doc = Document.newBuilder().setContent(text).setType(Document.Type.PLAIN_TEXT).build();

            // Detects the sentiment of the text
            AnalyzeSentimentResponse response = language.analyzeSentiment(doc);
            Sentiment sentiment = response.getDocumentSentiment();

//            serviceResponse = new SentimentResponse(resp);
//            ((SentimentResponse) serviceResponse).setDocument(documentObject);
//
//            for (Object sentence : sentencesArr) {
//                ((SentimentResponse) serviceResponse).putSentence(parseSentimentObject((JSONObject) sentence, false));
//            }
        } catch (IOException e)  {
            serviceResponse = new ErrorResponse(e.getMessage());
        }

        return serviceResponse;
    }

    @Override
    public String sendRequest(String text) {
        return null;
    }

    @Override
    public String formatForCall(String text) {
        return null;
    }

    @Override
    public ServiceResponse formatForResponse(String text) {
        return null;
    }
}