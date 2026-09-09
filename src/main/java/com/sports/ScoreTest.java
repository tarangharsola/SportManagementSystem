package com.sports;

public class ScoreTest {

    public static void main(String[] args) {
        int expectedScore = 15;
        int actualScore = calculateScore(10, 5);

        if (actualScore == expectedScore) {
            System.out.println("Test Passed!");
        } else {
            System.err.println("Test Failed! Expected " + expectedScore + " but got " + actualScore);
        }
    }

    public static int calculateScore(int initial, int bonus) {
        return initial + bonus;
    }
}