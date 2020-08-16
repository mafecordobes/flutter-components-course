import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  static final pageName = 'avatar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          Container(
            padding: EdgeInsets.all(7.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://lh3.googleusercontent.com/-UnqD-g5gePQ/XWfmHffdNJI/AAAAAAAAAN8/34QLDHamQbM6lv0BVPnjQIK7EE_Pgt8xwCEwYBhgLKtQDAL1OcqyDyCFjnnKlVOg5BGgGwxcoOcRgNxOH9hWP3D6hj5dKp_iOmelH2t7u6eCjzKMb9k7iyhLRT_uxOosw2uZUbmaMlcXNBOpB4rSP5Oq9YLDL9Ua0F2U99jvThgcx8xxYbcN_KbVAg8RfyZkMtgtcidemwVQZnfCXLzoPmYsurgTCmKMH3iNR-YTR2D30RHJeRBiTYcY-EVM4al3uCILKXSsV1PvUdWhecysnl_8xIwxxOEkjfN51f9iKY4qZT172e5PdEFKNoKwDLrbe0v7dCVRV27C_SfKDYuT9FtvCkAafmA_gC3ntTwaZYY9dAJgwaUL0IewJB8A1lNIFIJTzj1FQNIe4J9nnXzqjBjiytoIvDcJrlyx4UC6zxxTB9tZh0_fk6VdqHm7iui7ZxNmpMrSJoNLpzQK_LGVyTFDP1lhgemDCz64cK3YWlGRT9e_Gvy8CcOjqE8ibAeohbGgaQtCTyAudkInMa_HpxP989rbQnNT-dNmzkqh_VmLABeQYKQ1ZztVLU5Ow1_-AkNd3jqz4V5WtAtJXkvX0lGQZqVYEzgaRKXfFQLZ-8pK5JqAVgAehAB8vYO8pXzcm5ahRqtUWz-oeSuKuLyPAuGscrzPaMPz7zPkF/w140-h140-p/DSC_0072%2B%25282%2529.jpg'),
              radius: 20.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('MC'),
              backgroundColor: Colors.pink[100],
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage(
              'https://i.pinimg.com/564x/db/fc/b1/dbfcb1a16a9a5dc6e8546da41de5684b.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
