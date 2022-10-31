part of 'widgets-driver.dart';

class BannerMsj extends StatelessWidget {
  const BannerMsj({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          padding: const EdgeInsets.only(top: 8),
          alignment: Alignment.topCenter,
          height: 320,
          color: const Color.fromARGB(255, 119, 202, 63),
          child: const Text(
            'Are your ready to start the trip?',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ));
  }
}
class Destination extends StatelessWidget {
  const Destination({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: 0.9,
        builder: (_, controller) => Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    height: 3.5,
                    width: 35,
                  )
                ],
              ),
            ));
  }
}
	



