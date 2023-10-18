import os

def check_file(file_path):
    with open(file_path, 'r') as f:
        contents = f.read()
        key_phrases = ['dafny translate', 'dafny run', '/compile:2', '/compile:3', '/compile:4', 'testDafnyForEachCompiler']
        return (not contents.__contains__('// RUN')) or any([contents.__contains__(phrase) for phrase in key_phrases])


def iter_dir(dir_path):
    for file in os.listdir(dir_path):
        file_path = os.path.join(dir_path, file)
        if (os.path.isdir(file_path)):
            iter_dir(file_path)
        elif (file_path.endswith('.dfy') and not check_file(file_path)):
            os.system(f'rm {file_path}')
            os.system(f'rm {file_path}.expect')

if __name__ == "__main__":
    iter_dir('./Test')