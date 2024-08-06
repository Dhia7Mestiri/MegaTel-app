import 'package:flutter/material.dart';
import 'package:mega/cache/global.dart';
import 'package:mega/cache/language.dart';


class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key}) ;

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MegaTel',
      theme: ThemeData(fontFamily: 'Poppins'),
      home: SearchScreenWidget(),
    );
  }
}

class SearchScreenWidget extends StatefulWidget {
  @override
  _SearchScreenWidgetState createState() => _SearchScreenWidgetState();
}

class _SearchScreenWidgetState extends State<SearchScreenWidget> {
  TextEditingController _searchController = TextEditingController();
  List<String> _searchResults = [];
  List<String> _searchHistory = [
    "John",
    "Doe",
    "Alice",
    "Bob",
    "Eve",
  ];
  List<String> _additionalResults = [
    "123",
    "hsffs",
    "sdsd",
    "dsdf",
    "fgfg",
    "df",
    "dfg",
    "dfgd",
    "dfgdfg"
  ];

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchTextChanged);
    _updateSearchResults("");
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchTextChanged);
    super.dispose();
  }

  void _onSearchTextChanged() {
    String query = _searchController.text.toLowerCase();
    _updateSearchResults(query);
  }

  void _updateSearchResults(String query) {
    setState(() {
      _searchResults.clear();

      _searchResults.addAll(_searchHistory
          .where((history) => history.toLowerCase().contains(query))
          .toList());
      if (query.isNotEmpty) {
        _searchResults.addAll(_additionalResults);
      }
    });
  }

  void _onSubmitted(String value) {
    _updateSearchHistory(value);
  }

  void _updateSearchHistory(String query) {
    if (query.isNotEmpty && !_searchHistory.contains(query)) {
      setState(() {
        _searchHistory.add(query);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
final w=MediaQuery.of(context).size.width*0.8;
final h=MediaQuery.of(context).size.height;

    return Scaffold(
      
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent, 
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(CacheData.getData(key: 'background'),), 
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 0.0708*h,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                  border: Border.all(color: Color.fromRGBO(246, 96, 34, 1)),
                ),
                padding: EdgeInsets.symmetric(horizontal: 0.03038*w),
                margin: EdgeInsets.symmetric(horizontal: 0.04557*w),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: "${lang['search_text1']}",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.search),
                  ),
                  style: TextStyle(color: Colors.black),
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.search,
                  onSubmitted: _onSubmitted,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.only(top: 10),
                  itemCount: _searchResults.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      contentPadding: EdgeInsets.only(left: _searchHistory.contains(_searchResults[index]) ? 0.1215*w : 0.25*w),
                      leading: _searchHistory.contains(_searchResults[index])
                          ? Icon(Icons.history,
                          color: CacheData.getData(key: 'color-white-black'))
                          : null,
                      title: Text(
                        _searchResults[index],
                        style: TextStyle(color: CacheData.getData(key: 'color-white-black')),
                      ),
                      onTap: () {
                        _searchController.text = _searchResults[index];
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          
          
        ],
      ),
    );
  }
}

