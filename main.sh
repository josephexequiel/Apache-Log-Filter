LOG_FILE="$1";

ip_list=$(cat "$LOG_FILE" | awk '{print $1=$1}' | sort | uniq -c | awk '{print $1=$1,$2}' | sort -r);
date_list=$(cat "$LOG_FILE" | awk '{print $4}' | awk -F ':' '{print $1}' | tr -d '[' | sort | uniq -c | awk '{print $1=$1,$2}' | sort -r);

echo "$ip_list";
echo "$date_list";
