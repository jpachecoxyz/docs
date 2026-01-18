#import "@preview/examine-ib:0.1.2": *

#show: conf.with(exam-id: [0000-0001])

#title-page(
    subject: [General Maintenance Technician Knowledge],
  level: [Higher Level],
  paper: [Paper 3],
  date: [5 July 2026],
  time-limit: [ No limit],
)

#mcq(
  [Which Shakespeare play features the characters Rosencrantz and Guildenstern?],
  [Macbeth],
  [Hamlet],
  [King Lear],
  [Othello],
)

#saq(
  [A city has recently implemented a smart traffic management system that uses real-time data from sensors and cameras to optimize traffic flow. The system also collects and stores driver movement data to improve future predictions.],
  (
    question-context: [Another city is considering the implementation of a smart traffic management system.],
    question: [What are two potential benefits of using real-time data in traffic systems?],
    points: 2,
    lines: 3,
  ),
  (
    question: [Explain one concern related to collecting and storing driver movement data.],
    points: 4,
    lines: 5,
  ),
)
