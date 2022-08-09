part of 'services.dart';

class ServiceMobile extends StatelessWidget {
  const ServiceMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical : 15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical:10),
              child: Text(
                "\nHizmetlerimiz",
                style: AppText.h1!.copyWith(
                  fontFamily: 'Montserrat',
                  color: Colors.black,
                  fontSize: 45,
                ),
              ),
            ),
            Text(
              'Ayrıntıları görüntülmek için kutucuklara tıklayınız.\n\n',
              style: AppText.h1!.copyWith(
                fontFamily: 'Montserrat',
                color: Colors.black,
                fontSize: 12,

              ),
            ),
            Space.y!,
            CarouselSlider.builder(
              itemCount: ServicesUtils.servicesTitles.length,
              itemBuilder: (BuildContext context, int itemIndex, int i) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _ServiceCard(
                    serviceIcon: ServicesUtils.servicesIcons[i],
                    serviceTitle: ServicesUtils.servicesTitles[i],
                    serviceDescription: ServicesUtils.servicesDescription[i],
                  ),
                ],
              ),
              options: CarouselOptions(
                viewportFraction: 0.92,
                height: width < 450 ? height * 0.4 : height * 0.4,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 2),
                enlargeCenterPage: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                enableInfiniteScroll: false,
              ),
            )
          ],
        ),
      ),
    );
  }
}
