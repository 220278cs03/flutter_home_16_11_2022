import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: const Color(0xffEDF3F3),
            body: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 36,
                      width: 300,
                      margin: const EdgeInsets.only(top: 49, left: 24),
                      child: TextFormField(
                        style:
                            const TextStyle(fontSize: 16, color: Colors.black),
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color(0xffFFFFFF),
                          prefixIcon:
                              Icon(Icons.search, color: Color(0xff7F8298)),
                          hintText: "Search",
                          hintStyle: TextStyle(
                              color: Color(0xff6C6F82),
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 2, horizontal: 16),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 49, right: 24),
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                            color: Color(0xff273131),
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 24, right: 24),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("PEOPLE TO FOLLOW",
                            style: TextStyle(
                                color: Color(0xff6C6F82),
                                fontSize: 12,
                                fontWeight: FontWeight.w500)),
                        Row(
                          children: const [
                            Text("See more",
                                style: TextStyle(
                                    color: Color(0xff18BCA8),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500)),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Color(0xff18BCA8),
                              size: 12,
                            )
                          ],
                        ),
                      ]),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  height: 224,
                  color: Colors.white,
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 16, left: 24),
                              height: 36,
                              width: 36,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://thumbs.dreamstime.com/b/happy-smiling-geek-hipster-beard-man-cool-avatar-geek-man-avatar-104871313.jpg"),
                                      fit: BoxFit.cover),
                                  color: Colors.blue,
                                  shape: BoxShape.circle),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 12, top: 18),
                                  child: Text(
                                    "Jacob Jones",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 12, top: 5),
                                  child: Text(
                                    "💻 Growth Hacker at Abine Blur LLC",
                                    style: TextStyle(
                                        color: Color(0xff6C6F82),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 50, right: 24, top: 22),
                              height: 24,
                              width: 66,
                              decoration: BoxDecoration(
                                  color: index == 1
                                      ? Colors.white
                                      : const Color(0xffEDF3F3),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8)),
                                  border: index == 1
                                      ? Border.all(
                                          color: const Color(0xffEDF3F3),
                                          width: 1)
                                      : Border.all(color: Colors.transparent)),
                              child: Center(
                                child: index == 1
                                    ? const Text(
                                        "Following",
                                        style: TextStyle(
                                            color: Color(0xff273131),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      )
                                    : const Text(
                                        "Follow",
                                        style: TextStyle(
                                            color: Color(0xff273131),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                              ),
                            )
                          ],
                        );
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 24, right: 24),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("RECOMMENDED EVENTS",
                            style: TextStyle(
                                color: Color(0xff6C6F82),
                                fontSize: 12,
                                fontWeight: FontWeight.w500)),
                        Row(
                          children: const [
                            Text("See more",
                                style: TextStyle(
                                    color: Color(0xff18BCA8),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500)),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Color(0xff18BCA8),
                              size: 12,
                            )
                          ],
                        ),
                      ]),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  height: 224,
                  color: Colors.white,
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Stack(children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 16, left: 24),
                                height: 40,
                                width: 47,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSa69_HGc_i3MXKCPZzCfAjBZC4bXJsn0rS0Ufe6H-ctZz5FbIVaPkd1jCPTpKwPruIT3Q&usqp=CAU"),
                                        fit: BoxFit.cover),
                                    color: Colors.blue,
                                    shape: BoxShape.circle),
                              ),
                              Positioned(
                                top: 30,
                                left: 40,
                                child: Container(
                                  child: const Text(
                                    "+46",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  ),
                                  padding: const EdgeInsets.all(5),
                                  decoration: const BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.circle),
                                ),
                              ),
                            ]),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 12, top: 18),
                                  child: Text(
                                    "Smokers Club",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12, top: 5),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30)),
                                            color: Colors.orange),
                                        child: const Text("30 min"),
                                      ),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(left: 12, top: 5),
                                      child: Text(
                                        "Mon, Dec 20, 01:00 AM",
                                        style: TextStyle(
                                            color: Color(0xff6C6F82),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 60, right: 24, top: 22),
                              height: 24,
                              width: 66,
                              decoration: BoxDecoration(
                                  color: const Color(0xffEDF3F3),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8)),
                                  border:
                                      Border.all(color: Colors.transparent)),
                              child: const Center(
                                child: Text(
                                  "Join",
                                  style: TextStyle(
                                      color: Color(0xff273131),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            )
                          ],
                        );
                      }),
                ),
              ],
            )));
  }
}
