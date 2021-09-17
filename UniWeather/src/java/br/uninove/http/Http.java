package br.uninove.http;

import br.uninove.weather.Clima;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;

public class Http {

    public static Clima DadosCLimaticos(String cidade) {
        try {

            String charset = StandardCharsets.UTF_8.name();
            final String url = "http://api.openweathermap.org/data/2.5/weather";
            final String appid = ""; //SUA CHAVE DE API
            final String units = "metric";
            final String lang = "pt_br";

            String query = String.format("q=%s&appid=%s&units=%s&lang=%s",
                    URLEncoder.encode(cidade, charset),
                    URLEncoder.encode(appid, charset),
                    URLEncoder.encode(units, charset),
                    URLEncoder.encode(lang, charset));

            //falta monstar a URL completa, conectar e "puxar" o JSON resultante
            //com o JSON resultante em mãos, podemos convertêlo para um objeto
            //do tipo "Clima" usando o GSON
            
            return null;
            
        } catch (Exception ex) {
            return null;
        }
    }

}
