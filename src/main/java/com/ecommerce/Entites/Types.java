package com.ecommerce.Entites;

public enum Types {

    Retail ("Retail"),
    CORPORATE ("CORPORATE");

    private final String type;

    Types(String type) {
        this.type = type;
    }
    public boolean equalsName(String otherName) {
        return type.equals(otherName);
    }
    @Override
    public String toString() {
        return this.type;
    }
}
