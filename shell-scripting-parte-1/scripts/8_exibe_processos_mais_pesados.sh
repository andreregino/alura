# script lista os 10 processos que mais consomem memoria

processos=$(ps -e -o pid -m | head -n 11 | grep [0-9])

for pid in $processos
do
	$(ps -p $pid -o comm=)
done