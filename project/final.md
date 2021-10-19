# EECS 151/251A ASIC Project Specification: Final Deliverables
<p align="center">
Prof. Bora Nikolic
</p>
<p align="center">
TAs: Daniel Grubb, Nayiri Krzysztofowicz, Zhaokai Liu
</p>
<p align="center">
Department of Electrical Engineering and Computer Science
</p>
<p align="center">
College of Engineering, University of California, Berkeley
</p>

---

## Final Project Deliverables

By now you should have designed a fully-functional processor from scratch that could be tapedout in silicon. Your design should pass all assembly tests at your reported maximum frequency. Your
design should also pass all of the benchmark tests in at your reported maximum frequency, and you
should report the cycle count for each of those tests. By the due date (Friday, December 11, 2020), each
team needs to push their final commits to their team’s git repository. Only the final commit before the
due date will be graded, so be very, very careful that you have submitted everything required. To be
graded you must submit the following items:
* `src/*.v`
* `build/syn-rundir/reports/*`
* `build/par-rundir/timingReports/*`
* `build/par-rundir/innovus.log*`

These files will be used to check processor functionality and will show us your critical path, maximum operating frequency and area. During the interview session (Tuesday, December 8, 2020), the
professors and the GSI will be interviewing each team to gauge understanding of various concepts
learned in the project, understand more about each team’s design process, and provide feedback. Your
final report does not need to be long, but needs to answer the following questions:

1. Show the final pipeline diagram

2. What is the post-synthesis critical path length? What sections of the processor does the critical
path pass through? Why is this the critical path?

3. Show a screenshot of the final floorplan

4. What is the post-place-and-route critical path length? What sections of the processor does the
critical path pass through? Why is this the critical path? If it is different than the post-synthesis
critical path, why?

5. What is the area utilization of the final design?

6. What is the Innovus-estimated power consumption of the final design?

7. What is the number of cycles that your design takes to run the benchmarks? What changes/optimizations
have you done to try and optimize for these tests?

8. Is there anything you would like to tell the staff before we grade your project?


If you worked with a partner you do not need separate reports. If you are having issues with your
partner please contact the GSI privately as soon as possible.



## Acknowledgement

This project is the result of the work of many EECS151/251 GSIs over the years including:
Written By:
- Nathan Narevsky (2014, 2017)
- Brian Zimmer (2014)
Modified By:
- John Wright (2015,2016)
- Ali Moin (2018)
- Arya Reais-Parsi (2019)
- Cem Yalcin (2019)
- Tan Nguyen (2020)
- Harrison Liew (2020)
- Sean Huang (2021)
- Daniel Grubb, Nayiri Krzysztofowicz, Zhaokai Liu (2021)