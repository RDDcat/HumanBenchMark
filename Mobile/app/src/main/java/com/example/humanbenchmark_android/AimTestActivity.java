package com.example.humanbenchmark_android;

import android.content.Intent;
import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

import androidx.appcompat.app.AppCompatActivity;

public class AimTestActivity extends AppCompatActivity {
    private WebView webView;
    private WebSettings webSettings;

    // 로그인 id정보 받아오기
    private Intent intent = getIntent();
    private String uid = intent.getStringExtra("uid");

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_aim_test);

        webView = (WebView) findViewById(R.id.webViewAimTest);

        webView.setWebViewClient(new WebViewClient());
        webSettings = webView.getSettings();
        webSettings.setJavaScriptEnabled(true);
        webSettings.setLoadWithOverviewMode(true);
        webSettings.setUseWideViewPort(true);
        webSettings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.SINGLE_COLUMN);
        webSettings.setCacheMode(WebSettings.LOAD_NO_CACHE);
        webSettings.setDomStorageEnabled(true);
        webView.loadUrl("http://118.67.129.193/aim-test/at_start.jsp");

    }
}