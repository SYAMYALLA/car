package com.cg;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cg.dao.CarDAO;
import com.cg.dto.CarDTO;

@Controller
public class MyController {

	@Autowired
	private CarDAO carDAO;

	@RequestMapping("/viewCars")
	String viewAllCars(ModelMap map){
		List<CarDTO> cars = carDAO.findAll();
		
		map.addAttribute("carList",cars);
		System.out.println(cars);
		return "carList";
    }
	
	
    private CarDTO dto=new CarDTO();
	
	@ModelAttribute("car")
	public CarDTO getCar(){
		return new CarDTO();
		//return dto;
	}
	
	@RequestMapping("/addCar")
	public String addCar(@RequestParam(value="id",required=false) String sId,ModelMap map){
		
		int id;
		
		if(sId != null){
			id = Integer.parseInt(sId);
		}else{
			id =-1;
		}
		
		if(id != -1){
			CarDTO dto =carDAO.findById(id);
			map.put("car", dto);
			
			System.out.println("inside update");
		}
		
		return "carForm2";
	}
	
	
	@RequestMapping("/saveCar")
	public String saveCar(@ModelAttribute("car") CarDTO car,ModelMap map){
		System.out.println(car.getId());
		if(car.getId() == -1)
		
			carDAO.create(car);
		
		else
			carDAO.update(car);
		
		return viewAllCars(map);
		
	}

	@RequestMapping("/deleteCar")
	public String deleteCar(@RequestParam(value="id",required=false) String sIds[],ModelMap map){
		carDAO.delete(sIds);
		return viewAllCars(map);
		
	}
	
}



