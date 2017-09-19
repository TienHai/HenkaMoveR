#!/usr/bin/env python
# -*- coding: utf-8 -*-

import json, requests


# =============================================================================
def main():
    """
    Main function.
    """

    url = 'https://api-ratp.pierre-grimaud.fr/v3/stations/rers/A'
    res = requests.get(url=url)
    data = res.json()

    print data.get("_metadata")

# =============================================================================
if __name__ == '__main__':
    main()
