# not yet completed

# how many sundays fell on the first of the month during the 20th century
# 1 jan 1901  to  31 dec 2000

# 1 jan 1900 was a monday

year = (1..365).to_a
jan_1 = year[0]
feb_1 = year[(0+31)]
mar_1 = year[(0+31+28)]
apr_1 = year[(0+31+28+31)]
may_1 = year[(0+31+28+31+30)]
jun_1 = year[(0+31+28+31+30+31)]
jul_1 = year[(0+31+28+31+30+31+30)]
aug_1 = year[(0+31+28+31+30+31+30+31)]
sep_1 = year[(0+31+28+31+30+31+30+31+31)]
oct_1 = year[(0+31+28+31+30+31+30+31+31+30)]
nov_1 = year[(0+31+28+31+30+31+30+31+31+30+31)]
dec_1 = year[(0+31+28+31+30+31+30+31+31+30+31+30)]
dec_length = year.last - dec_1


