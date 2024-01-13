const mongoose = require('mongoose');

const complaintSchema = new mongoose.Schema({
  user : {
    type : mongoose.Schema.Types.ObjectId ,
    ref : 'User' ,
    required : true ,
  },
  acknowledgementNumber : {
    type : String ,
    required : true ,
  },
  category : {
    type : String ,
  }, 
  subcategory: {
    type : String ,
  }, 
  date : {
    type : String ,
  } ,
  time : {
    type : String ,
  },
  delayReason : {
    type : String ,
  },
  additionalInfo : {
    type : String ,
  },
  name : {
    type : String ,
  },
  gender : {
    type : String , 
  },
  houseNo : {
    type : String ,
  },
  country : {
    type : String ,
  },
  streetName : {
    type : String ,
  },
  state : {
    type : String ,
  },
  district : {
    type : String ,
  },
  nearestPoliceStation : {
    type : String ,
  }, 
  nationalIdImageUrl : {
    type : String 
  },
  importantDocumentsUrl : {
    type : String ,    
  }
});

module.exports = mongoose.model('Complaint', complaintSchema) ;