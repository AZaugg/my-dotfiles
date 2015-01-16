function sshaws () {
  if [ -z "$1" ]; then
    echo "no instance ID passed in"
    exit 0
  fi

  if [ ! -z "$2" ]; then
    profile="--profile $2"
  elif [ ! -z $PROFILE ]; then
    profile="--profile $PROFILE"
  fi
  USERNAME="ec2-user"

  running=$(aws ec2 describe-instances --instance-ids  $1 $profile | grep -c '"Name": "running"')
  ip=$(aws ec2 describe-instances --instance-ids  $1 $profile --output json | egrep -o '"PrivateIpAddress": "([0-9]{1,3}[\.]){3}[0-9]{1,3}"' |uniq| awk -F\" '{print $(NF-1)}')
  key=$(aws ec2 describe-instances --instance-ids  $1 $profile --output json | egrep -o '"KeyName": ".*?"' | awk -F\" '{print $(NF-1)}')

  if [ $running -gt 0 ]; then
    if [ -z "$ip" ]; then
      echo "No Ip address could be found"
    elif [ ! -e ~/.ssh/"$key"* ]; then
      echo "SSH key %key could not be found in ~/.ssh/"
    else
      ssh -i ~/.ssh/"$key"*  $USERNAME@$ip
    fi
  echo "Host $1 not available"
  fi
}
