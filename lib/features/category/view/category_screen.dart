import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../view_model/category_controller.dart';

class CategoriesScreen extends GetView<CategoriesController> {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            _buildSearchBar(),
            const SizedBox(height: 8),
            _buildCategoryTabs(),
            const SizedBox(height: 16),
            _buildComicsList(),
          ],
        ),
      ),
    );
  }

  /// 🔍 Search bar
  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search for comics',
          hintStyle: const TextStyle(color: Colors.white38),
          filled: true,
          fillColor: Colors.black54,
          prefixIcon: const Icon(Icons.search, color: Colors.white38),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 0),
        ),
        style: const TextStyle(color: Colors.white70),
      ),
    );
  }

  /// 🏷️ Category Tabs (scrollable)
  Widget _buildCategoryTabs() {
    return Obx(() => SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          controller.categories.length,
              (index) => GestureDetector(
            onTap: () => controller.selectCategory(index),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    controller.categories[index],
                    style: TextStyle(
                      color: controller.selectedIndex.value == index
                          ? Colors.white
                          : Colors.white60,
                      fontWeight: controller.selectedIndex.value == index
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                  if (controller.selectedIndex.value == index)
                    Container(
                      margin: const EdgeInsets.only(top: 4),
                      height: 2,
                      width: 40,
                      color: Colors.white,
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }

  /// 📚 Comics list
  Widget _buildComicsList() {
    return Expanded(
      child: Obx(() => ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: controller.filtered.length,
        itemBuilder: (context, index) {
          final comic = controller.filtered[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Thumbnail
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    comic.thumbnail,
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 16),

                /// Info
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        comic.title,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.star,
                              size: 16, color: Colors.amber),
                          const SizedBox(width: 4),
                          Text(
                            '${comic.rating} (${comic.ratingCount})',
                            style: const TextStyle(
                                color: Colors.white70, fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        comic.description,
                        style: const TextStyle(color: Colors.white60),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      )),
    );
  }
}
