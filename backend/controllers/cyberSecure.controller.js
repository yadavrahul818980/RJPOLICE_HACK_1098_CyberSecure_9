const Complaint = require('../models/complaint.model');
const crypto = require('crypto');
const uploadOnCloudinary = require('../utils/cloudinary.util');

const complaintRegister = {
  incidentDetails : async (req, res) => {
    try {
      const { category , subcategory , date , time , delayReason , additionalInfo } = req.body;      

      const acknowledgementNumber = crypto.randomBytes(8).toString("hex").toUpperCase();

      const complaintData = new Complaint({
        user : req.user.id ,
        acknowledgementNumber ,
        category ,
        subcategory ,
        date ,
        time ,
        delayReason ,
        additionalInfo ,
      });
      await complaintData.save();
      res.status(201).json({ message: "Complaint Registered successfully" });
    } catch (err) {
      console.error(err);
      res.status(500).json({ message: "Internal Server Error" });
    }
  },
  complainantId : async (req, res) => {
    try {
      
      const filePath = req.file.path; 
      const cloudinaryResponse = await uploadOnCloudinary(filePath);   

      if (cloudinaryResponse.error || !cloudinaryResponse.secure_url) {
        return res
          .status(500)
          .json({ message: "Failed to upload image to Cloudinary" });
      }
      const { acknowledgementNumber } = req.body  ;    
      const complaint = await Complaint.findOneAndUpdate(
        {acknowledgementNumber : acknowledgementNumber},{nationalIdImageUrl : cloudinaryResponse.secure_url});
      
      if(!complaint){
        return res.status(404).json({message : "Complaint not found"}) ;
      }

      return res.status(200).json({message : "Complaint updated successfully"}) ;

    } catch (err) {
      console.log(err);
      return res.status(500).json({message : "Internal Server Error"}); 
    }
  },
  complainantDetails : async (req, res) => {
    try {
      const {acknowledgementNumber, name , gender, houseNo, country, streetName, state, district, nearestPoliceStation} = req.body ; 

      const compaint = await Complaint.findOneAndUpdate(
        { acknowledgementNumber: acknowledgementNumber },
        {name, gender, houseNo, country, streetName, state, district, nearestPoliceStation});

      if(!compaint){
        return res.status(404).json({message : "Complaint not found"}) ;
      }

      return res.status(200).json({message : "Complaint updated successfully"}) ;
    } catch (err) {
      consoel.error(err);
      res.status(500).json({ message: "Internal Server Error" });
    }
  }
}

module.exports = complaintRegister;