package com.easydevs.controller;

/**
 * Created by Bartek on 18/07/2017.
 */

import com.easydevs.model.Product;
import com.easydevs.service.ProductService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class MainController {
    private ProductService productService = new ProductService();

    @RequestMapping(value = "/form")
    public String form(Model model) {
        Product product = new Product();
        model.addAttribute("product", product);
        return "home";
    }

    @RequestMapping(value = "/productlist")
    public String print(Model model) {
        model.addAttribute("list", productService.findAll());
        return "products";
    }


    @RequestMapping(value = "/edit")
    public String edit(Model model, @RequestParam long id) {
        Product editedProduct = productService.find(id);
        model.addAttribute("product", editedProduct);

        return "home";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String submit(@ModelAttribute("product") Product product) {
        if (productService.find(product.getId()) == null) {
            product.setId(productService.generateNewId());
            productService.insert(product);
        } else {
            productService.update(product);
        }
        return "redirect:product/" + product.getId();
    }

    @RequestMapping("/product/{id}")
    public String showForm(Model model, @PathVariable long id) {
        model.addAttribute("product", productService.find(id));
        return "index";
    }
}

