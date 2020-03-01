package pl.sda.jsp.utils;

import lombok.Getter;
import lombok.Setter;

public class Calculator {

    @Getter
    @Setter
    private int n;

    public int square() {
        return n*n;
    }
}
