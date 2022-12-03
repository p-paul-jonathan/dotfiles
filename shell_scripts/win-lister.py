import subprocess
pidop = subprocess.Popen('printf %x $(xdotool getactivewindow)',shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, universal_newlines=True)
win_pid, win_err = pidop.communicate()
if win_err:
    print()
    exit(0)
win_in_ws = subprocess.check_output('wmctrl -lp | grep "  $(wmctrl -d | grep \'*\' | cut -d \' \' -f 1)"', shell=True, universal_newlines=True)


wins = win_in_ws.split('\n')[:-1]

cur_ind = -1

for i in range(0, len(wins)):
    st = wins[i].split()[0]
    ind = -1
    for j in range(0, len(st)):
        if(st[j] != '0' and st[j] != 'x'):
            ind = j
            break
    if win_pid == st[j:]:
        cur_ind = i
        break



for i in range(0, len(wins)):
    if i == cur_ind:
        print(" | " + wins[i].split()[-1] + " | ", end = '')
    else:
        print(" " + wins[i].split()[-1] + " ", end = '')
print()
