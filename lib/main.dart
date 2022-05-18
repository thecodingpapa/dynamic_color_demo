import 'package:dynamic_color_demo/circular_border_avatar.dart';
import 'package:dynamic_color_demo/my_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const DynamicColorDemo());
}

const seedColor = Color(0xffc1e945);
const outPadding = 32.0;

class DynamicColorDemo extends StatelessWidget {
  const DynamicColorDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: seedColor, brightness: Brightness.dark),
        textTheme: GoogleFonts.notoSansNKoTextTheme(
          Theme.of(context)
              .textTheme, // If this is not set, then ThemeData.light().textTheme is used.
        ),
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selected = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: Theme.of(context).colorScheme.primary),
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.white10,
              Colors.white10,
              Colors.black12,
              Colors.black12,
              Colors.black12,
              Colors.black12,
            ],
          )),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selected,
            elevation: 0,
            onTap: (selected) {
              setState(() {
                _selected = selected;
              });
            },
            selectedItemColor: Theme.of(context).colorScheme.onPrimary,
            unselectedItemColor:
                Theme.of(context).colorScheme.onPrimaryContainer,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: "",
                  backgroundColor: Colors.transparent),
              BottomNavigationBarItem(
                  icon: Icon(Icons.newspaper_outlined),
                  label: "",
                  backgroundColor: Colors.transparent),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline),
                  label: "",
                  backgroundColor: Colors.transparent),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications_outlined),
                  label: "",
                  backgroundColor: Colors.transparent),
            ],
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(outPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.ac_unit,
                        color: Theme.of(context).colorScheme.onPrimary,
                        size: 32,
                      ),
                      Expanded(child: Container()),
                      CircularBorderAvatar(
                        'https://randomuser.me/api/portraits/women/26.jpg',
                        borderColor: Theme.of(context).colorScheme.onPrimary,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: outPadding,
                  ),
                  Text(
                    '안녕! 프로그래머,',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '6개의 매세지가 기다려요.',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary),
                  ),
                  const SizedBox(
                    height: outPadding,
                  ),
                  const _TopCard(),
                  const SizedBox(
                    height: outPadding,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Monthly Review',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                  fontWeight: FontWeight.bold),
                        ),
                      ),
                      _ActionBtn()
                    ],
                  ),
                  const SizedBox(
                    height: outPadding,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Flexible(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Flexible(
                              flex: 3,
                              child: MyContainer(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '22',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimaryContainer,
                                              fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'done',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimaryContainer),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: outPadding,
                            ),
                            Flexible(
                              flex: 2,
                              child: MyContainer(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '7',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimaryContainer,
                                              fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'in progress',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimaryContainer),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )),
                        const SizedBox(
                          width: outPadding,
                        ),
                        Flexible(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Flexible(
                              flex: 2,
                              child: MyContainer(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '10',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimaryContainer,
                                              fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'on going',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimaryContainer),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: outPadding,
                            ),
                            Flexible(
                              flex: 3,
                              child: MyContainer(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '12',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimaryContainer,
                                              fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'waiting for review',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimaryContainer),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16)
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class _ActionBtn extends StatelessWidget {
  const _ActionBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 32,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).colorScheme.tertiary,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.shadow.withAlpha(130),
              blurRadius: 8.0, // soften the shadow
              spreadRadius: 4.0, //extend the shadow
              offset: const Offset(
                8.0, // Move to right 10  horizontally
                8.0, // Move to bottom 10 Vertically
              ),
            ),
            BoxShadow(
              color: Colors.white.withAlpha(130),
              blurRadius: 8.0, // soften the shadow
              spreadRadius: 4.0, //extend the shadow
              offset: const Offset(
                -8.0, // Move to right 10  horizontally
                -8.0, // Move to bottom 10 Vertically
              ),
            ),
          ]),
      child: Icon(
        Icons.calendar_today_rounded,
        color: Theme.of(context).colorScheme.onTertiary,
        size: 16,
      ),
    );
  }
}

class _TopCard extends StatelessWidget {
  const _TopCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Your New Design is here!',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Theme.of(context).colorScheme.onPrimaryContainer),
          ),
          Text(
            'Victor and Wonjun',
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Theme.of(context).colorScheme.onPrimaryContainer),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 32,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  width: 32,
                  top: 0,
                  bottom: 0,
                  child: CircularBorderAvatar(
                    'https://randomuser.me/api/portraits/women/68.jpg',
                    borderColor:
                        Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                ),
                Positioned(
                  left: 22,
                  width: 32,
                  top: 0,
                  bottom: 0,
                  child: CircularBorderAvatar(
                    'https://randomuser.me/api/portraits/women/90.jpg',
                    borderColor:
                        Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Text(
                    'now',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
