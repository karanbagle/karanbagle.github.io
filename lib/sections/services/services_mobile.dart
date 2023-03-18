part of 'services.dart';

class ServiceMobile extends StatelessWidget {
  const ServiceMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: Space.hf(4),
      child: Column(
        children: [
          const CustomSectionHeading(
            text: '\nWhat I can do?',
          ),
          const CustomSectionSubHeading(
            text: 'I may not be perfect but surely I\'m of some use :)\n\n',
          ),
          Space.y!,
          Wrap(
            spacing: width * 0.05,
            runSpacing: height * 0.05,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: ServicesUtils.servicesIcons
                .asMap()
                .entries
                .map(
                  (e) => _ServiceCard(
                    serviceIcon: ServicesUtils.servicesIcons[e.key],
                    serviceTitle: ServicesUtils.servicesTitles[e.key],
                    serviceDescription:
                        ServicesUtils.servicesDescription[e.key],
                  ),
                )
                .toList(),
          ),
          // New section added below
          Column(
            children: [
              const CustomSectionHeading(
            text: '\nExperience',
          ),
          const CustomSectionSubHeading(
            text: 'Little bit about my profesional background\n\n',
          ),
          Space.y!,
          Wrap(
            spacing: width * 0.05,
            runSpacing: height * 0.05,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: ServicesUtils.experienceIcons
                .asMap()
                .entries
                .map(
                  (e) => _ServiceCard(
                    serviceIcon: ServicesUtils.experienceIcons[e.key],
                    serviceTitle: ServicesUtils.jobTitles[e.key],
                    serviceDescription:
                        ServicesUtils.jobDescription[e.key],
                  ),
                )
                .toList(),
          ),
            ],
          ),
        ],
      ),
    );
  }
}
