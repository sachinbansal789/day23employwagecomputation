class EmpWageComputation {

	public static final int isFullTime = 1;
	public static final int isPartTime = 2;
	public static final int wagePerHour = 20;

	public void computeWage(String compName, int workDayPerMonth, int workHourPerMonth) {
	
		System.out.println("Daily wage for company "+compName+" is:");
		int workHour = 0;
		int totalWorkHour = 0;
		int dailyWage = 0;
		int totalWorkDay = 0;
		
		while(totalWorkHour<workHourPerMonth && totalWorkDay < workDayPerMonth){
			
			totalWorkDay++;
			int attendence = (int)(Math.random()*3)+1;
		
			switch(attendence){

				case isFullTime:
					workHour = 8;
					break;
				case isPartTime:
					workHour = 4;
					break;
				default:
					workHour = 0;
					break;
			}
			totalWorkHour += workHour;
			dailyWage = workHour * wagePerHour;
			System.out.println("wage of day "+totalWorkDay+" is: "+dailyWage);
		}
		int monthWage = wagePerHour * totalWorkHour;
		System.out.println("Total wage of company "+compName+" is:"+monthWage);
	}
	public static void main(String[] args) {
	
		EmpWageComputation obj = new EmpWageComputation();
		obj.computeWage("TATA",20,80);
		obj.computeWage("WALL MART",25,100);
		obj.computeWage("AMAZON",25,65);
	}
}
