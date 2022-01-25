import 'package:meals/models/category.dart';
import 'package:meals/models/founders_model.dart';
import 'package:meals/models/projects.dart';
import 'package:meals/models/service_model.dart';
import 'models/news_feed.dart';

const DUMMY_CATEGORIES = const [
  Category(
      id: '1',
      title: 'Anshu Jaiswal',
      imageUrl: 'assets/IMG_20200517_081656.jpg'),
  Category(
      id: '2',
      title: 'Kriti Kumari',
      imageUrl: 'assets/IMG_20200517_081727.jpg'),
  Category(
      id: '3',
      title: 'Bikki Singh',
      imageUrl: 'assets/IMG_20200517_081750.jpg'),
  Category(
      id: '4',
      title: 'Amisha Jaiswal',
      imageUrl: 'assets/IMG_20200517_081821.jpg'),
  Category(
      id: '5',
      title: 'Sneha Kumari',
      imageUrl: 'assets/IMG_20200517_081842.jpg'),
  Category(
      id: '6',
      title: 'Tanvi Singh',
      imageUrl: 'assets/IMG_20200517_081902.jpg'),
  Category(
      id: '7',
      title: 'Sandhya Kumari',
      imageUrl: 'assets/IMG_20200517_081921.jpg'),
  Category(
      id: '8', title: 'Neha Singh', imageUrl: 'assets/IMG_20200517_081942.jpg'),
  Category(
      id: '9',
      title: 'Shilpa Kumari',
      imageUrl: 'assets/IMG_20200517_082018.jpg'),
  Category(
      id: '10',
      title: 'Anushka Raj',
      imageUrl: 'assets/IMG_20200517_082038.jpg'),
  Category(
      id: '11',
      title: 'Kriti Srivastava',
      imageUrl: 'assets/IMG_20200517_082057.jpg'),
  Category(
      id: '12',
      title: 'Manish Sona',
      imageUrl: 'assets/IMG_20200517_082116.jpg'),
  Category(
      id: '13',
      title: 'Sujeet Kumar',
      imageUrl: 'assets/IMG_20200517_082141.jpg'),
  Category(
      id: '14',
      title: 'Anupam Kumar Singh',
      imageUrl: 'assets/IMG_20200517_082201.jpg'),
  Category(
      id: '15',
      title: 'Sinny Kumari',
      imageUrl: 'assets/IMG_20200517_082223.jpg'),
  Category(
      id: '16', title: 'Kajal', imageUrl: 'assets/IMG_20200517_082243.jpg'),
  Category(
      id: '17',
      title: 'Rahul Singh',
      imageUrl: 'assets/IMG_20200517_082311.jpg'),
  Category(
      id: '18', title: 'Rahul Roy', imageUrl: 'assets/IMG_20200517_082329.jpg'),
  Category(
      id: '19',
      title: 'Babita Roy',
      imageUrl: 'assets/IMG_20200517_082346.jpg'),
  Category(
      id: '20',
      title: 'Shivam Kr.Roy',
      imageUrl: 'assets/IMG_20200517_082404.jpg'),
  Category(
      id: '21', title: 'Ankit Raj', imageUrl: 'assets/IMG_20200517_082439.jpg'),
  Category(
      id: '22',
      title: 'Vishal Kumar',
      imageUrl: 'assets/IMG_20200517_082459.jpg'),
  Category(
      id: '23',
      title: 'Krishna Nandan Kumar',
      imageUrl: 'assets/IMG_20200517_082525.jpg'),
  Category(
      id: '24',
      title: 'Sweta Singh',
      imageUrl: 'assets/IMG_20200517_082553.jpg'),
  Category(
      id: '25', title: 'Suman', imageUrl: 'assets/IMG_20200517_082613.jpg'),
  Category(
      id: '26',
      title: 'Khushboo Singh',
      imageUrl: 'assets/IMG_20200517_082631.jpg'),
  Category(
      id: '27', title: 'Swati Ray', imageUrl: 'assets/IMG_20200517_082647.jpg'),
  Category(
      id: '28',
      title: 'Samir Kumar',
      imageUrl: 'assets/IMG_20200517_082706.jpg'),
  Category(
      id: '29', title: 'Manisha', imageUrl: 'assets/IMG_20200517_082722.jpg'),
  Category(
      id: '20', title: 'Raushan', imageUrl: 'assets/IMG_20200517_082744.jpg'),
  Category(
      id: '31',
      title: 'Priyanshu Raj',
      imageUrl: 'assets/IMG_20200517_082803.jpg'),
  Category(
      id: '32',
      title: 'Deep Ranjan',
      imageUrl: 'assets/IMG_20200517_082820.jpg'),
  Category(
      id: '33',
      title: 'Saloni Kumari',
      imageUrl: 'assets/IMG_20200517_082838.jpg'),
  Category(
      id: '34', title: 'Almas', imageUrl: 'assets/IMG_20200517_082859.jpg'),
  Category(
      id: '35',
      title: 'Prateek Srivastava',
      imageUrl: 'assets/IMG_20200517_082925.jpg'),
  Category(
      id: '36',
      title: 'Ruby Kumari',
      imageUrl: 'assets/IMG_20200517_082953.jpg'),
  Category(
      id: '37',
      title: 'Sawan Kumar',
      imageUrl: 'assets/IMG_20200517_083034.jpg'),
  Category(
      id: '38',
      title: 'Utpal Patel',
      imageUrl: 'assets/IMG_20200517_083018.jpg'),
];

const DUMMY_POST = const [
  NewsFeed(
      title: "Khabai Tech",
      imgUrl: 'assets/IMG_20200522_121107.jpg',
      subtitle: '5 min ago',
      like: '120',
      comment: '10',
      description:
          'THIS IS THE WORST SITUATION OF THE WORLD I HAVE EVER SEEN?'),
  NewsFeed(
      title: "Khabai Tech",
      imgUrl: 'assets/IMG_20200522_121128.jpg',
      subtitle: '50 min ago',
      like: '120',
      comment: '10',
      description:
          'THIS IS THE WORST SITUATION OF THE WORLD I HAVE EVER SEEN?'),
  NewsFeed(
      title: "Khabai Tech",
      imgUrl: 'assets/IMG_20200522_121152.jpg',
      subtitle: '1 Day ago',
      like: '120',
      comment: '10',
      description:
          'THIS IS THE WORST SITUATION OF THE WORLD I HAVE EVER SEEN?'),
  NewsFeed(
      title: "Khabai Tech",
      imgUrl: 'assets/IMG_20200522_121216.jpg',
      subtitle: '10 Days ago',
      like: '120',
      comment: '10',
      description:
          'THIS IS THE WORST SITUATION OF THE WORLD I HAVE EVER SEEN?'),
  NewsFeed(
      title: "Khabai Tech",
      imgUrl: 'assets/IMG_20200522_121237.jpg',
      subtitle: 'Last Month',
      comment: '10',
      like: '120',
      description:
          'THIS IS THE WORST SITUATION OF THE WORLD I HAVE EVER SEEN?'),
  NewsFeed(
      title: "Khabai Tech",
      imgUrl: 'assets/IMG_20200522_121259.jpg',
      subtitle: '3 Months ago',
      like: '120',
      comment: '10',
      description:
          'THIS IS THE WORST SITUATION OF THE WORLD I HAVE EVER SEEN?'),
  NewsFeed(
      title: "Khabai Tech",
      imgUrl: 'assets/IMG_20200522_121331.jpg',
      subtitle: '4 Months ago',
      like: '120',
      comment: '10',
      description:
          'THIS IS THE WORST SITUATION OF THE WORLD I HAVE EVER SEEN?'),
  NewsFeed(
      title: "Khabai Tech",
      imgUrl: 'assets/IMG_20200522_121404.jpg',
      subtitle: '8 Months ago',
      like: '120',
      comment: '10',
      description:
          'THIS IS THE WORST SITUATION OF THE WORLD I HAVE EVER SEEN?'),
  NewsFeed(
      title: "Khabai Tech",
      imgUrl: 'assets/IMG_20200522_121439.jpg',
      subtitle: 'Last Year',
      comment: '10',
      like: '120',
      description:
          'THIS IS THE WORST SITUATION OF THE WORLD I HAVE EVER SEEN?'),
];

const DUMMY_SERVICES = const [
  Service(
      title: 'Web Development',
      description: '',
      imgUrl: 'assets/IMG_20200517_082404.jpg',
      projects: '200+projects Completed'),
  Service(
      title: 'Softwares',
      description: '',
      imgUrl: 'assets/IMG_20200517_082404.jpg',
      projects: '60+projects Completed'),
  Service(
      title: 'Portfolio',
      description: '',
      imgUrl: 'assets/IMG_20200517_082404.jpg',
      projects: '100+projects Completed'),
  Service(
      title: 'Digital Gallery',
      description: '',
      imgUrl: 'assets/IMG_20200517_082404.jpg',
      projects: '25+projects Completed'),
  Service(
      title: 'Digital Invitation',
      description: '',
      imgUrl: 'assets/IMG_20200517_082404.jpg',
      projects: '50+projects Completed'),
  Service(
      title: 'Search Engine Optimization',
      description: '',
      imgUrl: 'assets/IMG_20200517_082404.jpg',
      projects: '180+projects Completed'),
  Service(
      title: 'Digital Marketing',
      description: '',
      imgUrl: 'assets/IMG_20200517_082404.jpg',
      projects: '20+projects Completed'),
  Service(
      title: 'Graphics Design',
      description: '',
      imgUrl: 'assets/IMG_20200517_082404.jpg',
      projects: '65+projects Completed'),
  Service(
      title: 'AI & ML',
      description: '',
      imgUrl: 'assets/IMG_20200517_082404.jpg',
      projects: '10+projects Completed'),
];

const DUMMY_PROJECTS = const [
  Projects(imgUrl: 'assets/IMG_20200522_114843.jpg'),
  Projects(imgUrl: 'assets/IMG_20200522_114914.jpg'),
  Projects(imgUrl: 'assets/IMG_20200522_114947.jpg'),
  Projects(imgUrl: 'assets/IMG_20200522_115019.jpg'),
  Projects(imgUrl: 'assets/IMG_20200522_115041.jpg'),
  Projects(imgUrl: 'assets/IMG_20200522_115134.jpg'),
  Projects(imgUrl: 'assets/IMG_20200522_115205.jpg'),
  Projects(imgUrl: 'assets/IMG_20200522_115228.jpg'),
  Projects(imgUrl: 'assets/IMG_20200522_115306.jpg'),
  Projects(imgUrl: 'assets/IMG_20200522_115331.jpg'),
  Projects(imgUrl: 'assets/IMG_20200522_115407.jpg'),
  Projects(imgUrl: 'assets/IMG_20200522_115440.jpg'),
  Projects(imgUrl: 'assets/IMG_20200522_115503.jpg'),
  Projects(imgUrl: 'assets/IMG_20200522_115629.jpg'),
  Projects(imgUrl: 'assets/IMG_20200522_115653.jpg'),
  Projects(imgUrl: 'assets/IMG_20200522_115728.jpg'),
  Projects(imgUrl: 'assets/IMG_20200522_115753.jpg'),
  Projects(imgUrl: 'assets/IMG_20200522_115851.jpg'),
  Projects(imgUrl: 'assets/IMG_20200522_115943.jpg')
];

const FOUNDERS = const [
  FoundersModel(
      name: 'Prince Chauhan',
      designation: 'CEO/Founder',
      email: 'ceo@khabaitech.com',
      imgUrl: 'assets/IMG_20200523_094248.jpg'),
  FoundersModel(
      name: 'Vishwak Sen',
      designation: 'CO-Founder',
      email: 'learn@khabaitech.com',
      imgUrl: 'assets/IMG_20200523_094224.jpg'),
];
