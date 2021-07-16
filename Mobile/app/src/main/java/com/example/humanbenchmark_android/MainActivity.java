package com.example.humanbenchmark_android;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {
    private Button aimTestButton;
    private Button chimpTestButton;
    private Button numberMemoryTestButton;
    private Button reactionTestButton;
    private Button sequenceMemoryTestButton;
    private Button typingTestButton;
    private Button verbalMemoryTestButton;
    private Button visualMemoryTestButton;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        aimTestButton =  findViewById(R.id.aimTestButton);
        chimpTestButton =  findViewById(R.id.chimpTestButton);
        numberMemoryTestButton =  findViewById(R.id.numberMemoryTestButton);
        reactionTestButton =  findViewById(R.id.reactionTestButton);
        sequenceMemoryTestButton =  findViewById(R.id.sequenceMemoryTestButton);
        typingTestButton =  findViewById(R.id.typingTestButton);
        verbalMemoryTestButton =  findViewById(R.id.verbalMemoryTestButton);
        visualMemoryTestButton =  findViewById(R.id.visualMemoryTestButton);

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