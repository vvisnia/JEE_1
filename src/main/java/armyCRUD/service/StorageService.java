package armyCRUD.service;
import java.util.ArrayList;
import java.util.List;

import armyCRUD.domain.Soldier;
import armyCRUD.domain.Vehicle;


public class StorageService {

    public List<Soldier> soldiers = new ArrayList<Soldier>();
    public List<Vehicle> vehicles = new ArrayList<Vehicle>();

    public void add(Soldier soldier){
        Soldier newPerson = new Soldier(soldier.getName(), soldier.getRank(), soldier.getyearOfService());
        soldiers.add(newPerson);
    }
    public void add(Vehicle vehicle){
        Vehicle newVeh = new Vehicle(vehicle.getName(), vehicle.getType(), vehicle.getStatus(), vehicle.getSpeed());
        vehicles.add(newVeh);
    }



    public List<Soldier> getAllSoldiers(){
        return soldiers;
    }
    public List<Vehicle> getAllVehicles() { return vehicles; }


}