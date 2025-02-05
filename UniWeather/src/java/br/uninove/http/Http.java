package br.uninove.http;

import br.uninove.weather.Clima;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;

public class Http {

    public static Clima DadosCLimaticos(String cidade) {
        try {

            String charset = StandardCharsets.UTF_8.name();
            final String url = "http://api.openweathermap.org/data/2.5/weather";
            final String appid = "70490ee3c06c559a659a5d846008bbd3"; //SUA CHAVE DE API
            final String units = "metric";
            final String lang = "pt_br";

            String query = String.format("q=%s&appid=%s&units=%s&lang=%s",
                    URLEncoder.encode(cidade, charset),
                    URLEncoder.encode(appid, charset),
                    URLEncoder.encode(units, charset),
                    URLEncoder.encode(lang, charset));

            //1º passo: montar a URL completa e abrir uma conexão com a aplicação
            URLConnection conn = new URL(url + "?" + query).openConnection();
            conn.setRequestProperty("Content-Type", "application/json; charset=utf-8");
            conn.setRequestProperty("Accept-Charset", charset);
            conn.setDoOutput(true);

            //2º passo - Pedir o retorno à API
            Clima clima;

            try (InputStream resposta = conn.getInputStream()) {
                //3º passo: Colocar o resultado em um buffer para ser convertido em objeto 
                //do tipo "clima" pelo GSON
                BufferedReader buffer = new BufferedReader(
                        new InputStreamReader(resposta, charset));
                String json = readAll(buffer);
                
                //4º passo: converter o JSON para um objeto "Clima"
                Gson gson = new Gson();
                clima = gson.fromJson(json, Clima.class);
            }

            return clima;

        } catch (JsonSyntaxException | IOException ex) {
            return null;
        }
    }
    
    private static String readAll(Reader rd) throws IOException {
        StringBuilder sb = new StringBuilder();
        int cp;
        while((cp = rd.read()) != -1) {
            sb.append((char)cp);
        }
        return sb.toString();
    }
}
