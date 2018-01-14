.class final Lcom/google/appinventor/components/runtime/util/FroyoUtil$2;
.super Landroid/webkit/WebViewClient;
.source "FroyoUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/FroyoUtil;->getWebViewClient(ZZZLcom/google/appinventor/components/runtime/ComponentContainer;Lcom/google/appinventor/components/runtime/Component;)Landroid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$component:Lcom/google/appinventor/components/runtime/Component;

.field final synthetic val$followLinks:Z

.field final synthetic val$form:Lcom/google/appinventor/components/runtime/Form;

.field final synthetic val$ignoreErrors:Z

.field final synthetic val$useExternalBrowser:Z


# direct methods
.method constructor <init>(ZLandroid/app/Activity;ZZLcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;)V
    .locals 0

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$2;->val$useExternalBrowser:Z

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$2;->val$activity:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$2;->val$followLinks:Z

    iput-boolean p4, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$2;->val$ignoreErrors:Z

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    iput-object p6, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$2;->val$component:Lcom/google/appinventor/components/runtime/Component;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$2;->val$ignoreErrors:Z

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 158
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 155
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$2;->val$component:Lcom/google/appinventor/components/runtime/Component;

    const-string v2, "WebView"

    const/16 v3, 0x9c5

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 136
    const-string v1, "http:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    :cond_0
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$2;->val$useExternalBrowser:Z

    if-eqz v1, :cond_4

    .line 138
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$2;->val$activity:Landroid/app/Activity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 146
    :cond_1
    :goto_0
    return v0

    .line 141
    :cond_2
    const-string v1, "tel:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "mailto:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "file:"

    .line 142
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 143
    :cond_3
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$2;->val$activity:Landroid/app/Activity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 146
    :cond_4
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$2;->val$followLinks:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method
