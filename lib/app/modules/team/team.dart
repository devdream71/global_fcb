import 'package:fcb_global_app_v1/app/core/values/app_assets.dart';
import 'package:fcb_global_app_v1/app/core/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TeamView extends StatelessWidget {
  const TeamView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appcolor,
      body: Column(
        children: [
          // Team header in the middle

          const SizedBox(
            height: 10,
          ),

          buildRating(),

          ratingwithdimond(),

          HeaderWithTeams(),

          const SizedBox(height: 20),

          // Team member section
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      TeamList(
                        teamScore: 100,
                        members: List.generate(
                          7,
                          (index) => MemberData('MD.Anwar Alom',
                              'anowar@gmail.com', 'Ref:Md.Korim', 10),
                        ),
                      ),
                      Positioned(
                        right: 50,
                        bottom: 100,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Add+",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Dash(
                    direction: Axis.vertical,
                    length: 550,
                    dashLength: 5,
                    dashColor: Colors.white),
                Expanded(
                  child: Stack(
                    children: [
                      TeamList(
                        teamScore: 150,
                        members: List.generate(
                          7,
                          (index) => MemberData('MD.Anwar Alom',
                              'anowar@gmail.com', 'Ref:Md.Taher', 5),
                        ),
                      ),
                      Positioned(
                        right: 50,
                        bottom: 100,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Add+",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget ratingwithdimond() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RatingBar.builder(
          initialRating: 2,
          minRating: 1,
          itemSize: 20,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
          unratedColor: Colors.white,
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
        const Icon(
          Icons.diamond,
          color: Colors.white,
        )
      ],
    );
  }
}

buildRating() {
  return Column(
    children: [
      const CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(AppAssets.appLogo),
      ),
      const Text(
        'Md. Mosiur Rahman Rangga',
        style: TextStyle(fontSize: 13, color: Colors.white),
      ),
      const Text(
        'mosiur@gmail.com',
        style: TextStyle(fontSize: 13, color: Colors.white),
      ),
      const Text(
        'Ref: Md. Monirol Islam',
        style: TextStyle(fontSize: 13, color: Colors.white),
      ),
    ],
  );
}

class HeaderWithTeams extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.people, color: Colors.white, size: 40),
          ],
        ),
        SizedBox(height: 5),
        Text(
          'Team',
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
        SizedBox(height: 5),
        Text(
          'L-1 L-2',
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
      ],
    );
  }
}

class TeamList extends StatelessWidget {
  final int teamScore;
  final List<MemberData> members;

  TeamList({required this.teamScore, required this.members});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.white),
          child: Center(
            child: Text(
              '$teamScore',
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            itemCount: members.length,
            itemBuilder: (context, index) {
              final member = members[index];
              return MemberTile(member: member);
            },
          ),
        ),
      ],
    );
  }
}

class MemberTile extends StatelessWidget {
  final MemberData member;

  MemberTile({required this.member});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(member.name,
                      style: const TextStyle(color: Colors.white)),
                  Text(member.email,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 12)),
                  Text(member.ref,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 12)),
                ],
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  '${member.score}',
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MemberData {
  final String name;
  final String email;
  final String ref;
  final int score;

  MemberData(this.name, this.email, this.ref, this.score);
}
