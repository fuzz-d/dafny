import os

DAFNY = 'dotnet ./Binaries/Dafny.dll'

test_count = 0
total_tests = 0

def execute_for_backend(file, run, backend):
    global test_count
    test_count += 1
    if (run):
        print(f'Test {test_count} of {total_tests}')
        os.system(f'coverlet $DAFNYBIN --target "dotnet" --targetargs "$DAFNYBIN/Dafny.dll /noVerify /compile:2 /compileTarget:{backend} {file}" --merge-with ./report.json -f json -f cobertura -o ./report')

def do_test_for_file(file, run):
    if os.path.isfile(file) and file.endswith('.dfy'):
        with open(file, 'r') as f:
            contents = f.read()
            if (contents.__contains__('testDafnyForEachCompiler')):
                execute_for_backend(file, run, 'cs')
                execute_for_backend(file, run, 'py')
                execute_for_backend(file, run, 'java')
                execute_for_backend(file, run, 'go')
                execute_for_backend(file, run, 'js')
            else:
                if (contents.__contains__('/compileTarget:py') or contents.__contains__('dafny translate py') or contents.__contains__('--target=py')):
                    execute_for_backend(file, run, 'py')

                if (contents.__contains__('/compileTarget:java') or contents.__contains__('dafny translate java') or contents.__contains__('--target=java')):
                    execute_for_backend(file, run, 'java')

                if (contents.__contains__('/compileTarget:go') or contents.__contains__('dafny translate go') or contents.__contains__('--target=go')):
                    execute_for_backend(file, run, 'go')
                
                if (contents.__contains__('/compileTarget:js') or contents.__contains__('dafny translate js') or contents.__contains__('--target=js')):
                    execute_for_backend(file, run, 'js')

                if (contents.__contains__('/compileTarget:cs') or contents.__contains__('dafny translate cs') or (not contents.__contains__('/compileTarget') and not contents.__contains__('--target'))):
                    execute_for_backend(file, run, 'cs')

def do_test_pass(dir, run):
    for filename in os.listdir(dir):
        file_path = os.path.join(dir, filename)
        if os.path.isdir(file_path):
            do_test_pass(file_path, run)
        else:
            do_test_for_file(file_path, run)

if __name__=="__main__":
    do_test_pass('./Test', False)
    print(f'found {test_count} tests')
    total_tests = test_count
    test_count = 0
    do_test_pass('./Test', True)