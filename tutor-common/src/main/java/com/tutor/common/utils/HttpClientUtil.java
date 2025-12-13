package com.tutor.common.utils;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.KeyStore;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;

/**
 * HTTP请求工具类
 * 
 * @author tutor
 * @date 2025-11-17
 */
public class HttpClientUtil
{
    /**
     * 发送POST请求（不带证书）
     */
    public static String post(String urlStr, String data) throws Exception
    {
        URL url = new URL(urlStr);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("POST");
        conn.setDoOutput(true);
        conn.setDoInput(true);
        conn.setUseCaches(false);
        conn.setRequestProperty("Content-Type", "text/xml;charset=UTF-8");

        OutputStream out = conn.getOutputStream();
        out.write(data.getBytes("UTF-8"));
        out.flush();
        out.close();

        InputStream in = conn.getInputStream();
        BufferedReader reader = new BufferedReader(new InputStreamReader(in, "UTF-8"));
        StringBuilder response = new StringBuilder();
        String line;
        while ((line = reader.readLine()) != null)
        {
            response.append(line);
        }
        reader.close();
        in.close();
        conn.disconnect();

        return response.toString();
    }

    /**
     * 发送POST请求（带证书，用于退款）
     */
    public static String postWithCert(String urlStr, String data, String certPath, String mchId) throws Exception
    {
        KeyStore keyStore = KeyStore.getInstance("PKCS12");
        FileInputStream certStream = new FileInputStream(new File(certPath));
        try
        {
            keyStore.load(certStream, mchId.toCharArray());
        }
        finally
        {
            certStream.close();
        }

        KeyManagerFactory kmf = KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm());
        kmf.init(keyStore, mchId.toCharArray());

        SSLContext sslContext = SSLContext.getInstance("TLS");
        sslContext.init(kmf.getKeyManagers(), null, new java.security.SecureRandom());

        URL url = new URL(urlStr);
        HttpsURLConnection conn = (HttpsURLConnection) url.openConnection();
        conn.setSSLSocketFactory(sslContext.getSocketFactory());
        conn.setRequestMethod("POST");
        conn.setDoOutput(true);
        conn.setDoInput(true);
        conn.setUseCaches(false);
        conn.setRequestProperty("Content-Type", "text/xml;charset=UTF-8");

        OutputStream out = conn.getOutputStream();
        out.write(data.getBytes("UTF-8"));
        out.flush();
        out.close();

        InputStream in = conn.getInputStream();
        BufferedReader reader = new BufferedReader(new InputStreamReader(in, "UTF-8"));
        StringBuilder response = new StringBuilder();
        String line;
        while ((line = reader.readLine()) != null)
        {
            response.append(line);
        }
        reader.close();
        in.close();
        conn.disconnect();

        return response.toString();
    }
}

