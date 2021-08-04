from pathlib import Path
from shutil import copy

import click
CONTEXT_SETTINGS = dict(help_option_names=['-h', '--help'])


@click.command(context_settings=CONTEXT_SETTINGS)
@click.version_option(version='0.1')
@click.option('-j', '--jpeg_path',
              required=True,
              help="Path to jpegs to match Raw files to")
@click.option('-r', '--raw_path',
              required=True,
              help="Path to find the RAW files in")
@click.option('-d', '--destination',
              required=True,
              help="Path to copy raw files to")
def main(jpeg_path, raw_path, destination):
    file_names = Path(jpeg_path).glob('*.JPG')
    for file_name in file_names:
        raw_file = Path(raw_path) / (file_name.stem + '.RAF')
        copy(raw_file, Path(destination) / raw_file.name)


if __name__ == '__main__':
    main()
