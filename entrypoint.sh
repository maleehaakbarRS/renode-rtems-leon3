set -e

./build-rtems.sh
./build-prom.sh

renode-run test -- leon3_rtems.robot

mkdir -p artifacts

for i in rtems-shell rtems-tlib rtems-hello rtems-ttcp
do
    cp rcc-1.3.0-gcc/src/samples/bin/leon3/$i artifacts
done
cp -r report.html log.html robot_output.xml grlib-gpl-2024.1-b4291/software/leon3/prom.bin artifacts
