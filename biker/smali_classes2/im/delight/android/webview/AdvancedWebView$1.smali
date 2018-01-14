.class Lim/delight/android/webview/AdvancedWebView$1;
.super Landroid/webkit/WebViewClient;
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
    .line 462
    iput-object p1, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .prologue
    .line 587
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 593
    :goto_0
    return-void

    .line 591
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "dontResend"    # Landroid/os/Message;
    .param p3, "resend"    # Landroid/os/Message;

    .prologue
    .line 577
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 583
    :goto_0
    return-void

    .line 581
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 535
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 541
    :goto_0
    return-void

    .line 539
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 479
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    invoke-virtual {v0}, Lim/delight/android/webview/AdvancedWebView;->hasError()Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mListener:Lim/delight/android/webview/AdvancedWebView$Listener;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mListener:Lim/delight/android/webview/AdvancedWebView$Listener;

    invoke-interface {v0, p2}, Lim/delight/android/webview/AdvancedWebView$Listener;->onPageFinished(Ljava/lang/String;)V

    .line 485
    :cond_0
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_1

    .line 486
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 488
    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 466
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    invoke-virtual {v0}, Lim/delight/android/webview/AdvancedWebView;->hasError()Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mListener:Lim/delight/android/webview/AdvancedWebView$Listener;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mListener:Lim/delight/android/webview/AdvancedWebView$Listener;

    invoke-interface {v0, p2, p3}, Lim/delight/android/webview/AdvancedWebView$Listener;->onPageStarted(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 472
    :cond_0
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 475
    :cond_1
    return-void
.end method

.method public onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/ClientCertRequest;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 608
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 609
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_1

    .line 610
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 492
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    invoke-virtual {v0}, Lim/delight/android/webview/AdvancedWebView;->setLastError()V

    .line 494
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mListener:Lim/delight/android/webview/AdvancedWebView$Listener;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mListener:Lim/delight/android/webview/AdvancedWebView$Listener;

    invoke-interface {v0, p2, p3, p4}, Lim/delight/android/webview/AdvancedWebView$Listener;->onPageError(ILjava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_0
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_1

    .line 499
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 501
    :cond_1
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 620
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    :goto_0
    return-void

    .line 624
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "account"    # Ljava/lang/String;
    .param p4, "args"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 674
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 675
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_1

    .line 676
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 597
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 603
    :goto_0
    return-void

    .line 601
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    goto :goto_0
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "oldScale"    # F
    .param p3, "newScale"    # F

    .prologue
    .line 663
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    .line 669
    :goto_0
    return-void

    .line 667
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    goto :goto_0
.end method

.method public onUnhandledInputEvent(Landroid/webkit/WebView;Landroid/view/InputEvent;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/InputEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 651
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 652
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_1

    .line 653
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledInputEvent(Landroid/webkit/WebView;Landroid/view/InputEvent;)V

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 656
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledInputEvent(Landroid/webkit/WebView;Landroid/view/InputEvent;)V

    goto :goto_0
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 640
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    .line 646
    :goto_0
    return-void

    .line 644
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 562
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 563
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 571
    :goto_0
    return-object v0

    .line 567
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0

    .line 571
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 546
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 547
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 555
    :goto_0
    return-object v0

    .line 551
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0

    .line 555
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 630
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 634
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 506
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    invoke-virtual {v0, p2}, Lim/delight/android/webview/AdvancedWebView;->isHostnameAllowed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 508
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mListener:Lim/delight/android/webview/AdvancedWebView$Listener;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mListener:Lim/delight/android/webview/AdvancedWebView$Listener;

    invoke-interface {v0, p2}, Lim/delight/android/webview/AdvancedWebView$Listener;->onExternalPageRequest(Ljava/lang/String;)V

    .line 530
    :cond_0
    :goto_0
    return v1

    .line 518
    :cond_1
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_2

    .line 520
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$1;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    :cond_2
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
