package DTO;

import java.io.Serializable;

public class Cart implements Serializable {
    
    private int cartId;
    private String userId;
    private String stuffId;
    private String image;
    private String stuffName;
    private float price;
    private int quantity;

    public Cart() {
    }

    public Cart(int cartId, String userId, String stuffId, String image, String stuffName, float price, int quantity) {
        this.cartId = cartId;
        this.userId = userId;
        this.stuffId = stuffId;
        this.image = image;
        this.stuffName = stuffName;
        this.price = price;
        this.quantity = quantity;
    }

    public int getCartId() {
        return cartId;
    }

    public void setCartId(int cartId) {
        this.cartId = cartId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getStuffId() {
        return stuffId;
    }

    public void setStuffId(String stuffId) {
        this.stuffId = stuffId;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getStuffName() {
        return stuffName;
    }

    public void setStuffName(String stuffName) {
        this.stuffName = stuffName;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
    
}
