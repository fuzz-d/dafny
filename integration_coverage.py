import os

DAFNY = 'dotnet ./Binaries/Dafny.dll'

test_count = 0

def do_test_for_file(file, run = False):
    if os.path.isfile(file) and file.endswith('.dfy'):
        pass

def do_test_pass(dir, run = False):
    for filename in os.listdir(dir):
        file_path = os.path.join(dir, filename)
        if os.path.isdir(file_path):
            do_test_pass(file_path, run)
        else:
            do_test_for_file(file_path)

if __name__=="__main__":
    do_test_pass('./Test')