package com.example.humanbenchmark_android;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

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