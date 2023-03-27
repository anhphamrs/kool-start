import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kool/dashboard_screen.dart';

import '../Profile/profile_screen.dart';
import '../meet/meeting_screen.dart';

class TabBarMWidget extends StatefulWidget {
  const TabBarMWidget({super.key});
  @override
  _TabBarMWidgetState createState() => _TabBarMWidgetState();
}

class _TabBarMWidgetState extends State<TabBarMWidget> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 700,
      bottom: 0,
      left: 0,
      child: Container(
        color: const Color(0xFFFFFFFF),
        child: Column(children: [
          const SizedBox(
            height: 31,
          ),
          Row(
            children: [
              const SizedBox(width: 30),
              IconButton(
                icon: SvgPicture.string(
                    '''<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<g clip-path="url(#clip0_169_102)">
<path d="M7 0H4C1.79086 0 0 1.79086 0 4V7C0 9.20914 1.79086 11 4 11H7C9.20914 11 11 9.20914 11 7V4C11 1.79086 9.20914 0 7 0Z" fill="#CBD5E1"/>
<path d="M20 0H17C14.7909 0 13 1.79086 13 4V7C13 9.20914 14.7909 11 17 11H20C22.2091 11 24 9.20914 24 7V4C24 1.79086 22.2091 0 20 0Z" fill="#CBD5E1"/>
<path d="M7 13H4C1.79086 13 0 14.7909 0 17V20C0 22.2091 1.79086 24 4 24H7C9.20914 24 11 22.2091 11 20V17C11 14.7909 9.20914 13 7 13Z" fill="#CBD5E1"/>
<path d="M20 13H17C14.7909 13 13 14.7909 13 17V20C13 22.2091 14.7909 24 17 24H20C22.2091 24 24 22.2091 24 20V17C24 14.7909 22.2091 13 20 13Z" fill="#CBD5E1"/>
</g>
<defs>
<clipPath id="clip0_169_102">
<rect width="24" height="24" fill="white"/>
</clipPath>
</defs>
</svg>

                    '''),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DashBoardScreen()),
                  );
                },
              ),
              const SizedBox(width: 50),
              IconButton(
                icon: SvgPicture.string(
                    '''<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<g clip-path="url(#clip0_163_69)">
<path d="M0 19C0.00158786 20.3256 0.528882 21.5964 1.46622 22.5338C2.40356 23.4711 3.67441 23.9984 5 24H19C20.3256 23.9984 21.5964 23.4711 22.5338 22.5338C23.4711 21.5964 23.9984 20.3256 24 19V10H0V19ZM17 14.5C17.2967 14.5 17.5867 14.588 17.8334 14.7528C18.08 14.9176 18.2723 15.1519 18.3858 15.426C18.4993 15.7001 18.5291 16.0017 18.4712 16.2926C18.4133 16.5836 18.2704 16.8509 18.0607 17.0607C17.8509 17.2704 17.5836 17.4133 17.2926 17.4712C17.0017 17.5291 16.7001 17.4994 16.426 17.3858C16.1519 17.2723 15.9176 17.08 15.7528 16.8334C15.588 16.5867 15.5 16.2967 15.5 16C15.5 15.6022 15.658 15.2206 15.9393 14.9393C16.2206 14.658 16.6022 14.5 17 14.5ZM12 14.5C12.2967 14.5 12.5867 14.588 12.8334 14.7528C13.08 14.9176 13.2723 15.1519 13.3858 15.426C13.4994 15.7001 13.5291 16.0017 13.4712 16.2926C13.4133 16.5836 13.2704 16.8509 13.0607 17.0607C12.8509 17.2704 12.5836 17.4133 12.2926 17.4712C12.0017 17.5291 11.7001 17.4994 11.426 17.3858C11.1519 17.2723 10.9176 17.08 10.7528 16.8334C10.588 16.5867 10.5 16.2967 10.5 16C10.5 15.6022 10.658 15.2206 10.9393 14.9393C11.2206 14.658 11.6022 14.5 12 14.5ZM7 14.5C7.29667 14.5 7.58668 14.588 7.83336 14.7528C8.08003 14.9176 8.27229 15.1519 8.38582 15.426C8.49935 15.7001 8.52906 16.0017 8.47118 16.2926C8.4133 16.5836 8.27044 16.8509 8.06066 17.0607C7.85088 17.2704 7.58361 17.4133 7.29264 17.4712C7.00166 17.5291 6.70006 17.4994 6.42597 17.3858C6.15189 17.2723 5.91762 17.08 5.7528 16.8334C5.58797 16.5867 5.5 16.2967 5.5 16C5.5 15.6022 5.65804 15.2206 5.93934 14.9393C6.22064 14.658 6.60218 14.5 7 14.5Z" fill="#CBD5E1"/>
<path d="M19 2H18V1C18 0.734784 17.8946 0.48043 17.7071 0.292893C17.5196 0.105357 17.2652 0 17 0C16.7348 0 16.4804 0.105357 16.2929 0.292893C16.1054 0.48043 16 0.734784 16 1V2H8V1C8 0.734784 7.89464 0.48043 7.70711 0.292893C7.51957 0.105357 7.26522 0 7 0C6.73478 0 6.48043 0.105357 6.29289 0.292893C6.10536 0.48043 6 0.734784 6 1V2H5C3.67441 2.00159 2.40356 2.52888 1.46622 3.46622C0.528882 4.40356 0.00158786 5.67441 0 7L0 8H24V7C23.9984 5.67441 23.4711 4.40356 22.5338 3.46622C21.5964 2.52888 20.3256 2.00159 19 2Z" fill="#CBD5E1"/>
</g>
<defs>
<clipPath id="clip0_163_69">
<rect width="24" height="24" fill="white"/>
</clipPath>
</defs>
</svg>


                    '''),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MeetingScreen()),
                  );
                },
              ),
              const SizedBox(
                width: 50,
              ),
              IconButton(
                icon: SvgPicture.string(
                    '''<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<g clip-path="url(#clip0_169_301)">
<path d="M19.6751 2.75802C18.4081 1.70368 16.9364 0.923183 15.3529 0.46572C13.7693 0.00825769 12.1081 -0.116257 10.4741 0.100021C7.45114 0.492739 4.69096 2.02119 2.754 4.37503C0.817033 6.72887 -0.151521 9.73164 0.0450001 12.7736C0.241521 15.8156 1.58838 18.6688 3.81211 20.7539C6.03584 22.8389 8.96974 23.9995 12.0181 24H19.0001C20.3257 23.9984 21.5965 23.4711 22.5339 22.5338C23.4712 21.5965 23.9985 20.3256 24.0001 19V11.309V11.246C23.8942 9.61147 23.4561 8.01567 22.7125 6.55623C21.9688 5.09679 20.9353 3.80438 19.6751 2.75802ZM8.00008 7.00002H12.0001C12.2653 7.00002 12.5196 7.10538 12.7072 7.29291C12.8947 7.48045 13.0001 7.7348 13.0001 8.00002C13.0001 8.26524 12.8947 8.51959 12.7072 8.70713C12.5196 8.89466 12.2653 9.00002 12.0001 9.00002H8.00008C7.73486 9.00002 7.48051 8.89466 7.29297 8.70713C7.10543 8.51959 7.00008 8.26524 7.00008 8.00002C7.00008 7.7348 7.10543 7.48045 7.29297 7.29291C7.48051 7.10538 7.73486 7.00002 8.00008 7.00002ZM16.0001 17H8.00008C7.73486 17 7.48051 16.8947 7.29297 16.7071C7.10543 16.5196 7.00008 16.2652 7.00008 16C7.00008 15.7348 7.10543 15.4805 7.29297 15.2929C7.48051 15.1054 7.73486 15 8.00008 15H16.0001C16.2653 15 16.5196 15.1054 16.7072 15.2929C16.8947 15.4805 17.0001 15.7348 17.0001 16C17.0001 16.2652 16.8947 16.5196 16.7072 16.7071C16.5196 16.8947 16.2653 17 16.0001 17ZM16.0001 13H8.00008C7.73486 13 7.48051 12.8947 7.29297 12.7071C7.10543 12.5196 7.00008 12.2652 7.00008 12C7.00008 11.7348 7.10543 11.4805 7.29297 11.2929C7.48051 11.1054 7.73486 11 8.00008 11H16.0001C16.2653 11 16.5196 11.1054 16.7072 11.2929C16.8947 11.4805 17.0001 11.7348 17.0001 12C17.0001 12.2652 16.8947 12.5196 16.7072 12.7071C16.5196 12.8947 16.2653 13 16.0001 13Z" fill="#316D86"/>
</g>
<defs>
<clipPath id="clip0_169_301">
<rect width="24" height="24" fill="white"/>
</clipPath>
</defs>
</svg>



                    '''),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MeetingScreen()),
                  );
                },
              ),
              const SizedBox(width: 50),
              IconButton(
                icon: SvgPicture.string(
                    '''<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M12 12C15.3137 12 18 9.31371 18 6C18 2.68629 15.3137 0 12 0C8.68629 0 6 2.68629 6 6C6 9.31371 8.68629 12 12 12Z" fill="#CBD5E1"/>
<path d="M12 14C9.61386 14.0026 7.32622 14.9517 5.63896 16.639C3.95171 18.3262 3.00265 20.6139 3 23C3 23.2652 3.10536 23.5196 3.29289 23.7071C3.48043 23.8946 3.73478 24 4 24H20C20.2652 24 20.5196 23.8946 20.7071 23.7071C20.8946 23.5196 21 23.2652 21 23C20.9974 20.6139 20.0483 18.3262 18.361 16.639C16.6738 14.9517 14.3861 14.0026 12 14Z" fill="#CBD5E1"/>
</svg>


              '''),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfileScreen()),
                  );
                },
              ),
            ],
          )
        ]),
      ),
    );
  }
}
