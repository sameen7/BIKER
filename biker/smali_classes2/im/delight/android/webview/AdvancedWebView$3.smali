.class Lim/delight/android/webview/AdvancedWebView$3;
.super Ljava/lang/Object;
.source "AdvancedWebView.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


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
    .line 996
    iput-object p1, p0, Lim/delight/android/webview/AdvancedWebView$3;->this$0:Lim/delight/android/webview/AdvancedWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    .line 1000
    invoke-static {p1, p3, p4}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1002
    .local v2, "suggestedFilename":Ljava/lang/String;
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$3;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mListener:Lim/delight/android/webview/AdvancedWebView$Listener;

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView$3;->this$0:Lim/delight/android/webview/AdvancedWebView;

    iget-object v0, v0, Lim/delight/android/webview/AdvancedWebView;->mListener:Lim/delight/android/webview/AdvancedWebView$Listener;

    move-object v1, p1

    move-object v3, p4

    move-wide v4, p5

    move-object v6, p3

    move-object v7, p2

    invoke-interface/range {v0 .. v7}, Lim/delight/android/webview/AdvancedWebView$Listener;->onDownloadRequested(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 1005
    :cond_0
    return-void
.end method
