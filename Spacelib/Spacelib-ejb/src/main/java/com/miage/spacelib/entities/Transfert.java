package com.miage.spacelib.entities;

import java.util.Calendar;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;

@Entity
public class Transfert extends Reservation {

    private static final long serialVersionUID = 1L;
    
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Usager usager;
    
    public Transfert(){
        
    }
    
    public Transfert(int nb, Navette n, Usager u, Calendar dd, Calendar da, Quai qd, Quai qa){
        super(nb, n, dd, da, qd, qa);
        this.usager = u;
    }

    public Usager getUsager() {
        return usager;
    }

    public void setUsager(Usager usager) {
        this.usager = usager;
    }
    
    
    
}
