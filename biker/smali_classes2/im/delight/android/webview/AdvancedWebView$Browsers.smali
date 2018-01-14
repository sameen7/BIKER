.class public Lim/delight/android/webview/AdvancedWebView$Browsers;
.super Ljava/lang/Object;
.source "AdvancedWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/delight/android/webview/AdvancedWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Browsers"
.end annotation


# static fields
.field private static mAlternativePackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlternative(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1298
    sget-object v3, Lim/delight/android/webview/AdvancedWebView$Browsers;->mAlternativePackage:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1299
    sget-object v3, Lim/delight/android/webview/AdvancedWebView$Browsers;->mAlternativePackage:Ljava/lang/String;

    .line 1317
    :goto_0
    return-object v3

    .line 1302
    :cond_0
    sget-object v3, Lim/delight/android/webview/AdvancedWebView;->ALTERNATIVE_BROWSERS:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1303
    .local v0, "alternativeBrowsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 1305
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1306
    .local v1, "app":Landroid/content/pm/ApplicationInfo;
    iget-boolean v4, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v4, :cond_1

    .line 1310
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1311
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sput-object v3, Lim/delight/android/webview/AdvancedWebView$Browsers;->mAlternativePackage:Ljava/lang/String;

    .line 1313
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 1317
    .end local v1    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static hasAlternative(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1288
    invoke-static {p0}, Lim/delight/android/webview/AdvancedWebView$Browsers;->getAlternative(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static openUrl(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1327
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lim/delight/android/webview/AdvancedWebView$Browsers;->openUrl(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 1328
    return-void
.end method

.method public static openUrl(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "withoutTransition"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1338
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1339
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Lim/delight/android/webview/AdvancedWebView$Browsers;->getAlternative(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1340
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1342
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1344
    if-eqz p2, :cond_0

    .line 1345
    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1347
    :cond_0
    return-void
.end method
