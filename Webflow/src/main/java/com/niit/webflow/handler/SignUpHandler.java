package com.niit.webflow.handler;

import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.niit.webflow.bean.AddressDetails;

@Component
public class SignUpHandler {
	
	public AddressDetails initFlow(){
		return new AddressDetails();
	}
	public String validateDetails(AddressDetails addressDetails,MessageContext messageContext){
		String status = "success";
		if(addressDetails.getHouseNo().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"houseNo").defaultText("House Number cannot be Empty").build());
			status = "failure";
		}
		if(addressDetails.getLaneNo().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"laneNo").defaultText("Lane Number cannot be Empty").build());
			status = "failure";
		}
		if(addressDetails.getLocation().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"location").defaultText("Location cannot be Empty").build());
			status = "failure";
		}
		
		return status;
	}

}
