.class public Lim/delight/android/webview/AdvancedWebView;
.super Landroid/webkit/WebView;
.source "AdvancedWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/delight/android/webview/AdvancedWebView$Browsers;,
        Lim/delight/android/webview/AdvancedWebView$Listener;
    }
.end annotation


# static fields
.field protected static final ALTERNATIVE_BROWSERS:[Ljava/lang/String;

.field protected static final CHARSET_DEFAULT:Ljava/lang/String; = "UTF-8"

.field protected static final DATABASES_SUB_FOLDER:Ljava/lang/String; = "/databases"

.field protected static final LANGUAGE_DEFAULT_ISO3:Ljava/lang/String; = "eng"

.field public static final PACKAGE_NAME_DOWNLOAD_MANAGER:Ljava/lang/String; = "com.android.providers.downloads"

.field protected static final REQUEST_CODE_FILE_PICKER:I = 0xc8e2


# instance fields
.field protected mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field protected mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

.field protected mCustomWebViewClient:Landroid/webkit/WebViewClient;

.field protected mFileUploadCallbackFirst:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field protected mFileUploadCallbackSecond:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field protected mFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field protected mGeolocationEnabled:Z

.field protected final mHttpHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mLanguageIso3:Ljava/lang/String;

.field protected mLastError:J

.field protected mListener:Lim/delight/android/webview/AdvancedWebView$Listener;

.field protected final mPermittedHostnames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mRequestCodeFilePicker:I

.field protected mUploadableFileTypes:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 78
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "org.mozilla.firefox"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.chrome"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.opera.browser"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "org.mozilla.firefox_beta"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.chrome.beta"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.opera.browser.beta"

    aput-object v2, v0, v1

    sput-object v0, Lim/delight/android/webview/AdvancedWebView;->ALTERNATIVE_BROWSERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mPermittedHostnames:Ljava/util/List;

    .line 89
    const v0, 0xc8e2

    iput v0, p0, Lim/delight/android/webview/AdvancedWebView;->mRequestCodeFilePicker:I

    .line 93
    const-string v0, "*/*"

    iput-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mUploadableFileTypes:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mHttpHeaders:Ljava/util/Map;

    .line 98
    invoke-virtual {p0, p1}, Lim/delight/android/webview/AdvancedWebView;->init(Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mPermittedHostnames:Ljava/util/List;

    .line 89
    const v0, 0xc8e2

    iput v0, p0, Lim/delight/android/webview/AdvancedWebView;->mRequestCodeFilePicker:I

    .line 93
    const-string v0, "*/*"

    iput-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mUploadableFileTypes:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mHttpHeaders:Ljava/util/Map;

    .line 103
    invoke-virtual {p0, p1}, Lim/delight/android/webview/AdvancedWebView;->init(Landroid/content/Context;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mPermittedHostnames:Ljava/util/List;

    .line 89
    const v0, 0xc8e2

    iput v0, p0, Lim/delight/android/webview/AdvancedWebView;->mRequestCodeFilePicker:I

    .line 93
    const-string v0, "*/*"

    iput-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mUploadableFileTypes:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mHttpHeaders:Ljava/util/Map;

    .line 108
    invoke-virtual {p0, p1}, Lim/delight/android/webview/AdvancedWebView;->init(Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method protected static decodeBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "base64"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1144
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 1145
    .local v0, "bytes":[B
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method protected static getLanguageIso3()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1102
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1105
    .local v0, "e":Ljava/util/MissingResourceException;
    :goto_0
    return-object v1

    .line 1104
    .end local v0    # "e":Ljava/util/MissingResourceException;
    :catch_0
    move-exception v0

    .line 1105
    .restart local v0    # "e":Ljava/util/MissingResourceException;
    const-string v1, "eng"

    goto :goto_0
.end method

.method public static handleDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fromUrl"    # Ljava/lang/String;
    .param p2, "toFilename"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v7, 0xb

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1221
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x9

    if-ge v5, v6, :cond_0

    .line 1222
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Method requires API level 9 or above"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1225
    :cond_0
    new-instance v2, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 1226
    .local v2, "request":Landroid/app/DownloadManager$Request;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v7, :cond_1

    .line 1227
    invoke-virtual {v2}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 1228
    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 1230
    :cond_1
    sget-object v5, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v2, v5, p2}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 1232
    const-string v5, "download"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 1235
    .local v0, "dm":Landroid/app/DownloadManager;
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1251
    :goto_0
    return v3

    .line 1237
    :catch_0
    move-exception v1

    .line 1238
    .local v1, "e":Ljava/lang/SecurityException;
    :try_start_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v7, :cond_2

    .line 1239
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 1241
    :cond_2
    invoke-virtual {v0, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1247
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 1249
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "com.android.providers.downloads"

    invoke-static {p0, v3}, Lim/delight/android/webview/AdvancedWebView;->openAppSettings(Landroid/content/Context;Ljava/lang/String;)Z

    move v3, v4

    .line 1251
    goto :goto_0
.end method

.method public static isFileUploadAvailable()Z
    .locals 1

    .prologue
    .line 1185
    const/4 v0, 0x0

    invoke-static {v0}, Lim/delight/android/webview/AdvancedWebView;->isFileUploadAvailable(Z)Z

    move-result v0

    return v0
.end method

.method public static isFileUploadAvailable(Z)Z
    .locals 4
    .param p0, "needsCorrectMimeType"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1197
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ne v2, v3, :cond_0

    .line 1198
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v0, ""

    .line 1200
    .local v0, "platformVersion":Ljava/lang/String;
    :goto_0
    if-nez p0, :cond_2

    const-string v2, "4.4.3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "4.4.4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1203
    .end local v0    # "platformVersion":Ljava/lang/String;
    :cond_0
    :goto_1
    return v1

    .line 1198
    :cond_1
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    goto :goto_0

    .line 1200
    .restart local v0    # "platformVersion":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected static makeUrlUnique(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x2f

    .line 1049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1050
    .local v0, "unique":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    const-string v1, "?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1053
    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1062
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1063
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1064
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1066
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1056
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x7

    if-gt v1, v2, :cond_1

    .line 1057
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1059
    :cond_1
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static openAppSettings(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1257
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_0

    .line 1258
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Method requires API level 9 or above"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1262
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1263
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1264
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1266
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1268
    const/4 v2, 0x1

    .line 1271
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 1270
    :catch_0
    move-exception v0

    .line 1271
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected static setAllowAccessFromFileUrls(Landroid/webkit/WebSettings;Z)V
    .locals 2
    .param p0, "webSettings"    # Landroid/webkit/WebSettings;
    .param p1, "allowed"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 375
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 376
    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 377
    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 379
    :cond_0
    return-void
.end method


# virtual methods
.method public addHttpHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 327
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mHttpHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    return-void
.end method

.method public addPermittedHostname(Ljava/lang/String;)V
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 344
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mPermittedHostnames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    return-void
.end method

.method public addPermittedHostnames(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 348
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/String;>;"
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mPermittedHostnames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 349
    return-void
.end method

.method public clearPermittedHostnames()V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mPermittedHostnames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 361
    return-void
.end method

.method protected getFileUploadPromptLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1112
    :try_start_0
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mLanguageIso3:Ljava/lang/String;

    const-string v1, "zho"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "6YCJ5oup5LiA5Liq5paH5Lu2"

    invoke-static {v0}, Lim/delight/android/webview/AdvancedWebView;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1140
    :goto_0
    return-object v0

    .line 1113
    :cond_0
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mLanguageIso3:Ljava/lang/String;

    const-string v1, "spa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "RWxpamEgdW4gYXJjaGl2bw=="

    invoke-static {v0}, Lim/delight/android/webview/AdvancedWebView;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1114
    :cond_1
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mLanguageIso3:Ljava/lang/String;

    const-string v1, "hin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "4KSP4KSVIOCkq+CkvOCkvuCkh+CksiDgpJrgpYHgpKjgpYfgpII="

    invoke-static {v0}, Lim/delight/android/webview/AdvancedWebView;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1115
    :cond_2
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mLanguageIso3:Ljava/lang/String;

    const-string v1, "ben"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "4KaP4KaV4Kaf4Ka/IOCmq+CmvuCmh+CmsiDgpqjgpr/gprDgp43gpqzgpr7gpprgpqg="

    invoke-static {v0}, Lim/delight/android/webview/AdvancedWebView;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1116
    :cond_3
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mLanguageIso3:Ljava/lang/String;

    const-string v1, "ara"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "2KfYrtiq2YrYp9ixINmF2YTZgSDZiNin2K3Yrw=="

    invoke-static {v0}, Lim/delight/android/webview/AdvancedWebView;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1117
    :cond_4
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mLanguageIso3:Ljava/lang/String;

    const-string v1, "por"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "RXNjb2xoYSB1bSBhcnF1aXZv"

    invoke-static {v0}, Lim/delight/android/webview/AdvancedWebView;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1118
    :cond_5
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mLanguageIso3:Ljava/lang/String;

    const-string v1, "rus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "0JLRi9Cx0LXRgNC40YLQtSDQvtC00LjQvSDRhNCw0LnQuw=="

    invoke-static {v0}, Lim/delight/android/webview/AdvancedWebView;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1119
    :cond_6
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mLanguageIso3:Ljava/lang/String;

    const-string v1, "jpn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "MeODleOCoeOCpOODq+OCkumBuOaKnuOBl+OBpuOBj+OBoOOBleOBhA=="

    invoke-static {v0}, Lim/delight/android/webview/AdvancedWebView;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1120
    :cond_7
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mLanguageIso3:Ljava/lang/String;

    const-string v1, "pan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "4KiH4Kmx4KiVIOCoq+CovuCoh+CosiDgqJrgqYHgqKPgqYs="

    invoke-static {v0}, Lim/delight/android/webview/AdvancedWebView;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1121
    :cond_8
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mLanguageIso3:Ljava/lang/String;

    const-string v1, "deu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "V8OkaGxlIGVpbmUgRGF0ZWk="

    invoke-static {v0}, Lim/delight/android/webview/AdvancedWebView;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1122
    :cond_9
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mLanguageIso3:Ljava/lang/String;

    const-string v1, "jav"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "UGlsaWggc2lqaSBiZXJrYXM="

    invoke-static {v0}, Lim/delight/android/webview/AdvancedWebView;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1123
    :cond_a
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mLanguageIso3:Ljava/lang/String;

    const-string v1, "msa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "UGlsaWggc2F0dSBmYWls"

    invoke-static {v0}, Lim/delight/android/webview/AdvancedWebView;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1124
    :cond_b
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mLanguageIso3:Ljava/lang/String;

    const-string v1, "tel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "4LCS4LCVIOCwq+CxhuCxluCwsuCxjeCwqOCxgSDgsI7gsILgsJrgsYHgsJXgsYvgsILgsKHgsL8="

    invoke-static {v0}, Lim/delight/android/webview/AdvancedWebView;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1125
    :cond_c
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mLanguageIso3:Ljava/lang/String;

    const-string v1, "vie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "Q2jhu41uIG3hu5l0IHThuq1wIHRpbg=="

    invoke-static {v0}, Lim/delight/android/webview/AdvancedWebView;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1126
    :cond_d
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mLanguageIso3:Ljava/lang/String;

    const-string v1, "kor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "7ZWY64KY7J2YIO2MjOydvOydhCDshKDtg50="

    invoke-static {v0}, Lim/delight/android/webview/AdvancedWebView;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1127
    :cond_e
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mLanguageIso3:Ljava/lang/String;

    const-string v1, "fra"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "Q2hvaXNpc3NleiB1biBmaWNoaWVy"

    invoke-static {v0}, Lim/delight/android/webview/AdvancedWebView;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1128
    :cond_f
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mLanguageIso3:Ljava/lang/String;

    const-string v1, "mar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "4KSr4KS+4KSH4KSyIOCkqOCkv+CkteCkoeCkvg=="

    invoke-static {v0}, Lim/delight/android/webview/AdvancedWebView;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1129
    :cond_10
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mLanguageIso3:Ljava/lang/String;

    const-string v1, "tam"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "4K6S4K6w4K+BIOCuleCvh+CuvuCuquCvjeCuquCviCDgrqTgr4fgrrDgr43grrXgr4E="

    invoke-static {v0}, Lim/delight/android/webview/AdvancedWebView;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1130
    :cond_11
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mLanguageIso3:Ljava/lang/String;

    const-string v1, "urd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "2KfbjNqpINmB2KfYptmEINmF24zauiDYs9uSINin2YbYqtiu2KfYqCDaqdix24zaug=="

    invoke-static {v0}, Lim/delight/android/webview/AdvancedWebView;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1131
    :cond_12
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mLanguageIso3:Ljava/lang/String;

    const-string v1, "fas"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "2LHYpyDYp9mG2KrYrtin2Kgg2qnZhtuM2K8g24zaqSDZgdin24zZhA=="

    invoke-static {v0}, Lim/delight/android/webview/AdvancedWebView;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1132
    :cond_13
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mLanguageIso3:Ljava/lang/String;

    const-string v1, "tur"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "QmlyIGRvc3lhIHNlw6dpbg=="

    invoke-static {v0}, Lim/delight/android/webview/AdvancedWebView;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1133
    :cond_14
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mLanguageIso3:Ljava/lang/String;

    const-string v1, "ita"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "U2NlZ2xpIHVuIGZpbGU="

    invoke-static {v0}, Lim/delight/android/webview/AdvancedWebView;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1134
    :cond_15
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mLanguageIso3:Ljava/lang/String;

    const-string v1, "tha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "4LmA4Lil4Li34Lit4LiB4LmE4Lif4Lil4LmM4Lir4LiZ4Li24LmI4LiH"

    invoke-static {v0}, Lim/delight/android/webview/AdvancedWebView;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1135
    :cond_16
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mLanguageIso3:Ljava/lang/String;

    const-string v1, "guj"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "4KqP4KqVIOCqq+CqvuCqh+CqsuCqqOCrhyDgqqrgqrjgqoLgqqY="

    invoke-static {v0}, Lim/delight/android/webview/AdvancedWebView;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 1137
    :catch_0
    move-exception v0

    .line 1140
    :cond_17
    const-string v0, "Choose a file"

    goto/16 :goto_0
.end method

.method public getPermittedHostnames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mPermittedHostnames:Ljava/util/List;

    return-object v0
.end method

.method protected hasError()Z
    .locals 4

    .prologue
    .line 1097
    iget-wide v0, p0, Lim/delight/android/webview/AdvancedWebView;->mLastError:J

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected init(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 426
    invoke-virtual {p0}, Lim/delight/android/webview/AdvancedWebView;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1008
    :goto_0
    return-void

    .line 431
    :cond_0
    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 432
    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v3, p1

    check-cast v3, Landroid/app/Activity;

    invoke-direct {v4, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lim/delight/android/webview/AdvancedWebView;->mActivity:Ljava/lang/ref/WeakReference;

    .line 435
    :cond_1
    invoke-static {}, Lim/delight/android/webview/AdvancedWebView;->getLanguageIso3()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lim/delight/android/webview/AdvancedWebView;->mLanguageIso3:Ljava/lang/String;

    .line 437
    invoke-virtual {p0, v5}, Lim/delight/android/webview/AdvancedWebView;->setFocusable(Z)V

    .line 438
    invoke-virtual {p0, v5}, Lim/delight/android/webview/AdvancedWebView;->setFocusableInTouchMode(Z)V

    .line 440
    invoke-virtual {p0, v5}, Lim/delight/android/webview/AdvancedWebView;->setSaveEnabled(Z)V

    .line 442
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 443
    .local v1, "filesDir":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/databases"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "databaseDir":Ljava/lang/String;
    invoke-virtual {p0}, Lim/delight/android/webview/AdvancedWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 446
    .local v2, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 447
    invoke-static {v2, v6}, Lim/delight/android/webview/AdvancedWebView;->setAllowAccessFromFileUrls(Landroid/webkit/WebSettings;Z)V

    .line 448
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 449
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 450
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 451
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-ge v3, v4, :cond_2

    .line 452
    sget-object v3, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 454
    :cond_2
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 455
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ge v3, v4, :cond_3

    .line 456
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 458
    :cond_3
    invoke-virtual {p0, v2, v5}, Lim/delight/android/webview/AdvancedWebView;->setMixedContentAllowed(Landroid/webkit/WebSettings;Z)V

    .line 460
    invoke-virtual {p0, v5}, Lim/delight/android/webview/AdvancedWebView;->setThirdPartyCookiesEnabled(Z)V

    .line 462
    new-instance v3, Lim/delight/android/webview/AdvancedWebView$1;

    invoke-direct {v3, p0}, Lim/delight/android/webview/AdvancedWebView$1;-><init>(Lim/delight/android/webview/AdvancedWebView;)V

    invoke-super {p0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 686
    new-instance v3, Lim/delight/android/webview/AdvancedWebView$2;

    invoke-direct {v3, p0}, Lim/delight/android/webview/AdvancedWebView$2;-><init>(Lim/delight/android/webview/AdvancedWebView;)V

    invoke-super {p0, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 996
    new-instance v3, Lim/delight/android/webview/AdvancedWebView$3;

    invoke-direct {v3, p0}, Lim/delight/android/webview/AdvancedWebView$3;-><init>(Lim/delight/android/webview/AdvancedWebView;)V

    invoke-virtual {p0, v3}, Lim/delight/android/webview/AdvancedWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    goto/16 :goto_0
.end method

.method protected isHostnameAllowed(Ljava/lang/String;)Z
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1071
    iget-object v3, p0, Lim/delight/android/webview/AdvancedWebView;->mPermittedHostnames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1089
    :cond_0
    :goto_0
    return v2

    .line 1077
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 1080
    .local v0, "actualHost":Ljava/lang/String;
    iget-object v3, p0, Lim/delight/android/webview/AdvancedWebView;->mPermittedHostnames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1082
    .local v1, "expectedHost":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 1089
    .end local v1    # "expectedHost":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public loadHtml(Ljava/lang/String;)V
    .locals 1
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lim/delight/android/webview/AdvancedWebView;->loadHtml(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public loadHtml(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lim/delight/android/webview/AdvancedWebView;->loadHtml(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public loadHtml(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "historyUrl"    # Ljava/lang/String;

    .prologue
    .line 215
    const-string v0, "utf-8"

    invoke-virtual {p0, p1, p2, p3, v0}, Lim/delight/android/webview/AdvancedWebView;->loadHtml(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public loadHtml(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "historyUrl"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;

    .prologue
    .line 227
    const-string v3, "text/html"

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v4, p4

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lim/delight/android/webview/AdvancedWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1024
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mHttpHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1025
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mHttpHeaders:Ljava/util/Map;

    invoke-super {p0, p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 1030
    :goto_0
    return-void

    .line 1028
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1012
    .local p2, "additionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_1

    .line 1013
    iget-object p2, p0, Lim/delight/android/webview/AdvancedWebView;->mHttpHeaders:Ljava/util/Map;

    .line 1019
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 1020
    return-void

    .line 1015
    :cond_1
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mHttpHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1016
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mHttpHeaders:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "preventCaching"    # Z

    .prologue
    .line 1033
    if-eqz p2, :cond_0

    .line 1034
    invoke-static {p1}, Lim/delight/android/webview/AdvancedWebView;->makeUrlUnique(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1037
    :cond_0
    invoke-virtual {p0, p1}, Lim/delight/android/webview/AdvancedWebView;->loadUrl(Ljava/lang/String;)V

    .line 1038
    return-void
.end method

.method public loadUrl(Ljava/lang/String;ZLjava/util/Map;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "preventCaching"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1041
    .local p3, "additionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 1042
    invoke-static {p1}, Lim/delight/android/webview/AdvancedWebView;->makeUrlUnique(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1045
    :cond_0
    invoke-virtual {p0, p1, p3}, Lim/delight/android/webview/AdvancedWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 1046
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 266
    iget v4, p0, Lim/delight/android/webview/AdvancedWebView;->mRequestCodeFilePicker:I

    if-ne p1, v4, :cond_0

    .line 267
    const/4 v4, -0x1

    if-ne p2, v4, :cond_4

    .line 268
    if-eqz p3, :cond_0

    .line 269
    iget-object v4, p0, Lim/delight/android/webview/AdvancedWebView;->mFileUploadCallbackFirst:Landroid/webkit/ValueCallback;

    if-eqz v4, :cond_1

    .line 270
    iget-object v4, p0, Lim/delight/android/webview/AdvancedWebView;->mFileUploadCallbackFirst:Landroid/webkit/ValueCallback;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 271
    iput-object v6, p0, Lim/delight/android/webview/AdvancedWebView;->mFileUploadCallbackFirst:Landroid/webkit/ValueCallback;

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v4, p0, Lim/delight/android/webview/AdvancedWebView;->mFileUploadCallbackSecond:Landroid/webkit/ValueCallback;

    if-eqz v4, :cond_0

    .line 274
    const/4 v0, 0x0

    .line 277
    .local v0, "dataUris":[Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 278
    const/4 v4, 0x1

    new-array v1, v4, [Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v1, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "dataUris":[Landroid/net/Uri;
    .local v1, "dataUris":[Landroid/net/Uri;
    move-object v0, v1

    .line 296
    .end local v1    # "dataUris":[Landroid/net/Uri;
    .restart local v0    # "dataUris":[Landroid/net/Uri;
    :cond_2
    :goto_1
    iget-object v4, p0, Lim/delight/android/webview/AdvancedWebView;->mFileUploadCallbackSecond:Landroid/webkit/ValueCallback;

    invoke-interface {v4, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 297
    iput-object v6, p0, Lim/delight/android/webview/AdvancedWebView;->mFileUploadCallbackSecond:Landroid/webkit/ValueCallback;

    goto :goto_0

    .line 281
    :cond_3
    :try_start_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_2

    .line 282
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 283
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    .line 285
    .local v3, "numSelectedFiles":I
    new-array v0, v3, [Landroid/net/Uri;

    .line 287
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_2

    .line 288
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v0, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 287
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 302
    .end local v0    # "dataUris":[Landroid/net/Uri;
    .end local v2    # "i":I
    .end local v3    # "numSelectedFiles":I
    :cond_4
    iget-object v4, p0, Lim/delight/android/webview/AdvancedWebView;->mFileUploadCallbackFirst:Landroid/webkit/ValueCallback;

    if-eqz v4, :cond_5

    .line 303
    iget-object v4, p0, Lim/delight/android/webview/AdvancedWebView;->mFileUploadCallbackFirst:Landroid/webkit/ValueCallback;

    invoke-interface {v4, v6}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 304
    iput-object v6, p0, Lim/delight/android/webview/AdvancedWebView;->mFileUploadCallbackFirst:Landroid/webkit/ValueCallback;

    goto :goto_0

    .line 306
    :cond_5
    iget-object v4, p0, Lim/delight/android/webview/AdvancedWebView;->mFileUploadCallbackSecond:Landroid/webkit/ValueCallback;

    if-eqz v4, :cond_0

    .line 307
    iget-object v4, p0, Lim/delight/android/webview/AdvancedWebView;->mFileUploadCallbackSecond:Landroid/webkit/ValueCallback;

    invoke-interface {v4, v6}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 308
    iput-object v6, p0, Lim/delight/android/webview/AdvancedWebView;->mFileUploadCallbackSecond:Landroid/webkit/ValueCallback;

    goto :goto_0

    .line 294
    .restart local v0    # "dataUris":[Landroid/net/Uri;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 364
    invoke-virtual {p0}, Lim/delight/android/webview/AdvancedWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {p0}, Lim/delight/android/webview/AdvancedWebView;->goBack()V

    .line 366
    const/4 v0, 0x0

    .line 369
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 251
    :try_start_0
    invoke-virtual {p0}, Lim/delight/android/webview/AdvancedWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 257
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lim/delight/android/webview/AdvancedWebView;->removeAllViews()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 262
    :goto_1
    invoke-virtual {p0}, Lim/delight/android/webview/AdvancedWebView;->destroy()V

    .line 263
    return-void

    .line 259
    :catch_0
    move-exception v0

    goto :goto_1

    .line 253
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p0}, Lim/delight/android/webview/AdvancedWebView;->pauseTimers()V

    .line 243
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 244
    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V

    .line 246
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 233
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 234
    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V

    .line 236
    :cond_0
    invoke-virtual {p0}, Lim/delight/android/webview/AdvancedWebView;->resumeTimers()V

    .line 237
    return-void
.end method

.method protected openFileInput(Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Z)V
    .locals 4
    .param p3, "allowMultiple"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "fileUploadCallbackFirst":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    .local p2, "fileUploadCallbackSecond":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    const/4 v2, 0x0

    .line 1150
    iget-object v1, p0, Lim/delight/android/webview/AdvancedWebView;->mFileUploadCallbackFirst:Landroid/webkit/ValueCallback;

    if-eqz v1, :cond_0

    .line 1151
    iget-object v1, p0, Lim/delight/android/webview/AdvancedWebView;->mFileUploadCallbackFirst:Landroid/webkit/ValueCallback;

    invoke-interface {v1, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 1153
    :cond_0
    iput-object p1, p0, Lim/delight/android/webview/AdvancedWebView;->mFileUploadCallbackFirst:Landroid/webkit/ValueCallback;

    .line 1155
    iget-object v1, p0, Lim/delight/android/webview/AdvancedWebView;->mFileUploadCallbackSecond:Landroid/webkit/ValueCallback;

    if-eqz v1, :cond_1

    .line 1156
    iget-object v1, p0, Lim/delight/android/webview/AdvancedWebView;->mFileUploadCallbackSecond:Landroid/webkit/ValueCallback;

    invoke-interface {v1, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 1158
    :cond_1
    iput-object p2, p0, Lim/delight/android/webview/AdvancedWebView;->mFileUploadCallbackSecond:Landroid/webkit/ValueCallback;

    .line 1160
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1161
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1163
    if-eqz p3, :cond_2

    .line 1164
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_2

    .line 1165
    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1169
    :cond_2
    iget-object v1, p0, Lim/delight/android/webview/AdvancedWebView;->mUploadableFileTypes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1171
    iget-object v1, p0, Lim/delight/android/webview/AdvancedWebView;->mFragment:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lim/delight/android/webview/AdvancedWebView;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_4

    .line 1172
    iget-object v1, p0, Lim/delight/android/webview/AdvancedWebView;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    invoke-virtual {p0}, Lim/delight/android/webview/AdvancedWebView;->getFileUploadPromptLabel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    iget v3, p0, Lim/delight/android/webview/AdvancedWebView;->mRequestCodeFilePicker:I

    invoke-virtual {v1, v2, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1177
    :cond_3
    :goto_0
    return-void

    .line 1174
    :cond_4
    iget-object v1, p0, Lim/delight/android/webview/AdvancedWebView;->mActivity:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lim/delight/android/webview/AdvancedWebView;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1175
    iget-object v1, p0, Lim/delight/android/webview/AdvancedWebView;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p0}, Lim/delight/android/webview/AdvancedWebView;->getFileUploadPromptLabel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    iget v3, p0, Lim/delight/android/webview/AdvancedWebView;->mRequestCodeFilePicker:I

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public removeHttpHeader(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 340
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mHttpHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    return-void
.end method

.method public removePermittedHostname(Ljava/lang/String;)V
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 356
    iget-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mPermittedHostnames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 357
    return-void
.end method

.method public setCookiesEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 383
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 384
    return-void
.end method

.method public setDesktopMode(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 406
    invoke-virtual {p0}, Lim/delight/android/webview/AdvancedWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 409
    .local v1, "webSettings":Landroid/webkit/WebSettings;
    if-eqz p1, :cond_0

    .line 410
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Mobile"

    const-string v4, "eliboM"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Android"

    const-string v4, "diordnA"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "newUserAgent":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 418
    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 419
    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 420
    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 421
    return-void

    .line 413
    .end local v0    # "newUserAgent":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "eliboM"

    const-string v4, "Mobile"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "diordnA"

    const-string v4, "Android"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "newUserAgent":Ljava/lang/String;
    goto :goto_0
.end method

.method protected setGeolocationDatabasePath()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v1, p0, Lim/delight/android/webview/AdvancedWebView;->mFragment:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lim/delight/android/webview/AdvancedWebView;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lim/delight/android/webview/AdvancedWebView;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 172
    iget-object v1, p0, Lim/delight/android/webview/AdvancedWebView;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 181
    .local v0, "activity":Landroid/app/Activity;
    :goto_0
    invoke-virtual {p0}, Lim/delight/android/webview/AdvancedWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 182
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-void

    .line 174
    :cond_1
    iget-object v1, p0, Lim/delight/android/webview/AdvancedWebView;->mActivity:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lim/delight/android/webview/AdvancedWebView;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lim/delight/android/webview/AdvancedWebView;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .restart local v0    # "activity":Landroid/app/Activity;
    goto :goto_0
.end method

.method public setGeolocationEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 158
    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {p0}, Lim/delight/android/webview/AdvancedWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 160
    invoke-virtual {p0}, Lim/delight/android/webview/AdvancedWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 161
    invoke-virtual {p0}, Lim/delight/android/webview/AdvancedWebView;->setGeolocationDatabasePath()V

    .line 164
    :cond_0
    iput-boolean p1, p0, Lim/delight/android/webview/AdvancedWebView;->mGeolocationEnabled:Z

    .line 165
    return-void
.end method

.method protected setLastError()V
    .locals 2

    .prologue
    .line 1093
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lim/delight/android/webview/AdvancedWebView;->mLastError:J

    .line 1094
    return-void
.end method

.method public setListener(Landroid/app/Activity;Lim/delight/android/webview/AdvancedWebView$Listener;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lim/delight/android/webview/AdvancedWebView$Listener;

    .prologue
    .line 112
    const v0, 0xc8e2

    invoke-virtual {p0, p1, p2, v0}, Lim/delight/android/webview/AdvancedWebView;->setListener(Landroid/app/Activity;Lim/delight/android/webview/AdvancedWebView$Listener;I)V

    .line 113
    return-void
.end method

.method public setListener(Landroid/app/Activity;Lim/delight/android/webview/AdvancedWebView$Listener;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lim/delight/android/webview/AdvancedWebView$Listener;
    .param p3, "requestCodeFilePicker"    # I

    .prologue
    .line 116
    if-eqz p1, :cond_0

    .line 117
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mActivity:Ljava/lang/ref/WeakReference;

    .line 123
    :goto_0
    invoke-virtual {p0, p2, p3}, Lim/delight/android/webview/AdvancedWebView;->setListener(Lim/delight/android/webview/AdvancedWebView$Listener;I)V

    .line 124
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mActivity:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public setListener(Landroid/app/Fragment;Lim/delight/android/webview/AdvancedWebView$Listener;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "listener"    # Lim/delight/android/webview/AdvancedWebView$Listener;

    .prologue
    .line 127
    const v0, 0xc8e2

    invoke-virtual {p0, p1, p2, v0}, Lim/delight/android/webview/AdvancedWebView;->setListener(Landroid/app/Fragment;Lim/delight/android/webview/AdvancedWebView$Listener;I)V

    .line 128
    return-void
.end method

.method public setListener(Landroid/app/Fragment;Lim/delight/android/webview/AdvancedWebView$Listener;I)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "listener"    # Lim/delight/android/webview/AdvancedWebView$Listener;
    .param p3, "requestCodeFilePicker"    # I

    .prologue
    .line 131
    if-eqz p1, :cond_0

    .line 132
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mFragment:Ljava/lang/ref/WeakReference;

    .line 138
    :goto_0
    invoke-virtual {p0, p2, p3}, Lim/delight/android/webview/AdvancedWebView;->setListener(Lim/delight/android/webview/AdvancedWebView$Listener;I)V

    .line 139
    return-void

    .line 135
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lim/delight/android/webview/AdvancedWebView;->mFragment:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method protected setListener(Lim/delight/android/webview/AdvancedWebView$Listener;I)V
    .locals 0
    .param p1, "listener"    # Lim/delight/android/webview/AdvancedWebView$Listener;
    .param p2, "requestCodeFilePicker"    # I

    .prologue
    .line 142
    iput-object p1, p0, Lim/delight/android/webview/AdvancedWebView;->mListener:Lim/delight/android/webview/AdvancedWebView$Listener;

    .line 143
    iput p2, p0, Lim/delight/android/webview/AdvancedWebView;->mRequestCodeFilePicker:I

    .line 144
    return-void
.end method

.method protected setMixedContentAllowed(Landroid/webkit/WebSettings;Z)V
    .locals 2
    .param p1, "webSettings"    # Landroid/webkit/WebSettings;
    .param p2, "allowed"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 400
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 401
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 403
    :cond_0
    return-void

    .line 401
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setMixedContentAllowed(Z)V
    .locals 1
    .param p1, "allowed"    # Z

    .prologue
    .line 394
    invoke-virtual {p0}, Lim/delight/android/webview/AdvancedWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lim/delight/android/webview/AdvancedWebView;->setMixedContentAllowed(Landroid/webkit/WebSettings;Z)V

    .line 395
    return-void
.end method

.method public setThirdPartyCookiesEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 388
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 389
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 391
    :cond_0
    return-void
.end method

.method public setUploadableFileTypes(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lim/delight/android/webview/AdvancedWebView;->mUploadableFileTypes:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 0
    .param p1, "client"    # Landroid/webkit/WebChromeClient;

    .prologue
    .line 153
    iput-object p1, p0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 154
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 0
    .param p1, "client"    # Landroid/webkit/WebViewClient;

    .prologue
    .line 148
    iput-object p1, p0, Lim/delight/android/webview/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    .line 149
    return-void
.end method
