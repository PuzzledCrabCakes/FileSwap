cd /home/amc/Documents/Coding/Learning/General/SwapMe/Check

for name in *.txt; do

    filename=$(basename "$name")
    prefix="${name%%[0-9]*}"

    mkdir -p "/home/amc/Documents/Coding/Learning/General/SwapMe/TurnIn/${prefix}s"
    mv "$name" "/home/amc/Documents/Coding/Learning/General/SwapMe/TurnIn/${prefix}s/$filename"
done

cd ..
