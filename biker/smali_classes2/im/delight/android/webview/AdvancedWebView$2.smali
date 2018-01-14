.class Lim/delight/android/webview/AdvancedWebView$2;
.super Landroid/webkit/WebChromeClient;
.source "AdvancedWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/delight/android/webview/AdvancedWebView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/delight/android/webview/AdvancedWebView;


# direct methods
.method constructor <init>(Lim/delight/android/webview/AdvancedWebView;)V
    .locals 0
    .param p1, "this$0"    # Lim/delight/android/webview/AdvancedWebView;

    .prologue
    .line 686
    iput-object p1, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 950
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    .line 960
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 966
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    .line 972
    :goto_0
    return-void

    .line 970
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    goto :goto_0
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "window"    # Landroid/webkit/WebView;

    .prologue
    .line 815
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    .line 821
    :goto_0
    return-void

    .line 819
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    goto :goto_0
.end method

.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I
    .param p3, "sourceID"    # Ljava/lang/String;

    .prologue
    .line 926
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    .line 932
    :goto_0
    return-void

    .line 930
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 936
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    .line 940
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "isDialog"    # Z
    .param p3, "isUserGesture"    # Z
    .param p4, "resultMsg"    # Landroid/os/Message;

    .prologue
    .line 795
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v0

    .line 799
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "databaseIdentifier"    # Ljava/lang/String;
    .param p3, "quota"    # J
    .param p5, "estimatedDatabaseSize"    # J
    .param p7, "totalQuota"    # J
    .param p9, "quotaUpdater"    # Landroid/webkit/WebStorage$QuotaUpdater;

    .prologue
    .line 976
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v1, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Landroid/webkit/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 982
    :goto_0
    return-void

    .line 980
    :cond_0
    invoke-super/range {p0 .. p9}, Landroid/webkit/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    goto :goto_0
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    .line 886
    :goto_0
    return-void

    .line 884
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    goto :goto_0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .prologue
    .line 865
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-boolean v0, v0, Lim/delight/android/webview/AdvancedWebView;->mGeolocationEnabled:Z

    if-eqz v0, :cond_0

    .line 866
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 876
    :goto_0
    return-void

    .line 869
    :cond_0
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_1

    .line 870
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    goto :goto_0

    .line 873
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    goto :goto_0
.end method

.method public onHideCustomView()V
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 791
    :goto_0
    return-void

    .line 789
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    goto :goto_0
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 825
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    .line 829
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 855
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    .line 859
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 835
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    .line 839
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    .line 845
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    .line 849
    :goto_0
    return v0

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onJsTimeout()Z
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onJsTimeout()Z

    move-result v0

    .line 920
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onJsTimeout()Z

    move-result v0

    goto :goto_0
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 2
    .param p1, "request"    # Landroid/webkit/PermissionRequest;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 891
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 892
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_1

    .line 893
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    .line 899
    :cond_0
    :goto_0
    return-void

    .line 896
    :cond_1
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    goto :goto_0
.end method

.method public onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V
    .locals 2
    .param p1, "request"    # Landroid/webkit/PermissionRequest;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 904
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 905
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_1

    .line 906
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V

    .line 912
    :cond_0
    :goto_0
    return-void

    .line 909
    :cond_1
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 722
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 728
    :goto_0
    return-void

    .line 726
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    goto :goto_0
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 7
    .param p1, "requiredStorage"    # J
    .param p3, "quota"    # J
    .param p5, "quotaUpdater"    # Landroid/webkit/WebStorage$QuotaUpdater;

    .prologue
    .line 986
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v1, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebChromeClient;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 992
    :goto_0
    return-void

    .line 990
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    goto :goto_0
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 742
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    .line 748
    :goto_0
    return-void

    .line 746
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 732
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 738
    :goto_0
    return-void

    .line 736
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "precomposed"    # Z

    .prologue
    .line 752
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 758
    :goto_0
    return-void

    .line 756
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 805
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    .line 811
    :goto_0
    return-void

    .line 809
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    goto :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "requestedOrientation"    # I
    .param p3, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 773
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 774
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_1

    .line 775
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 778
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 762
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 768
    :goto_0
    return-void

    .line 766
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_0
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 4
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p3, "fileChooserParams"    # Landroid/webkit/WebChromeClient$FileChooserParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, "filePathCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 708
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 709
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getMode()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 711
    .local v0, "allowMultiple":Z
    :cond_0
    iget-object v2, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p2, v0}, Lim/delight/android/webview/AdvancedWebView;->openFileInput(Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Z)V

    .line 716
    .end local v0    # "allowMultiple":Z
    :goto_0
    return v1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 691
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lim/delight/android/webview/AdvancedWebView$2;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    .line 692
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 1
    .param p2, "acceptType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 696
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lim/delight/android/webview/AdvancedWebView$2;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p2, "acceptType"    # Ljava/lang/String;
    .param p3, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 702
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$2;->this$0:Lim/delight/android/webview/AdvancedWebView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lim/delight/android/webview/AdvancedWebView;->openFileInput(Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Z)V

    .line 703
    return-void
.end method
