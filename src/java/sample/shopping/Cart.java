/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.shopping;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author USER
 */
public class Cart {

    private Map<String, Tea> cart;

    public Cart() {
    }

    public Cart(Map<String, Tea> cart) {
        this.cart = cart;
    }

    public Map<String, Tea> getCart() {
        return cart;
    }

    public void setCart(Map<String, Tea> cart) {
        this.cart = cart;
    }

    public void add(Tea tea) {
        //cart rong~ thi add vao`
        if (this.cart == null) {
            this.cart = new HashMap<>();
        }
        //kiem tra trong gio hang` co chua san pham do khong?
        //co thi` lay current + so luong muon add vao`
        if (this.cart.containsKey(tea.getId())) {
            int currentQuantity = this.cart.get(tea.getId()).getQuantity();
            tea.setQuantity(currentQuantity + tea.getQuantity());
        }
        //dat vao` gio hang/ ghi de` vao gio hang
        cart.put(tea.getId(), tea);
    }

    public void delete(String id) {
        if (this.cart == null) {
            return;
        }
        if (this.cart.containsKey(id)) {
            this.cart.remove(id);
        }
    }

    public void update(String id, Tea newTea) {
        if (this.cart == null) {
            return;
        }
        if (this.cart.containsKey(id)) {
            this.cart.replace(id, newTea);
        }
    }

}
