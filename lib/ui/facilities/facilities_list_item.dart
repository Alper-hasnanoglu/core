import 'package:flutter/material.dart';

class FacilityItem extends StatelessWidget {
  const FacilityItem(this.facility, {super.key});
  final Facilities facility;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        width: double.infinity,
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 200,width: 2000, child:Image.asset(facility.image,width: 250,)),
                const SizedBox(height: 10),
                Text(facility.title),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(facility.subtitle),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      child: const Text('Available'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Facilities {
  final int id;

  final String title, state, subtitle, description, image;

  const Facilities({
    required this.id,
    required this.state,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.image,
  });

  @override
  String toString() => 'Facilities(id: $id, image: $image)';
}

// list of Facilitiess
const List<Facilities> facilitiess = [
  Facilities(
    id: 1,
    state: "available",
    title: "Seminar Hall",
    subtitle: "أحجز الآن ضمن كور اسطنبول",
    image: "images/free.jpg",
    description:
    "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوس أليكيوا.",
  ),
  Facilities(
    id: 2,
    state: "available",
    title: "Brainstorm Hall",
    subtitle: "أحجز الآن ضمن اجور مخفضة",
    image: "images/brainstorm.png",
    description:
    "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتاجنا أليكيوا.",
  ),
  Facilities(
    id: 3,
    state: "available",
    title: "Conference Hall",
    subtitle: "لنقلك للعالم الافتراضي",
    image: "images/training.png",
    description:
    "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج ديونتيوت لابوري ات دولار ماجنا أليكيوا.",
  ),
  Facilities(
    id: 4,
    state: "available",
    title: "Conference Hall",
    subtitle: "لساعات استماع طويلة",
    image: "images/conference.png",
    description:
    "لوريم ايبسوايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.",
  ),
  Facilities(
    id: 5,
    state: "available",
    title: "Small Hall",
    subtitle: "سجل اللحظات المهمة حولك",
    image: "images/small.jpg",
    description:
    "لوريم ايبسوم دولا أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.",
  ),
  Facilities(
    id: 6,
    state: "available",
    title: "Free Hall",
    subtitle: "بجودة ودقة صورة عالية",
    image: "images/free.jpeg",
    description:
    "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت لابوري ات دولار ماجنا أليكيوا.",
  ),
];




