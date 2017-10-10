#!/usr/bin/env python
# -*- coding: utf-8 -*-

import json, requests


# =============================================================================
def main():
    """
    Main function.
    """
    
    transports = [
            {"type":"rers", "id":1},
            {"type":"metros", "id":2},
            {"type":"tramways", "id":3},
            ]
    for transport in transports:
        print "\n-- #######################################################"
        print "-- #  " + transport.get("type")
        print "-- #######################################################"
        url = 'https://api-ratp.pierre-grimaud.fr/v3/lines/' + transport.get("type")
        res = requests.get(url=url)
        data = res.json()
        printLine(data, transport.get("type"), transport.get("id"))

def printLine(data, transport_type, transport_type_id):
    for line in data.get("result").get(transport_type):
        _url = 'https://api-ratp.pierre-grimaud.fr/v3/destinations/' + transport_type + "/" + line.get("code") + "?id=" + line.get("id")
        _res = requests.get(url=_url)
        _data = _res.json()
        _dest = _data.get("result").get("destinations")

        insert = "INSERT INTO `line`(`id`,`transport_type`,`code`,`name`,`way_a`,`way_r`) VALUES ({}, {},\"{}\",\"{}\",\"{}\",\"{}\");".format(
                line.get("id"), transport_type_id, line.get("code"), line.get("name").encode("utf-8"), _dest[0].get("name").encode("utf-8"), _dest[1].get("name").encode("utf-8"))

        print insert

    for line in data.get("result").get(transport_type):
        print "\n-- ### " + transport_type + " - " + line.get("code") + "(" + line.get("id") + ")"
        _url = 'https://api-ratp.pierre-grimaud.fr/v3/stations/' + transport_type + "/" + line.get("code") + "?id=" + line.get("id")
        _res = requests.get(url=_url)
        _data = _res.json()
        for station in _data.get("result").get("stations"):
            insert = "INSERT INTO `station`(`id`,`transport_type`,`line`,`slug`,`name`) VALUES (NULL,{},{},\"{}\",\"{}\");".format(
                    transport_type_id, line.get("id"), station.get("slug"), station.get("name").encode("utf-8"))

            print insert

        
# =============================================================================
if __name__ == '__main__':
    main()
