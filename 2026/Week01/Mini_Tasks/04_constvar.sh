#readonly variable

readonly COLLEGE="DPS"

echo "My college name is $COLLEGE"

readonly COLLEGE="ABC"  # This will give an error since COLLEGE is readonly
echo "My college name is $COLLEGE"
