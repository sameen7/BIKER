.class public Lcom/google/appinventor/components/runtime/util/MediaUtil;
.super Ljava/lang/Object;
.source "MediaUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/MediaUtil$FlushedInputStream;,
        Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;,
        Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MediaUtil"

.field private static REPL_ASSET_DIR:Ljava/lang/String;

.field private static pathCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final tempFileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil;->REPL_ASSET_DIR:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil;->tempFileMap:Ljava/util/Map;

    .line 177
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil;->pathCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/InputStream;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Form;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "x1"    # Ljava/io/InputStream;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapOptions(Lcom/google/appinventor/components/runtime/Form;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # Landroid/graphics/Rect;
    .param p2, "x2"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 48
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static cacheMediaTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/File;
    .locals 4
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .param p2, "mediaSource"    # Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    sget-object v1, Lcom/google/appinventor/components/runtime/util/MediaUtil;->tempFileMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 321
    .local v0, "tempFile":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 322
    :cond_0
    const-string v1, "MediaUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Copying media "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to temp file..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->copyMediaToTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/File;

    move-result-object v0

    .line 324
    const-string v1, "MediaUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished copying media "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to temp file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 325
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 324
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    sget-object v1, Lcom/google/appinventor/components/runtime/util/MediaUtil;->tempFileMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_1
    return-object v0
.end method

.method public static copyMediaToTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->determineMediaSource(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    move-result-object v0

    .line 286
    .local v0, "mediaSource":Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->copyMediaToTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method private static copyMediaToTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/File;
    .locals 6
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .param p2, "mediaSource"    # Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/InputStream;

    move-result-object v2

    .line 292
    .local v2, "in":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 294
    .local v1, "file":Ljava/io/File;
    :try_start_0
    const-string v3, "AI_Media_"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 295
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    .line 296
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/FileUtil;->writeStreamToFile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 297
    return-object v1

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_0

    .line 301
    :try_start_1
    const-string v3, "MediaUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not copy media "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to temp file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 302
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 301
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 309
    :goto_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 313
    throw v3

    .line 305
    .restart local v0    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_2
    const-string v3, "MediaUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not copy media "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to temp file."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "outPadding"    # Landroid/graphics/Rect;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 505
    new-instance v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$FlushedInputStream;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/MediaUtil$FlushedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static determineMediaSource(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    .locals 1
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;

    .prologue
    .line 143
    const-string v0, "/sdcard/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    :cond_0
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->SDCARD:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    .line 174
    .end local p0    # "form":Lcom/google/appinventor/components/runtime/Form;
    :goto_0
    return-object v0

    .line 147
    .restart local p0    # "form":Lcom/google/appinventor/components/runtime/Form;
    :cond_1
    const-string v0, "content://contacts/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->CONTACT_URI:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    goto :goto_0

    .line 150
    :cond_2
    const-string v0, "content://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 151
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->CONTENT_URI:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    goto :goto_0

    .line 155
    :cond_3
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 157
    const-string v0, "file:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 158
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->FILE_URL:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    goto :goto_0

    .line 161
    :cond_4
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->URL:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 167
    instance-of v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v0, :cond_6

    .line 168
    check-cast p0, Lcom/google/appinventor/components/runtime/ReplForm;

    .end local p0    # "form":Lcom/google/appinventor/components/runtime/Form;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ReplForm;->isAssetsLoaded()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 169
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->REPL_ASSET:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    goto :goto_0

    .line 171
    :cond_5
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->ASSET:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    goto :goto_0

    .line 174
    .restart local p0    # "form":Lcom/google/appinventor/components/runtime/Form;
    :cond_6
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->ASSET:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    goto :goto_0
.end method

.method static fileUrlToFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to determine file path of file url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to determine file path of file url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static findCaseinsensitivePath(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    sget-object v1, Lcom/google/appinventor/components/runtime/util/MediaUtil;->pathCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->findCaseinsensitivePathWithoutCache(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "newPath":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 184
    const/4 v1, 0x0

    .line 188
    .end local v0    # "newPath":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 186
    .restart local v0    # "newPath":Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/google/appinventor/components/runtime/util/MediaUtil;->pathCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .end local v0    # "newPath":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/google/appinventor/components/runtime/util/MediaUtil;->pathCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method private static findCaseinsensitivePathWithoutCache(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "mediaPathlist":[Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 203
    .local v1, "l":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 204
    aget-object v3, v2, v0

    .line 205
    .local v3, "temp":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 209
    .end local v3    # "temp":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 203
    .restart local v3    # "temp":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    .end local v3    # "temp":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getAssetFilePath(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 740
    move-object v0, p1

    .line 741
    .local v0, "filePath":Ljava/lang/String;
    instance-of v1, p0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v1, :cond_0

    .line 742
    check-cast p0, Lcom/google/appinventor/components/runtime/ReplForm;

    .end local p0    # "form":Lcom/google/appinventor/components/runtime/Form;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ReplForm;->isAssetsLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 743
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->replAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 745
    :cond_0
    return-object v0
.end method

.method private static getAssetsIgnoreCaseAfd(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 3
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 586
    :try_start_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 593
    :goto_0
    return-object v2

    .line 588
    :catch_0
    move-exception v0

    .line 589
    .local v0, "e":Ljava/io/IOException;
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->findCaseinsensitivePath(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 590
    .local v1, "path":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 591
    throw v0

    .line 593
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    goto :goto_0
.end method

.method private static getAssetsIgnoreCaseInputStream(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    :try_start_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 229
    :goto_0
    return-object v2

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/io/IOException;
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->findCaseinsensitivePath(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "path":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 227
    throw v0

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0
.end method

.method public static getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 352
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 373
    :cond_0
    return-object v2

    .line 355
    :cond_1
    new-instance v3, Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;

    invoke-direct {v3, v2}, Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;-><init>(Lcom/google/appinventor/components/runtime/util/MediaUtil$1;)V

    .line 356
    .local v3, "syncer":Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;
    new-instance v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$1;

    invoke-direct {v0, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil$1;-><init>(Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;)V

    .line 366
    .local v0, "continuation":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Landroid/graphics/drawable/BitmapDrawable;>;"
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawableAsync(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 367
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;->waitfor()V

    .line 368
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 369
    .local v2, "result":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v2, :cond_0

    .line 370
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;->getError()Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, "error":Ljava/lang/String;
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getBitmapDrawableAsync(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .locals 3
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/Form;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 389
    .local p2, "continuation":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Landroid/graphics/drawable/BitmapDrawable;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 390
    :cond_0
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V

    .line 499
    :goto_0
    return-void

    .line 394
    :cond_1
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->determineMediaSource(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    move-result-object v1

    .line 396
    .local v1, "mediaSource":Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    new-instance v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;

    invoke-direct {v0, p1, p0, v1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;-><init>(Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 498
    .local v0, "loadImage":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static getBitmapOptions(Lcom/google/appinventor/components/runtime/Form;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .locals 10
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "mediaPath"    # Ljava/lang/String;

    .prologue
    .line 536
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 537
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 538
    const/4 v7, 0x0

    invoke-static {p1, v7, v5}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 539
    iget v2, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 540
    .local v2, "imageWidth":I
    iget v1, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 543
    .local v1, "imageHeight":I
    const-string v7, "window"

    invoke-virtual {p0, v7}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 544
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 554
    .local v0, "display":Landroid/view/Display;
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getCompatibilityMode()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 555
    const/16 v4, 0x2d0

    .line 556
    .local v4, "maxWidth":I
    const/16 v3, 0x348

    .line 562
    .local v3, "maxHeight":I
    :goto_0
    const/4 v6, 0x1

    .line 563
    .local v6, "sampleSize":I
    :goto_1
    div-int v7, v2, v6

    if-le v7, v4, :cond_1

    div-int v7, v1, v6

    if-le v7, v3, :cond_1

    .line 564
    mul-int/lit8 v6, v6, 0x2

    goto :goto_1

    .line 558
    .end local v3    # "maxHeight":I
    .end local v4    # "maxWidth":I
    .end local v6    # "sampleSize":I
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v8

    div-float/2addr v7, v8

    float-to-int v4, v7

    .line 559
    .restart local v4    # "maxWidth":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v8

    div-float/2addr v7, v8

    float-to-int v3, v7

    .restart local v3    # "maxHeight":I
    goto :goto_0

    .line 566
    .restart local v6    # "sampleSize":I
    :cond_1
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 567
    .restart local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    const-string v7, "MediaUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getBitmapOptions: sampleSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mediaPath = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " maxWidth = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " maxHeight = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " display width = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 569
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " display height = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 567
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 571
    return-object v5
.end method

.method public static loadMediaPlayer(Landroid/media/MediaPlayer;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    .locals 10
    .param p0, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p2, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 650
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->determineMediaSource(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    move-result-object v7

    .line 651
    .local v7, "mediaSource":Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->$SwitchMap$com$google$appinventor$components$runtime$util$MediaUtil$MediaSource:[I

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->ordinal()I

    move-result v8

    aget v0, v0, v8

    packed-switch v0, :pswitch_data_0

    .line 691
    new-instance v0, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to load audio or video "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 653
    :pswitch_0
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getAssetsIgnoreCaseAfd(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 655
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 656
    .local v1, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    .line 657
    .local v2, "offset":J
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .local v4, "length":J
    move-object v0, p0

    .line 658
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 686
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v2    # "offset":J
    .end local v4    # "length":J
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return-void

    .line 660
    .restart local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 661
    throw v0

    .line 666
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :pswitch_1
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->replAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 670
    :pswitch_2
    invoke-virtual {p0, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 674
    :pswitch_3
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->fileUrlToFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 681
    :pswitch_4
    invoke-virtual {p0, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 685
    :pswitch_5
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 689
    :pswitch_6
    new-instance v0, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to load audio or video for contact "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 651
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static loadSoundPool(Landroid/media/SoundPool;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)I
    .locals 5
    .param p0, "soundPool"    # Landroid/media/SoundPool;
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p2, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 612
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->determineMediaSource(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    move-result-object v0

    .line 613
    .local v0, "mediaSource":Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    sget-object v2, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->$SwitchMap$com$google$appinventor$components$runtime$util$MediaUtil$MediaSource:[I

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 635
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load audio "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 615
    :pswitch_0
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getAssetsIgnoreCaseAfd(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v2

    .line 629
    :goto_0
    return v2

    .line 618
    :pswitch_1
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->replAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 621
    :pswitch_2
    invoke-virtual {p0, p2, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 624
    :pswitch_3
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->fileUrlToFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 628
    :pswitch_4
    invoke-static {p1, p2, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->cacheMediaTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/File;

    move-result-object v1

    .line 629
    .local v1, "tempFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 632
    .end local v1    # "tempFile":Ljava/io/File;
    :pswitch_5
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load audio for contact "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 613
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static loadVideoView(Landroid/widget/VideoView;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    .locals 5
    .param p0, "videoView"    # Landroid/widget/VideoView;
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p2, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 709
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->determineMediaSource(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    move-result-object v0

    .line 710
    .local v0, "mediaSource":Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    sget-object v2, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->$SwitchMap$com$google$appinventor$components$runtime$util$MediaUtil$MediaSource:[I

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 736
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 713
    :pswitch_0
    invoke-static {p1, p2, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->cacheMediaTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/File;

    move-result-object v1

    .line 714
    .local v1, "tempFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 731
    .end local v1    # "tempFile":Ljava/io/File;
    :goto_0
    return-void

    .line 718
    :pswitch_1
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->replAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    goto :goto_0

    .line 722
    :pswitch_2
    invoke-virtual {p0, p2}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    goto :goto_0

    .line 726
    :pswitch_3
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->fileUrlToFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    goto :goto_0

    .line 730
    :pswitch_4
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_0

    .line 734
    :pswitch_5
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load video for contact "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 710
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->determineMediaSource(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private static openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/InputStream;
    .locals 4
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .param p2, "mediaSource"    # Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    sget-object v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->$SwitchMap$com$google$appinventor$components$runtime$util$MediaUtil$MediaSource:[I

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 269
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open media "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 238
    :pswitch_0
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getAssetsIgnoreCaseInputStream(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 264
    :cond_0
    :goto_0
    return-object v0

    .line 241
    :pswitch_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->replAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :pswitch_2
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :pswitch_3
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 251
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 255
    :pswitch_5
    const/4 v0, 0x0

    .line 256
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v1

    const/16 v2, 0xc

    if-lt v1, v2, :cond_1

    .line 257
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 258
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 257
    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->openContactPhotoInputStreamHelper(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 263
    :goto_1
    if-nez v0, :cond_0

    .line 267
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open contact photo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 261
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 260
    invoke-static {v1, v2}, Landroid/provider/Contacts$People;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static replAssetPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "assetName"    # Ljava/lang/String;

    .prologue
    .line 105
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil;->REPL_ASSET_DIR:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/AppInventor/assets/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil;->REPL_ASSET_DIR:Ljava/lang/String;

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/appinventor/components/runtime/util/MediaUtil;->REPL_ASSET_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
