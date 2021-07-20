package com.example.humanbenchmark_android;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

import com.bumptech.glide.Glide;

public class MainActivity extends AppCompatActivity {
    private TextView tv_userName; // 유저 닉네임
    private ImageView iv_profile; // 유저 프로필


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Intent i =getIntent();
        String nickName = i.getStringExtra("nickName");
        String photoURL = i.getStringExtra("photoURL");

        tv_userName = findViewById(R.id.tv_userName);
        tv_userName.setText(nickName);

        iv_profile = findViewById(R.id.iv_profile);
        Glide.with(this).load(photoURL).into(iv_profile);

        Button aimTestButton = findViewById(R.id.aimTestButton);
        Button chimpTestButton = findViewById(R.id.chimpTestButton);
        Button numberMemoryTestButton = findViewById(R.id.numberMemoryTestButton);
        Button reactionTestButton = findViewById(R.id.reactionTestButton);
        Button sequenceMemoryTestButton = findViewById(R.id.sequenceMemoryTestButton);
        Button typingTestButton = findViewById(R.id.typingTestButton);
        Button verbalMemoryTestButton = findViewById(R.id.verbalMemoryTestButton);
        Button visualMemoryTestButton = findViewById(R.id.visualMemoryTestButton);

        aimTestButton.setOnClickListener(v -> {
            Intent intent = new Intent(getApplicationContext(), AimTestActivity.class);
            startActivity(intent);
        });

        chimpTestButton.setOnClickListener(v -> {
            Intent intent = new Intent(getApplicationContext(), ChimpTestActivity.class);
            startActivity(intent);
        });

        numberMemoryTestButton.setOnClickListener(v -> {
            Intent intent = new Intent(getApplicationContext(), NumberMemoryTestActivity.class);
            startActivity(intent);
        });

        reactionTestButton.setOnClickListener(v -> {
            Intent intent = new Intent(getApplicationContext(), ReactionTestActivity.class);
            startActivity(intent);
        });

        sequenceMemoryTestButton.setOnClickListener(v -> {
            Intent intent = new Intent(getApplicationContext(), SequenceMemoryTestActivity.class);
            startActivity(intent);
        });

        typingTestButton.setOnClickListener(v -> {
            Intent intent = new Intent(getApplicationContext(), TypingTestActivity.class);
            startActivity(intent);
        });

        verbalMemoryTestButton.setOnClickListener(v -> {
            Intent intent = new Intent(getApplicationContext(), VerbalMemoryTestActivity.class);
            startActivity(intent);
        });

        visualMemoryTestButton.setOnClickListener(v -> {
            Intent intent = new Intent(getApplicationContext(), VisualMemoryTestActivity.class);
            startActivity(intent);
        });

    }
}