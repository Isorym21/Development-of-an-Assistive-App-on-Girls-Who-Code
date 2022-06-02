import 'package:flutter/material.dart';
import 'dart:math';


class SpecialNeeds extends StatelessWidget {

  final park =LandMarks(title: 'Bloomingdale Park',//ISORY SANTANA
      description: 'Bloomingdale Park is praised as one of the best inclusive playgrounds in all of New York. It has a large flat playground with cushioned flooring and safety fences. The beautiful train shaped play area is full of exciting sensory activities that are available to all kids with a splash area nearby. There is also a basketball court and grass area open for every kid to enjoy.',
      image:'https://www.nycgovparks.org/photo_gallery/full_size/24668.jpg');

  final east=LandMarks(title: 'East 110th Street Playground',//ISORY SANTANA
      description: ' East 110th Street has a simple flat playground that every kid can easily have access to. This Central Park playground is focused on fostering imagination and creativity with its simple wooden structures and water displays that can become anything in your kids’ minds. The structures have accessible ramps and a layout that make it exciting for any kid to play around in.',
      image:'https://assets.centralparknyc.org/media/images/_1650x767_crop_center-center_none/west-110-street-playground.jpeg');

  final flower=LandMarks(title: 'Little Flower Playground',//ISORY SANTANA
      description: 'The Little Flower Playground is the perfect place to take your kids out for some beautiful scenery to accompany their playing. The playground is surrounded by lovely trees, and the design of the play structures also honors the nature surrounding the park. Everything is very accessible including a basketball court and walking area, making it a place everyone in the family can enjoy. ',
      image:'https://www.nycgovparks.org/photo_gallery/full_size/23769.jpg');

  final matthew=LandMarks(title: 'Matthew P. Sapolin Playground',//ISORY SANTANA
      description: 'Formerly called Playground 70, the Matthew P. Sapolin Playground is a fully accessible park that kids can enjoy no matter what capabilities they have. It has a children’s garden with accessible bridges, musical instruments built into the play area, and basketball hoops with adjustable backstops for those in wheelchairs. It\’s one of the top inclusive playgrounds in the city, and will be a joy for any family to visit.',
      image:'https://www.nycgovparks.org/photo_gallery/full_size/9573.jpg');

  final robert =LandMarks(title: 'Robert Bendheim Playground',//ISORY SANTANA
  description: 'The Robert Bendheim Playground is located in Central Park, and has been recently renovated to better meet safety and accessibility standards. It has many inclusive features including adaptive swings, water features, sand tables, and sound generating play structures to help stimulate kids’ senses. Everything there is meant to be universally accessible for any kid to enjoy.',
  image:'https://livingnewdeal.org/wp-content/uploads/2016/10/bendheim-playground-l.jpg');

  final dutch =LandMarks(title: 'Dutch Kills Playground',//ISORY SANTANA
  description: 'Dutch Kills Playground is an excellent location to take kids, especially those who need more open space or sensory activities. This playground includes several spinning features as well as things your kids can touch and learn from. It has padded flooring to avoid injuries and also features open spaces where your kids can run and create their own fun.',
  image:'https://lh5.googleusercontent.com/p/AF1QipN9XHutGaI7VXUeajNAnptBD4XnWGC2XBGE0f7U=w1200-h1301-p-k-no');

  final jurassic =LandMarks(title: 'Jurassic Playground',//ISORY SANTANA
     description: 'If your kids love dinosaurs and want to go to the park, this is the perfect combination that anyone can enjoy. Jurassic Playground honors the Jurassic period for which it’s named with images and structures dedicated to all kinds of dinosaurs. The playground is also equipped with safety surfacing and other play equipment that makes the park accessible to most any kid.',
      image:'https://i.ytimg.com/vi/fxN99WU4S4M/maxresdefault.jpg');

  final laurelton =LandMarks(title: 'Laurelton Playground',//ISORY SANTANA
      description: 'Laurelton Playground is a brightly colored park with play cars and structures that everyone can enjoy. The padded ground and flat surfaces make the area accessible for any kid to play in. It has several sensory activities and cars that will make kids feel like they’re on a real road. The car theme opens your kids’ imagination and allows them to explore the park in a more unique way.',
      image:'https://www.playlsi.com/4939ff/globalassets/slideshows-design-files/playgrounds/laurelton-park/laurelton-h-111.jpg?width=905&height=450&mode=crop');

  final stroud  =LandMarks(title: 'Elizabeth Stroud Playground',//ISORY SANTANA
      description: 'Elizabeth Stroud Playground is a bright boat themed park that will stimulate your kids creativity and allow them to play no matter what their accessibility limits are. It is full of interactive gears and the entire play structure is shaped like a boat allowing your kids to be pirates and sailors. Your kids will have a great time in this playground with endless ways to be entertained.',
      image:'https://www.nymetroparents.com/columnpic2/accessible-playgrounds.jpg');

  final village =LandMarks(title: 'Sandbox Village at Pier 6',//ISORY SANTANA
      description: 'If your kids love playing in the sand and you want to see what other kinds of inclusive playgrounds are in the city, this play area will entertain them for hours with tons of fun sand activities. This soft sand will engage your kids’ senses and allow them to let out their creativity with the freedom to form anything they can make up in their minds. There are plenty of water elements and fun structures to give kids a fun day out.',
      image:'https://landperspectives.files.wordpress.com/2012/04/brooklyn-bridge-park-playground-pier-6-c.jpg');

  List<LandMarks> SpecialNeedslandmarks=[];bool x=true;

  @override//ISORY SANTANA
  Widget build(BuildContext context) {

    if(x){SpecialNeedslandmarks.add(park);
    SpecialNeedslandmarks.add(east);//ISORY SANTANA
    SpecialNeedslandmarks.add( flower );
    SpecialNeedslandmarks.add(matthew );
    SpecialNeedslandmarks.add( robert );
    SpecialNeedslandmarks.add( dutch );//ISORY SANTANA
    SpecialNeedslandmarks.add( jurassic  );
    SpecialNeedslandmarks.add(  laurelton );
    SpecialNeedslandmarks.add( stroud );
    SpecialNeedslandmarks.add( village );

    x=false;
    }

    return Scaffold(//ISORY SANTANA
      appBar: AppBar(title: Text('10 Accessible Playgrounds '),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [//ISORY SANTANA
          Text('Inclusive Playgrounds for Kids with Special Needs in New York'),
          Expanded(child: ListView.builder(
            itemCount:   SpecialNeedslandmarks.length,
            itemBuilder: (BuildContext ctxt, int index){
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage( SpecialNeedslandmarks[index].image),
                ),
                title : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text( SpecialNeedslandmarks[index].title),
                ),
//ISORY SANTANA
                subtitle: Text(SpecialNeedslandmarks[index].description+'\n'),
              );
            },
          ))
        ,OutlinedButton(onPressed: (){
            Navigator.pop(context, '/SpecialNeeds');//ISORY SANTANA
          }, child: Text('Back')),
        ],
      ),
    );
  }
}

class LandMarks {
  String title, description, image;
  LandMarks({this.title='', this.description='', this.image=''});
}