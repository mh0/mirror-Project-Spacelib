/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.miage.spacelib.business.equilibrage;

import com.miage.spacelib.entities.Station;
import com.miage.spacelib.entities.Transfert;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 *
 * @author Mahdi
 */
public class EquilibrageResultat {

    private final Map<Station, Map<Station, Integer>> transfertsSortants;
    private final Map<Station, Integer> compteurTransfertsEntrants;

    public EquilibrageResultat() {
        this.transfertsSortants = new HashMap<>();
        compteurTransfertsEntrants = new HashMap<>();
    }

    public List<Station> transfertsOrdonnes(Station station_depart) {
        return transfertsSortants.get(station_depart)
                .keySet()
                .stream()
                .sorted((s1, s2) -> Double.compare(ratioDispo(s1), ratioDispo(s2)))
                .collect(Collectors.toCollection(ArrayList::new));
    }

    public List<Entry<Station, Station>> listeTransferts() {
        List<Entry<Station, Station>> transferts = new ArrayList<>();
        List<Station> stations_ordonnees = transfertsSortants
                .keySet()
                .stream()
                .sorted((s1, s2) -> Double.compare(ratioDispo(s1), ratioDispo(s2)))
                .collect(Collectors.toCollection(ArrayList::new));
        stations_ordonnees.forEach((Station s) -> {
            transfertsSortants.keySet().forEach((dest) -> {
                transferts.add(new AbstractMap.SimpleEntry<>(s, dest));
            });
        });
        return transferts;
    }

    void ajouterTransfert(Station depart, Station arrivee) {
        Map<Station, Integer> dest = transfertsSortants.get(depart);
        if (dest == null) {
            dest = new HashMap<>();
            dest.put(arrivee, 1);
            this.transfertsSortants.put(depart, dest);
        } else {
            Integer cnt = dest.get(arrivee);
            dest.put(arrivee, cnt + 1);
        }
        Integer cpt_entrants = this.compteurTransfertsEntrants.getOrDefault(arrivee, 0);
        this.compteurTransfertsEntrants.put(arrivee, cpt_entrants + 1);
    }

    int nbTransfertsSortants(Station station) {
        if (transfertsSortants.containsKey(station)) {
            return transfertsSortants.get(station).entrySet().size();
        } else {
            return 0;
        }
    }

    int nbTransfertsEntrants(Station station) {
        if (transfertsSortants.containsKey(station)) {
            return compteurTransfertsEntrants.getOrDefault(station, 0);
        } else {
            return 0;
        }
    }

    double ratioDispo(Station s) {
        return (double) s.getQuais().stream().filter(q -> q.getNavette() != null).count() / s.getNbQuais();
    }
}
