package armyCRUD.service;
import java.util.ArrayList;
import java.util.List;

import armyCRUD.domain.Soldier;



public class StorageService {

    public List<Soldier> soldiers = new ArrayList<Soldier>();


    public void add(Soldier soldier){
        Soldier newPerson = new Soldier(soldier.getName(), soldier.getRank(), soldier.getyearOfService());
        soldiers.add(newPerson);
    }



    public List<Soldier> getAllSoldiers(){
        return soldiers;
    }


}