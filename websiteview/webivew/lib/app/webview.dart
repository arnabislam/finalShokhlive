import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class WebViewScreen extends StatefulWidget {
  final String urlWeb;
  final String appBarName;

  const WebViewScreen({Key? key, required this.urlWeb, required this.appBarName}) : super(key: key);

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  InAppWebViewController? webViewController;
  PullToRefreshController? refreshController;
  double progress = 0;
  var urlController = TextEditingController();
  var isloading = true;
  bool isError = false;
  String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        leading: IconButton(
          onPressed: () async {
            if (await webViewController!.canGoBack()) {
              webViewController!.goBack();
            } else {
              Get.back();
            }
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Text(widget.appBarName),
        ),
        actions: [
          IconButton(
            onPressed: () {
              webViewController!.reload();
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                InAppWebView(
                  onLoadStart: (controller, url) {
                    setState(() {
                      isloading = true;
                      isError = false;
                    });
                  },
                  onLoadStop: (controller, url) {
                    setState(() {
                      isloading = false;
                    });
                  },
                  onLoadError: (controller, url, code, message) {
                    // Handle load errors here
                    print('Load Error: $code, $message');
                    setState(() {
                      isloading = true;
                      isError = true;
                      errorMessage = message;
                    });

                    // Show a popup
                    Get.defaultDialog(
                      title: 'Error',
                      middleText: 'Failed to load page. Error: $errorMessage',
                      textCancel: 'Close',
                      onConfirm: () {
                        Get.back();
                      },
                    );
                  },
                  onLoadHttpError: (controller, url, code, message) {
                    setState(() {
                      isloading = true;
                      isError =
                      true; // Set isError flag when there's a load error
                    });
                  },

                  onReceivedServerTrustAuthRequest: (controller, challenge) async {
                    // Handle server trust authentication requests here if needed
                    return ServerTrustAuthResponse(action: ServerTrustAuthResponseAction.CANCEL);
                  },
                  onProgressChanged: (progress, controller) {
                    if (progress == 100) {
                      refreshController!.endRefreshing();
                    }
                  },
                  pullToRefreshController: refreshController,
                 onWebViewCreated: (controller) => webViewController = controller,
                 initialUrlRequest: URLRequest(url: Uri.parse(widget.urlWeb)),
                ),


                if (isloading)
                  const Center(
                    child: SpinKitSpinningLines(
                      color: Colors.deepOrange,
                      size: 50,
                    ),
                  ),
                if (isError)
                  const Center(
                    child: Text(
                      'Failed to load',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                // Visibility(
                //   visible: isloading,
                //   child: const SpinKitThreeInOut(
                //     color: Colors.blue,
                //     size: 60,
                //   ),
                // ),
                // Visibility(
                //   visible: !isloading && errorMessage != null,
                //   child: Center(
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Text(
                //           'Failed to load page',
                //           style: TextStyle(color: Colors.red),
                //         ),
                //         Text(
                //           'Error: $errorMessage',
                //           style: TextStyle(color: Colors.red),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
