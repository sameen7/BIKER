.class public Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;
.super Ljava/lang/Object;
.source "WebViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/WebViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebViewInterface"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/WebViewer;

.field webViewString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/WebViewer;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/WebViewer;
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 504
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->this$0:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->mContext:Landroid/content/Context;

    .line 506
    const-string v0, " "

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->webViewString:Ljava/lang/String;

    .line 507
    return-void
.end method


# virtual methods
.method public getWebViewString()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->webViewString:Ljava/lang/String;

    return-object v0
.end method

.method public setWebViewString(Ljava/lang/String;)V
    .locals 0
    .param p1, "newString"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 524
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->webViewString:Ljava/lang/String;

    .line 525
    return-void
.end method
