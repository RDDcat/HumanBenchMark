package com.example.humanbenchmark_android;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

import com.bumptech.glide.Glide;

public class MainActivity extends AppCompatActivity {
    private TextView tv_userName; // 유저 닉네임
    private ImageView iv_profile; // 유저 프로필

    private void uidSend(Intent Intent, String uid){
        Intent.putExtra("uid",uid);
        startActivity(Intent);

    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Intent i = getIntent();
        String nickName = i.getStringExtra("nickName");
        String photoURL = i.getStringExtra("photoURL");
        String uid = i.getStringExtra("uid");



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
            uidSend(intent, uid);
        });

        chimpTestButton.setOnClickListener(v -> {
            Intent intent = new Intent(getApplicationContext(), ChimpTestActivity.class);
            uidSend(intent, uid);
        });

        numberMemoryTestButton.setOnClickListener(v -> {
            Intent intent = new Intent(getApplicationContext(), NumberMemoryTestActivity.class);
            uidSend(intent, uid);
        });

        reactionTestButton.setOnClickListener(v -> {
            Intent intent = new Intent(getApplicationContext(), ReactionTestActivity.class);
            uidSend(intent, uid);
        });

        sequenceMemoryTestButton.setOnClickListener(v -> {
            Intent intent = new Intent(getApplicationContext(), SequenceMemoryTestActivity.class);
            uidSend(intent, uid);
        });

        typingTestButton.setOnClickListener(v -> {
            Intent intent = new Intent(getApplicationContext(), TypingTestActivity.class);
            uidSend(intent, uid);
        });

        verbalMemoryTestButton.setOnClickListener(v -> {
            Intent intent = new Intent(getApplicationContext(), VerbalMemoryTestActivity.class);
            uidSend(intent, uid);
        });

        visualMemoryTestButton.setOnClickListener(v -> {
            Intent intent = new Intent(getApplicationContext(), VisualMemoryTestActivity.class);
            uidSend(intent, uid);
        });
    }
}