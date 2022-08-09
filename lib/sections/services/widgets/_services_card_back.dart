part of '../services.dart';

class _ServiceCardBackWidget extends StatelessWidget {
  const _ServiceCardBackWidget(
      {Key? key, required this.serviceDesc, required this.serviceTitle})
      : super(key: key);

  final String serviceDesc;
  final String serviceTitle;

  @override
  Widget build(BuildContext context) {

    final appProvider = Provider.of<AppProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          serviceDesc,
          style: AppText.l1,
        ),
        Divider(
          color: appProvider.isDark ? Colors.white : Colors.black38,
        ),
        SizedBox(
          height: AppDimensions.normalize(21),
          width: AppDimensions.normalize(80),
          child:  MaterialButton(
            color : Color(0xFFFF4820),
            hoverColor: AppTheme.c!.primary!.withAlpha(150),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
              side: BorderSide(
                color: AppTheme.c!.primary!,
              ),
            ),

            onPressed: () => openURL(
                "https://api.whatsapp.com/send?phone=905544143231&text=Arslan%20Arge%20yetkili%20hatt%C4%B1na%20mesaj%20atmak%20i%C3%A7in%20t%C4%B1klay%C4%B1n%C4%B1z."
            ),

            child: Padding(
              padding: Space.all(1, 0.45),
              child: Text(
                'BİZE ULAŞIN',
                style: AppText.l1b,
              ),
            ),
          ),
        )
      ],
    );
  }
}
