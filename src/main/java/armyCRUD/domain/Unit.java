package armyCRUD.domain;
public class Unit {
    private static int UnitID = 0;
    private int id;
    private int soldierId;
    private int vehicleId;

    public Unit(){
        super();
    }
    public Unit(int soldierId, int vehicleId){
        this.id = ++UnitID;
        this.soldierId = soldierId;
        this.vehicleId = vehicleId;

    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public int getSoldierId() {
        return soldierId;
    }
    public void setSoldierId(int soldierId) {
        this.soldierId = soldierId;
    }
    public int getVehicleId() {
        return vehicleId;
    }
    public void setVehicleId(int vehicleId) {
        this.vehicleId = vehicleId;
    }

}