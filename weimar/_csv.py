import csv
import os
from typing import List

from ._parser import SongMetadata, re_invalid_measure, parse_changes


def load_metadata(filename='weimardb/changes.csv') -> List[SongMetadata]:
    """ Read the CSV file that contains the metadata for the solos in the Weimar database.
    
    .. deprecated::
       The chord changes in the CSV are missing pickup measures. 
       Load metadata from the SQL database instead.

    :param filename: the name of the CSV file
    """
    with open(filename, newline='') as bf:
        reader = csv.DictReader(bf, delimiter=';')
        reader.fieldnames[0] = 'name'
        metadata = list(reader)

    print(len([song for song in metadata if re_invalid_measure.search(song['chord_changes'])]))

    metadata = [SongMetadata(**song) for song in metadata
                if song['key']
                and song['signature'] == '4/4'
                and song['rhythmfeel'].lower() in ['twobeat', 'swing']
                and song['tonality_type'].lower() in ['blues', 'functional']
                and not re_invalid_measure.search(song['chord_changes'])]

    for song in metadata:
        song.name = os.path.splitext(song.name)[0]
        song.changes = parse_changes(song.changes_str, song.key)

    return metadata


def main():
    load_metadata()

if __name__ == '__main__':
    main()
