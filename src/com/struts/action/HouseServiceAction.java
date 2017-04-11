package com.struts.action;

import java.util.Date;
import java.util.List;

import com.dao.CjudgeDao;
import com.dao.ComDao;
import com.dao.HconfigDao;
import com.dao.HouseDao;
import com.dao.RentDao;
import com.entity.Cjudge;
import com.entity.Com;
import com.entity.Hconfigure;
import com.entity.House;
import com.entity.Rent;
import com.entity.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class HouseServiceAction extends ActionSupport {
	private CjudgeDao cjudgeDao;
	private HouseDao houseDao;
	private ComDao comDao;
	private RentDao rentDao;
	private HconfigDao hconfigDao;
	private String config;
	private String note;
	private Date time;
	private int houseID;
	private int userID;
	private int id;
	private int comID;
	private String name;
	private String traffic;
	private String renttype;
	private String address;
	private String city;
	private String ask;
	private Date publictime;
	private int floor;
	private int allfloor;
	private int size;
	private String type;
	private float price;
	private String face;
	private String orderway;
	private int visit;
	private String buju;
	private String decoration;
	private String title;
	private String content;
	private int age;
	
	public CjudgeDao getCjudgeDao()
	{
		return cjudgeDao;
	}
	public void setCjudgeDao(CjudgeDao cjudgeDao)
	{
		this.cjudgeDao = cjudgeDao;
	}
	public HconfigDao getHconfigDao()
	{
		return hconfigDao;
	}
	public void setHconfigDao(HconfigDao hconfigDao)
	{
		this.hconfigDao = hconfigDao;
	}
	public RentDao getRentDao(){
		return rentDao;
	}
	public void setRentDao(RentDao rentDao)
	{
		this.rentDao = rentDao;
	}
	public ComDao getComDao()
	{
		return comDao;
	}
	public void setComDao(ComDao comDao)
	{
		this.comDao = comDao;
	}
	
	public HouseDao getHouseDao()
	{
		return houseDao;
	}
	public void setHouseDao(HouseDao houseDao)
	{
		this.houseDao = houseDao;
	}
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public Date getTime()
	{
		return time;
	}
	public void setTime(Date time)
	{
		this.time = time;
	}
	public String getTraffic()
	{
		return  traffic;
	}
	public void setTraffic(String traffic)
	{
		this.traffic = traffic;
	}
	public String getConfig()
	{
		return config;
	}
	public void setConfig(String config)
	{
		this.config = config;
	}
	public String getCity()
	{
		return city;
	}
	public void setCity(String city)
	{
		this.city = city;
	}
	public String getNote()
	{
		return note;
	}
	public void setNote(String note)
	{
		this.note = note;
	}
	public int getHouseID()
	{
		return houseID;
	}
	public void setHouseID(int houseID)
	{
		this.houseID = houseID; 
	}
	
	public int getUserID()
	{
		return userID;
	}
	public void setUserID(int userID)
	{
		this.userID = userID;
	}
	public int getComID()
	{
		return comID;
	}
	public void setComID(int comID)
	{
		this.comID = comID;
	}
	public String getAddress()
	{
		return address;
	}
	public void setAddress(String address)
	{
		this.address = address;
	}
	public int getId(int id)
	{
		return id;
	}
	
	public  void setId(int id)
	{
		this.id = id;
	}
	
	public String getRenttype() {
        return renttype;
    }

    public void setRenttype(String renttype) {
        this.renttype = renttype;
    }

    public String getAsk() {
        return ask;
    }

    public void setAsk(String ask) {
        this.ask = ask;
    }

    public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getFloor() {
        return floor;
    }

    public void setFloor(int floor) {
        this.floor = floor;
    }

    public int getAllfloor() {
        return allfloor;
    }

    public void setAllfloor(int allfloor) {
        this.allfloor = allfloor;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getFace() {
        return face;
    }

    public void setFace(String face) {
        this.face = face;
    }

    public String getOrderway() {
        return orderway;
    }

    public void setOrderway(String orderway) {
        this.orderway = orderway;
    }

    public int getVisit() {
        return visit;
    }

    public void setVisit(Integer visit) {
        this.visit = visit;
    }

    public String getBuju() {
        return this.buju;
    }

    public void setBuju(String buju) {
        this.buju = buju;
    }

    public String getDecoration() {
        return this.decoration;
    }

    public void setDecoration(String decoration) {
        this.decoration = decoration;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String content) {
        this.content = content;
    }
    
    
    /**
     * 首页显示热门排行版
     * 1.Сom
     * 2.house
     * 3.bhouse
     * 4.studyhouse
     * @return 
     */
    public String getAllTopFiveByVisit()
    {
    	List<Com> comList = comDao.getTopFiveComByVisit();
    	List<House> houseList = houseDao.getTopFiveHouseByVisit();
    	List<House> bhouseList = houseDao.getTopFiveBussinesByVisit();
    	List<House> shouseList = houseDao.getTopFiveStudyByVisit();
    	if((houseList != null) &&(comList != null) && (bhouseList !=null) &&(shouseList != null))
    	{
    		System.out.println("getTopFiveHouseSuccess");
    		ActionContext.getContext().getSession().put("HouseList", houseList);
    		ActionContext.getContext().getSession().put("TopFiveCom",comList);
    		ActionContext.getContext().getSession().put("TopFiveStudy",shouseList);
    		ActionContext.getContext().getSession().put("TopFiveBus",bhouseList);
    		return "getTopFiveHouseSuccess";
    	}else{
    		System.out.println("getTopFiveHouseFail");
    		ActionContext.getContext().getSession().put("ComHouseList", null);
    		ActionContext.getContext().getSession().put("TopFiveCom",null);
    		ActionContext.getContext().getSession().put("TopFiveStudy",null);
    		ActionContext.getContext().getSession().put("TopFiveBus",null);
    		return "getTopFiveHouseFail";
    	} 	
    }
    
    /**
     * 根据id获取房屋的详细信息
     * @return
     */
    public String getHouseDetailById()
    {
    	House house = houseDao.getHouseDetailsById(id);
    	if(house != null)
    	{
    		ActionContext.getContext().getSession().put("HouseDetails", house);
    		return "getHouseDetailsSuccess";
    	}else{
    		ActionContext.getContext().getSession().put("HouseDetails", null);
    		return "getHouseDetailsFail";
    	}
    }
    
	public String getComDetailsById()
    {
    	Com com = comDao.getComDetailsById(id);
    	if(com != null)
    	{
        	List<Cjudge> cjudgeList = cjudgeDao.getJudgeByComID(com.getId());
    		ActionContext.getContext().getSession().put("ComDetails", com);
    		ActionContext.getContext().getSession().put("AllJudge", cjudgeList);
    		return "getComDetailsSuccess";
    	}else{
    		ActionContext.getContext().getSession().put("ComDetails",null);
    		ActionContext.getContext().getSession().put("AllJudge", null);
    		return "getComDetailsFail";
    	}
    }
    
	public String judgeComBycomID()
	{
		Com com = (Com)ActionContext.getContext().getSession().get("ComDetails");
		User user = (User)ActionContext.getContext().getSession().get("userinfo");
		Cjudge cjudge = new Cjudge();
		cjudge.setCom(com);
		cjudge.setUser(user);
		cjudge.setContent(content);
		cjudge.setTime(new Date());
		if(cjudgeDao.saveJudge(cjudge))
		{
			List<Cjudge> cjudgeList = cjudgeDao.getJudgeByComID(com.getId());
			ActionContext.getContext().getSession().put("ComDetails", com);
    		ActionContext.getContext().getSession().put("AllJudge", cjudgeList);
			return "judgeComBycomIDSuccess";
		}else{
			ActionContext.getContext().getSession().put("ComDetails", com);
			ActionContext.getContext().getSession().put("AllJudge", null);
			return "judgeComBycomIDFail";
		}
	}
	
    /**
     * 获取所有house
     * @return
     */
    public String getAllHouse()
    {
    	
    	List<House> houseList = houseDao.getAllHouseByVisit();
    	if(houseList != null)
    	{
    		ActionContext.getContext().getSession().put("AllHouse", houseList);
    		return "getAllHouseSuccess";
    	}else{
    		ActionContext.getContext().getSession().put("AllHouse", null);
    		return "getAllHouseFail";
    	}
    }
    
   /**
    * 获取所有豪华套房
    * @return
    */
   public String getAllLuxury()
   {
	   List<House> houseList = houseDao.getAllLuxuryByVisit();
	   if(houseList != null)
	   {
		   ActionContext.getContext().getSession().put("LuxuryList", houseList);
		   return "getAllLuxurySuccess";
	   }else{
		   ActionContext.getContext().getSession().put("LuxuryList", null);
		   return "getAllLuxuryFail";
	   }
   }
   
   /**
    * 获取所有com
    * @return
    */
   public String getAllCom()
   {
	   List<Com> comList = comDao.getComListByVisit();
	   if(comList != null)
	   {
		   ActionContext.getContext().getSession().put("ComList", comList);
		   return "getAllComSuccess";
	   }else{
		   ActionContext.getContext().getSession().put("ComList", null);
		   return "getAllComFail";
	   }
   }
   
   /**
    * 根据comid查询house
    * @return
    */
   public String getHouseByComID()
   {
	List<House> houseList = houseDao.getAllHouseByCom(comID);
	if(houseList != null)
	{
		ActionContext.getContext().getSession().put("AllHouse", houseList);
		return "getAllHouseByComIDSuccess";
	}else{
		ActionContext.getContext().getSession().put("AllHouse",houseList);
		return "getAllHouseByComIDFail";
	}  
   }
   /**
    * 获取所有的商铺
    * @return
    */
   public String getAllBussinessHouse()
   {
	   List<House> houseList = houseDao.getAllBussinesByVisit();
	   if(houseList !=null)
	   {
		   ActionContext.getContext().getSession().put("BussinessList", houseList);
		   return "getAllBussinessSuccess";
	   }else{
		   ActionContext.getContext().getSession().put("BussinessList", null);
		   return "getAllBussinessFail";
	   }
   }
   
   /**
    * 获取所有的学区房
    * @return
    */
   public String getAllStudyHouse()
   {
	   List<House> houseList = houseDao.getAllStudyByVisit();
	   if(houseList !=null)
	   {
		   ActionContext.getContext().getSession().put("StudyList", houseList);
		   return "getAllStudySuccess";
	   }else{
		   ActionContext.getContext().getSession().put("StudyList", null);
		   return "getAllStudyFail";
	   }
   }
   
   /*
    获取所有village
   */
   public String getAllVillageHouse()
   {
	   List<House> houseList = houseDao.getAllVillageByVisit();
	   if(houseList !=null)
	   {
		   ActionContext.getContext().getSession().put("VillageList", houseList);
		   return "getAllVillageSuccess";
	   }else{
		   ActionContext.getContext().getSession().put("VillageList",houseList);
		   return "getAllVillageFail";
	   }
   }

   /**
    * 出租
    * @return
    */
   public String rentHouse()
   {
        try{
        	ActionContext.getContext().getSession().remove("RentHouseStatus");
        	User user = (User) ActionContext.getContext().getSession().get("userinfo");
        	if(user != null)
        	{
        		Com com = new Com();
        		com.setCity(city);
        		com.setAddress(address);
        		com.setName(name);
        		boolean addComFlag = comDao.saveCom(com);
        		if(addComFlag)
        		{
            		House house = new House();
            		house.setVerify(0);
            		house.setCity(city);
            		house.setRenttype(renttype);
            		house.setAddress(address);
            		house.setAge(age);
            		house.setFloor(floor);
            		house.setAllfloor(allfloor);
            		house.setSize(size);
            		house.setFace(face);
            		house.setDecoration(decoration);
            		house.setOrderway(orderway);
            		house.setPrice(price);
            		house.setTitle(title);
            		house.setAsk(ask);
            		house.setCom(com);	
            		boolean addHouseFlag = houseDao.saveHouse(house);
            		if(addHouseFlag)
            		{
                		Rent rent = new Rent();
                		rent.setHouse(house);
                		rent.setUser(user);
                		rent.setTime(new Date());
                		boolean addRentFlag = rentDao.saveRent(rent);   
                		if(addRentFlag)
                		{
                			ActionContext.getContext().getSession().put("RentHouseStatus","Success");
                            return "rentHouseSuccess";
                		}
            		}
        		}
        		ActionContext.getContext().getSession().put("RentHouseStatus","Fail");
        		return "rentHouseFail";
        	}else{
        		ActionContext.getContext().getSession().put("needLogin","needLogin");
        		return "needLogin";
        	}
            
        }catch(Exception e)
        {
            System.out.println(e.toString());
            ActionContext.getContext().getSession().put("RentHouseStatus","Fail");
            return "rentHouseFail";
        }           
   }
   
   /*****************
    * house查询	    *		
    * 1.house		*
    * 2.com  		*
    * 3.bussines	*
    *    
    ****************/
   public String searchAllHouse()
   {
	   try{
		  List<House> houseList = houseDao.getHouseByCondition(city, size, price, type, face, decoration, renttype, buju, orderway);
		  if(houseList != null)
		  {
			  ActionContext.getContext().getSession().put("AllHouse",houseList);
			  return "getAllHouseByConditionSuccess";
		  }else{
			  ActionContext.getContext().getSession().put("AllHouse", null);
			  return "getAllHouseByConditionFail";
		  }
	   }catch(Exception e)
	   {
		   System.out.println(e.toString());
		   ActionContext.getContext().getSession().put("AllHouse", null);
		   return "getAllHouseByConditionSuccess";
	   }
   }

   public String searchAllCom()
   {
	   try{
			   List<Com> comList = comDao.getComByCondition(city, traffic);
			   if(comList != null)
			   {
				   ActionContext.getContext().getSession().put("ComList", comList);
				   return "getAllComByConditionSuccess";
			   }else{
				   ActionContext.getContext().getSession().put("ComList",null);
				   return "getAllComByConditionFail";
			   }		   
	   }catch(Exception e)
	   {
		   ActionContext.getContext().getSession().put("ComList",null);
		   return "getAllComByConditionFail";
	   }
   }
   
   public String searchAllBussines()
   {
	   try{
		  List<House> houseList = houseDao.getBussinesByCondition(city, size, price);
		  if(houseList != null)
		  {
			  ActionContext.getContext().getSession().put("BussinessList",houseList);
			  return "getAllBussinesByConditionSuccess";
		  }else{
			  ActionContext.getContext().getSession().put("BussinessList", null);
			  return "getAllBussinesByConditionSuccess";
		  }
	   }catch(Exception e)
	   {
		   System.out.println(e.toString());
		   ActionContext.getContext().getSession().put("BussinessList", null);
		   return "getAllBussinesByConditionSuccess";
	   }	   
   }
   
   public String searchAllLuxury(){
	   try{
		  List<House> houseList = houseDao.getLuxuryByCondition(city, size, price);
		  if(houseList != null)
		  {
			  ActionContext.getContext().getSession().put("LuxuryList",houseList);
			  return "getAllLuxuryByConditionSuccess";
		  }else{
			  ActionContext.getContext().getSession().put("LuxuryList", null);
			  return "getAllLuxuryByConditionFail";
		  }
	   }catch(Exception e)
	   {
		   System.out.println(e.toString());
		   ActionContext.getContext().getSession().put("LuxuryList", null);
		   return "getAllLuxuryByConditionFail";
	   }		   
   }
   
   public String searchAllVillage()
   {
	   try{
		  List<House> houseList = houseDao.getVillageByCondition(city, size, price);
		  if(houseList != null)
		  {
			  ActionContext.getContext().getSession().put("VillageList",houseList);
			  return "getAllVillageByConditionSuccess";
		  }else{
			  ActionContext.getContext().getSession().put("VillageList", null);
			  return "getAllVillageByConditionFail";
		  }
	   }catch(Exception e)
	   {
		   System.out.println(e.toString());
		   ActionContext.getContext().getSession().put("VillageList", null);
		   return "getAllVillageByConditionFail";
	   }	   
   }
}
