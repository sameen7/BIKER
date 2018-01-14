.class public Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;
.super Lcom/google/appinventor/components/runtime/util/NanoHTTPD;
.source "AppInvHTTPD.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppInvHTTPD"

.field private static final MIME_JSON:Ljava/lang/String; = "application/json"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.thunkable.appinventor.aicompanion3"

.field private static final YAV_SKEW_BACKWARD:I = 0x4

.field private static final YAV_SKEW_FORWARD:I = 0x1

.field private static hmacKey:[B

.field private static seq:I


# instance fields
.field private final androidUIHandler:Landroid/os/Handler;

.field private form:Lcom/google/appinventor/components/runtime/ReplForm;

.field private rootDir:Ljava/io/File;

.field private scheme:Lgnu/expr/Language;

.field private secure:Z


# direct methods
.method public constructor <init>(ILjava/io/File;ZLcom/google/appinventor/components/runtime/ReplForm;)V
    .locals 1
    .param p1, "port"    # I
    .param p2, "wwwroot"    # Ljava/io/File;
    .param p3, "secure"    # Z
    .param p4, "form"    # Lcom/google/appinventor/components/runtime/ReplForm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;-><init>(ILjava/io/File;)V

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->androidUIHandler:Landroid/os/Handler;

    .line 61
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    .line 62
    const-string v0, "scheme"

    invoke-static {v0}, Lkawa/standard/Scheme;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->scheme:Lgnu/expr/Language;

    .line 63
    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    .line 64
    iput-boolean p3, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->secure:Z

    .line 65
    invoke-static {}, Lgnu/expr/ModuleExp;->mustNeverCompile()V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;)Lcom/google/appinventor/components/runtime/ReplForm;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    return-object v0
.end method

.method private addHeaders(Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 2
    .param p1, "res"    # Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    .prologue
    .line 506
    const-string v0, "Access-Control-Allow-Origin"

    const-string v1, "*"

    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string v0, "Access-Control-Allow-Headers"

    const-string v1, "origin, content-type"

    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string v0, "Access-Control-Allow-Methods"

    const-string v1, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const-string v0, "Allow"

    const-string v1, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    return-object p1
.end method

.method private adoptMainThreadClassLoader()V
    .locals 3

    .prologue
    .line 475
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 476
    .local v0, "mainClassLoader":Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 477
    .local v1, "myThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eq v2, v0, :cond_0

    .line 478
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 480
    :cond_0
    return-void
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .param p1, "infile"    # Ljava/io/File;
    .param p2, "outfile"    # Ljava/io/File;

    .prologue
    .line 428
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 429
    .local v2, "in":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 430
    .local v4, "out":Ljava/io/FileOutputStream;
    const v5, 0x8000

    new-array v0, v5, [B

    .line 433
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .local v3, "len":I
    if-lez v3, :cond_0

    .line 434
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 439
    .end local v0    # "buffer":[B
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v3    # "len":I
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 440
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 442
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 437
    .restart local v0    # "buffer":[B
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "len":I
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 438
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private doPackageUpdate(Ljava/lang/String;)V
    .locals 1
    .param p1, "inurl"    # Ljava/lang/String;

    .prologue
    .line 523
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/PackageInstaller;->doPackageInstall(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V

    .line 524
    return-void
.end method

.method private error(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 491
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 493
    .local v1, "result":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "status"

    const-string v3, "BAD"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 494
    const-string v2, "message"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :goto_0
    new-instance v2, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v3, "200 OK"

    const-string v4, "application/json"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->addHeaders(Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v2

    return-object v2

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "AppInvHTTPD"

    const-string v3, "Unable to write basic JSON content"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private error(Ljava/lang/Throwable;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 502
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->error(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method

.method private json(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 3
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 487
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v1, "200 OK"

    const-string v2, "application/json"

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->addHeaders(Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method

.method private message(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 3
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 483
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v1, "200 OK"

    const-string v2, "text/plain"

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->addHeaders(Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method

.method private processLoadExtensionsRequest(Ljava/util/Properties;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 7
    .param p1, "parms"    # Ljava/util/Properties;

    .prologue
    .line 446
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    const-string v5, "extensions"

    const-string v6, "[]"

    invoke-virtual {p1, v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 447
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v3, "extensionsToLoad":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 449
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 450
    .local v2, "extensionName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 451
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 453
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid JSON content at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->error(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 463
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "extensionName":Ljava/lang/String;
    .end local v3    # "extensionsToLoad":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "i":I
    :goto_1
    return-object v5

    .line 457
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v3    # "extensionsToLoad":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "i":I
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v5, v3}, Lcom/google/appinventor/components/runtime/ReplForm;->loadComponents(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 461
    :try_start_2
    const-string v5, "OK"

    invoke-direct {p0, v5}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->message(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v5

    goto :goto_1

    .line 458
    :catch_0
    move-exception v1

    .line 459
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->error(Ljava/lang/Throwable;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    goto :goto_1

    .line 462
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "extensionsToLoad":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "i":I
    :catch_1
    move-exception v1

    .line 463
    .local v1, "e":Lorg/json/JSONException;
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->error(Ljava/lang/Throwable;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v5

    goto :goto_1
.end method

.method public static setHmacKey(Ljava/lang/String;)V
    .locals 1
    .param p0, "inputKey"    # Ljava/lang/String;

    .prologue
    .line 518
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hmacKey:[B

    .line 519
    const/4 v0, 0x1

    sput v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    .line 520
    return-void
.end method


# virtual methods
.method public resetSeq()V
    .locals 1

    .prologue
    .line 527
    const/4 v0, 0x1

    sput v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    .line 528
    return-void
.end method

.method public serve(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;Ljava/net/Socket;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 48
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "header"    # Ljava/util/Properties;
    .param p4, "parms"    # Ljava/util/Properties;
    .param p5, "files"    # Ljava/util/Properties;
    .param p6, "mySocket"    # Ljava/net/Socket;

    .prologue
    .line 78
    const-string v41, "AppInvHTTPD"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " \'"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "\' "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->secure:Z

    move/from16 v41, v0

    if-eqz v41, :cond_1

    .line 86
    invoke-virtual/range {p6 .. p6}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v26

    .line 87
    .local v26, "myAddress":Ljava/net/InetAddress;
    invoke-virtual/range {v26 .. v26}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v18

    .line 88
    .local v18, "hostAddress":Ljava/lang/String;
    const-string v41, "127.0.0.1"

    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_1

    .line 89
    const-string v41, "AppInvHTTPD"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Debug: hostAddress = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " while in secure mode, closing connection."

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v33, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v41, "200 OK"

    const-string v42, "application/json"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid Source Location "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "\"}"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    move-object/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .local v33, "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v41, "Access-Control-Allow-Origin"

    const-string v42, "*"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v41, "Access-Control-Allow-Headers"

    const-string v42, "origin, content-type"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v41, "Access-Control-Allow-Methods"

    const-string v42, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v41, "Allow"

    const-string v42, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    .end local v18    # "hostAddress":Ljava/lang/String;
    .end local v26    # "myAddress":Ljava/net/InetAddress;
    .end local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_0
    :goto_0
    return-object v33

    .line 102
    :cond_1
    const-string v41, "OPTIONS"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_3

    .line 106
    invoke-virtual/range {p3 .. p3}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v9

    .line 107
    .local v9, "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v41

    if-eqz v41, :cond_2

    .line 109
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    .line 110
    .local v39, "value":Ljava/lang/String;
    const-string v41, "AppInvHTTPD"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "  HDR: \'"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "\' = \'"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    .line 111
    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "\'"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 110
    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 113
    .end local v39    # "value":Ljava/lang/String;
    :cond_2
    new-instance v33, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v41, "200 OK"

    const-string v42, "text/plain"

    const-string v43, "OK"

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    move-object/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .restart local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v41, "Access-Control-Allow-Origin"

    const-string v42, "*"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v41, "Access-Control-Allow-Headers"

    const-string v42, "origin, content-type"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v41, "Access-Control-Allow-Methods"

    const-string v42, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v41, "Allow"

    const-string v42, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 122
    .end local v9    # "e":Ljava/util/Enumeration;
    .end local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_3
    const-string v41, "/_newblocks"

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_a

    .line 123
    invoke-direct/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->adoptMainThreadClassLoader()V

    .line 124
    const-string v41, "seq"

    const-string v42, "0"

    move-object/from16 v0, p4

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 125
    .local v20, "inSeq":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 126
    .local v24, "iseq":I
    const-string v41, "blockid"

    move-object/from16 v0, p4

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 127
    .local v6, "blockid":Ljava/lang/String;
    const-string v41, "code"

    move-object/from16 v0, p4

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 128
    .local v7, "code":Ljava/lang/String;
    const-string v41, "mac"

    const-string v42, "no key provided"

    move-object/from16 v0, p4

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 129
    .local v19, "inMac":Ljava/lang/String;
    const-string v8, ""

    .line 130
    .local v8, "compMac":Ljava/lang/String;
    move-object/from16 v21, v7

    .line 131
    .local v21, "input_code":Ljava/lang/String;
    sget-object v41, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hmacKey:[B

    if-eqz v41, :cond_8

    .line 133
    :try_start_0
    const-string v41, "HmacSHA1"

    invoke-static/range {v41 .. v41}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v17

    .line 134
    .local v17, "hmacSha1":Ljavax/crypto/Mac;
    new-instance v25, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v41, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hmacKey:[B

    const-string v42, "RAW"

    move-object/from16 v0, v25

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 135
    .local v25, "key":Ljavax/crypto/spec/SecretKeySpec;
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 136
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->getBytes()[B

    move-result-object v41

    move-object/from16 v0, v17

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v37

    .line 137
    .local v37, "tmpMac":[B
    new-instance v34, Ljava/lang/StringBuffer;

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v41, v0

    mul-int/lit8 v41, v41, 0x2

    move-object/from16 v0, v34

    move/from16 v1, v41

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 138
    .local v34, "sb":Ljava/lang/StringBuffer;
    new-instance v16, Ljava/util/Formatter;

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 139
    .local v16, "formatter":Ljava/util/Formatter;
    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v42, v0

    const/16 v41, 0x0

    :goto_2
    move/from16 v0, v41

    move/from16 v1, v42

    if-ge v0, v1, :cond_4

    aget-byte v5, v37, v41

    .line 140
    .local v5, "b":B
    const-string v43, "%02x"

    const/16 v44, 0x1

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v46

    aput-object v46, v44, v45

    move-object/from16 v0, v16

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 139
    add-int/lit8 v41, v41, 0x1

    goto :goto_2

    .line 141
    .end local v5    # "b":B
    :cond_4
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 149
    const-string v41, "AppInvHTTPD"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Incoming Mac = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v41, "AppInvHTTPD"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Computed Mac = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v41, "AppInvHTTPD"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Incoming seq = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v41, "AppInvHTTPD"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Computed seq = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    sget v43, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v41, "AppInvHTTPD"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "blockid = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_5

    .line 155
    const-string v41, "AppInvHTTPD"

    const-string v42, "Hmac does not match"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v42, v0

    const-string v43, "AppInvHTTPD"

    const/16 v44, 0x709

    const/16 v45, 0x1

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, "Invalid HMAC"

    aput-object v47, v45, v46

    invoke-virtual/range {v41 .. v45}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 158
    new-instance v33, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v41, "200 OK"

    const-string v42, "application/json"

    const-string v43, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid MAC\"}"

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    move-object/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .restart local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_0

    .line 142
    .end local v16    # "formatter":Ljava/util/Formatter;
    .end local v17    # "hmacSha1":Ljavax/crypto/Mac;
    .end local v25    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v34    # "sb":Ljava/lang/StringBuffer;
    .end local v37    # "tmpMac":[B
    :catch_0
    move-exception v9

    .line 143
    .local v9, "e":Ljava/lang/Exception;
    const-string v41, "AppInvHTTPD"

    const-string v42, "Error working with hmac"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v42, v0

    const-string v43, "AppInvHTTPD"

    const/16 v44, 0x709

    const/16 v45, 0x1

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, "Exception working on HMAC"

    aput-object v47, v45, v46

    invoke-virtual/range {v41 .. v45}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 146
    new-instance v33, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v41, "200 OK"

    const-string v42, "text/plain"

    const-string v43, "NOT"

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    move-object/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .restart local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_0

    .line 161
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v16    # "formatter":Ljava/util/Formatter;
    .restart local v17    # "hmacSha1":Ljavax/crypto/Mac;
    .restart local v25    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v34    # "sb":Ljava/lang/StringBuffer;
    .restart local v37    # "tmpMac":[B
    :cond_5
    sget v41, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    move/from16 v0, v41

    move/from16 v1, v24

    if-eq v0, v1, :cond_6

    sget v41, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    add-int/lit8 v42, v24, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_6

    .line 162
    const-string v41, "AppInvHTTPD"

    const-string v42, "Seq does not match"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v42, v0

    const-string v43, "AppInvHTTPD"

    const/16 v44, 0x709

    const/16 v45, 0x1

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, "Invalid Seq"

    aput-object v47, v45, v46

    invoke-virtual/range {v41 .. v45}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 165
    new-instance v33, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v41, "200 OK"

    const-string v42, "application/json"

    const-string v43, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid Seq\"}"

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    move-object/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .restart local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_0

    .line 170
    .end local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_6
    sget v41, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    add-int/lit8 v42, v24, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_7

    .line 171
    const-string v41, "AppInvHTTPD"

    const-string v42, "Seq Fixup Invoked"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_7
    add-int/lit8 v41, v24, 0x1

    sput v41, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    .line 181
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "(begin (require <com.google.youngandroid.runtime>) (process-repl-input "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " (begin "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " )))"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 184
    const-string v41, "AppInvHTTPD"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "To Eval: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :try_start_1
    const-string v41, "#f"

    move-object/from16 v0, v21

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_9

    .line 190
    const-string v41, "AppInvHTTPD"

    const-string v42, "Skipping evaluation of #f"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_3
    new-instance v33, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v41, "200 OK"

    const-string v42, "application/json"

    const/16 v43, 0x0

    invoke-static/range {v43 .. v43}, Lcom/google/appinventor/components/runtime/util/RetValManager;->fetch(Z)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    move-object/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 200
    .restart local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :goto_4
    const-string v41, "Access-Control-Allow-Origin"

    const-string v42, "*"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v41, "Access-Control-Allow-Headers"

    const-string v42, "origin, content-type"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v41, "Access-Control-Allow-Methods"

    const-string v42, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v41, "Allow"

    const-string v42, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    .end local v16    # "formatter":Ljava/util/Formatter;
    .end local v17    # "hmacSha1":Ljavax/crypto/Mac;
    .end local v25    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v34    # "sb":Ljava/lang/StringBuffer;
    .end local v37    # "tmpMac":[B
    :cond_8
    const-string v41, "AppInvHTTPD"

    const-string v42, "No HMAC Key"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v42, v0

    const-string v43, "AppInvHTTPD"

    const/16 v44, 0x709

    const/16 v45, 0x1

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, "No HMAC Key"

    aput-object v47, v45, v46

    invoke-virtual/range {v41 .. v45}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 177
    new-instance v33, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v41, "200 OK"

    const-string v42, "application/json"

    const-string v43, "{\"status\" : \"BAD\", \"message\" : \"Security Error: No HMAC Key\"}"

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    move-object/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .restart local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_0

    .line 192
    .end local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v16    # "formatter":Ljava/util/Formatter;
    .restart local v17    # "hmacSha1":Ljavax/crypto/Mac;
    .restart local v25    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v34    # "sb":Ljava/lang/StringBuffer;
    .restart local v37    # "tmpMac":[B
    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->scheme:Lgnu/expr/Language;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Lgnu/expr/Language;->eval(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 195
    :catch_1
    move-exception v11

    .line 196
    .local v11, "ex":Ljava/lang/Throwable;
    const-string v41, "AppInvHTTPD"

    const-string v42, "newblocks: Scheme Failure"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    const-string v41, "BAD"

    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-static {v6, v0, v1}, Lcom/google/appinventor/components/runtime/util/RetValManager;->appendReturnValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance v33, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v41, "200 OK"

    const-string v42, "application/json"

    const/16 v43, 0x0

    invoke-static/range {v43 .. v43}, Lcom/google/appinventor/components/runtime/util/RetValManager;->fetch(Z)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    move-object/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_4

    .line 205
    .end local v6    # "blockid":Ljava/lang/String;
    .end local v7    # "code":Ljava/lang/String;
    .end local v8    # "compMac":Ljava/lang/String;
    .end local v11    # "ex":Ljava/lang/Throwable;
    .end local v16    # "formatter":Ljava/util/Formatter;
    .end local v17    # "hmacSha1":Ljavax/crypto/Mac;
    .end local v19    # "inMac":Ljava/lang/String;
    .end local v20    # "inSeq":Ljava/lang/String;
    .end local v21    # "input_code":Ljava/lang/String;
    .end local v24    # "iseq":I
    .end local v25    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v34    # "sb":Ljava/lang/StringBuffer;
    .end local v37    # "tmpMac":[B
    :cond_a
    const-string v41, "/_values"

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_b

    .line 206
    new-instance v33, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v41, "200 OK"

    const-string v42, "application/json"

    const/16 v43, 0x1

    invoke-static/range {v43 .. v43}, Lcom/google/appinventor/components/runtime/util/RetValManager;->fetch(Z)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    move-object/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .restart local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v41, "Access-Control-Allow-Origin"

    const-string v42, "*"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v41, "Access-Control-Allow-Headers"

    const-string v42, "origin, content-type"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v41, "Access-Control-Allow-Methods"

    const-string v42, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v41, "Allow"

    const-string v42, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 212
    .end local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_b
    const-string v41, "/_getversion"

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_e

    .line 215
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/google/appinventor/components/runtime/ReplForm;->getPackageName()Ljava/lang/String;

    move-result-object v29

    .line 216
    .local v29, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/google/appinventor/components/runtime/ReplForm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v41

    const/16 v42, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v29

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v28

    .line 218
    .local v28, "pInfo":Landroid/content/pm/PackageInfo;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v41

    const/16 v42, 0x5

    move/from16 v0, v41

    move/from16 v1, v42

    if-lt v0, v1, :cond_d

    .line 219
    const-string v41, "com.thunkable.appinventor.aicompanion3"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v42, v0

    invoke-static/range {v41 .. v42}, Lcom/google/appinventor/components/runtime/util/EclairUtil;->getInstallerPackageName(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v22

    .line 226
    .local v22, "installer":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v40, v0

    .line 227
    .local v40, "versionName":Ljava/lang/String;
    if-nez v22, :cond_c

    .line 228
    const-string v22, "Not Known"

    .line 232
    :cond_c
    new-instance v33, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v41, "200 OK"

    const-string v42, "application/json"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "{\"version\" : \""

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "\", \"fingerprint\" : \""

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    sget-object v44, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "\", \"installer\" : \""

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "\", \"package\" : \""

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "\", \"fqcn\" : true }"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    move-object/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 240
    .end local v22    # "installer":Ljava/lang/String;
    .end local v28    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v29    # "packageName":Ljava/lang/String;
    .end local v40    # "versionName":Ljava/lang/String;
    .restart local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :goto_6
    const-string v41, "Access-Control-Allow-Origin"

    const-string v42, "*"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v41, "Access-Control-Allow-Headers"

    const-string v42, "origin, content-type"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v41, "Access-Control-Allow-Methods"

    const-string v42, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v41, "Allow"

    const-string v42, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->secure:Z

    move/from16 v41, v0

    if-eqz v41, :cond_0

    .line 245
    const/16 v41, 0x1

    sput v41, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->androidUIHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    new-instance v42, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD$1;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD$1;-><init>(Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;)V

    invoke-virtual/range {v41 .. v42}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 221
    .end local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v28    # "pInfo":Landroid/content/pm/PackageInfo;
    .restart local v29    # "packageName":Ljava/lang/String;
    :cond_d
    :try_start_4
    const-string v22, "Not Known"
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    .restart local v22    # "installer":Ljava/lang/String;
    goto/16 :goto_5

    .line 236
    .end local v22    # "installer":Ljava/lang/String;
    .end local v28    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v29    # "packageName":Ljava/lang/String;
    :catch_2
    move-exception v27

    .line 237
    .local v27, "n":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual/range {v27 .. v27}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 238
    new-instance v33, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v41, "200 OK"

    const-string v42, "application/json"

    const-string v43, "{\"verison\" : \"Unknown\""

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    move-object/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto :goto_6

    .line 253
    .end local v27    # "n":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_e
    const-string v41, "/_update"

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_f

    const-string v41, "/_install"

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_13

    .line 254
    :cond_f
    const-string v41, "url"

    const-string v42, ""

    move-object/from16 v0, p4

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 255
    .local v38, "url":Ljava/lang/String;
    const-string v41, "mac"

    const-string v42, ""

    move-object/from16 v0, p4

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 257
    .restart local v19    # "inMac":Ljava/lang/String;
    const-string v41, ""

    move-object/from16 v0, v38

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_12

    sget-object v41, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hmacKey:[B

    if-eqz v41, :cond_12

    const-string v41, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_12

    .line 259
    :try_start_5
    new-instance v25, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v41, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hmacKey:[B

    const-string v42, "RAW"

    move-object/from16 v0, v25

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 260
    .restart local v25    # "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string v41, "HmacSHA1"

    invoke-static/range {v41 .. v41}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v17

    .line 261
    .restart local v17    # "hmacSha1":Ljavax/crypto/Mac;
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 262
    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->getBytes()[B

    move-result-object v41

    move-object/from16 v0, v17

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v37

    .line 263
    .restart local v37    # "tmpMac":[B
    new-instance v34, Ljava/lang/StringBuffer;

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v41, v0

    mul-int/lit8 v41, v41, 0x2

    move-object/from16 v0, v34

    move/from16 v1, v41

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 264
    .restart local v34    # "sb":Ljava/lang/StringBuffer;
    new-instance v16, Ljava/util/Formatter;

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 265
    .restart local v16    # "formatter":Ljava/util/Formatter;
    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v42, v0

    const/16 v41, 0x0

    :goto_7
    move/from16 v0, v41

    move/from16 v1, v42

    if-ge v0, v1, :cond_10

    aget-byte v5, v37, v41

    .line 266
    .restart local v5    # "b":B
    const-string v43, "%02x"

    const/16 v44, 0x1

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v46

    aput-object v46, v44, v45

    move-object/from16 v0, v16

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 265
    add-int/lit8 v41, v41, 0x1

    goto :goto_7

    .line 267
    .end local v5    # "b":B
    :cond_10
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v8

    .line 279
    .restart local v8    # "compMac":Ljava/lang/String;
    const-string v41, "AppInvHTTPD"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Incoming Mac (update) = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string v41, "AppInvHTTPD"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Computed Mac (update) = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_11

    .line 282
    const-string v41, "AppInvHTTPD"

    const-string v42, "Hmac does not match"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v42, v0

    const-string v43, "AppInvHTTPD"

    const/16 v44, 0x709

    const/16 v45, 0x1

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, "Invalid HMAC (update)"

    aput-object v47, v45, v46

    invoke-virtual/range {v41 .. v45}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 285
    new-instance v33, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v41, "200 OK"

    const-string v42, "application/json"

    const-string v43, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid MAC\"}"

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    move-object/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .restart local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v41, "Access-Control-Allow-Origin"

    const-string v42, "*"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v41, "Access-Control-Allow-Headers"

    const-string v42, "origin, content-type"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v41, "Access-Control-Allow-Methods"

    const-string v42, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v41, "Allow"

    const-string v42, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 268
    .end local v8    # "compMac":Ljava/lang/String;
    .end local v16    # "formatter":Ljava/util/Formatter;
    .end local v17    # "hmacSha1":Ljavax/crypto/Mac;
    .end local v25    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v34    # "sb":Ljava/lang/StringBuffer;
    .end local v37    # "tmpMac":[B
    :catch_3
    move-exception v9

    .line 269
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string v41, "AppInvHTTPD"

    const-string v42, "Error verifying update"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v42, v0

    const-string v43, "AppInvHTTPD"

    const/16 v44, 0x709

    const/16 v45, 0x1

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, "Exception working on HMAC for update"

    aput-object v47, v45, v46

    invoke-virtual/range {v41 .. v45}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 272
    new-instance v33, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v41, "200 OK"

    const-string v42, "application/json"

    const-string v43, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Exception processing MAC\"}"

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    move-object/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .restart local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v41, "Access-Control-Allow-Origin"

    const-string v42, "*"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v41, "Access-Control-Allow-Headers"

    const-string v42, "origin, content-type"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v41, "Access-Control-Allow-Methods"

    const-string v42, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v41, "Allow"

    const-string v42, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 292
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v8    # "compMac":Ljava/lang/String;
    .restart local v16    # "formatter":Ljava/util/Formatter;
    .restart local v17    # "hmacSha1":Ljavax/crypto/Mac;
    .restart local v25    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v34    # "sb":Ljava/lang/StringBuffer;
    .restart local v37    # "tmpMac":[B
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->doPackageUpdate(Ljava/lang/String;)V

    .line 293
    new-instance v33, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v41, "200 OK"

    const-string v42, "application/json"

    const-string v43, "{\"status\" : \"OK\", \"message\" : \"Update Should Happen\"}"

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    move-object/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .restart local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v41, "Access-Control-Allow-Origin"

    const-string v42, "*"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v41, "Access-Control-Allow-Headers"

    const-string v42, "origin, content-type"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v41, "Access-Control-Allow-Methods"

    const-string v42, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v41, "Allow"

    const-string v42, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 300
    .end local v8    # "compMac":Ljava/lang/String;
    .end local v16    # "formatter":Ljava/util/Formatter;
    .end local v17    # "hmacSha1":Ljavax/crypto/Mac;
    .end local v25    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v34    # "sb":Ljava/lang/StringBuffer;
    .end local v37    # "tmpMac":[B
    :cond_12
    new-instance v33, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v41, "200 OK"

    const-string v42, "application/json"

    const-string v43, "{\"status\" : \"BAD\", \"message\" : \"Missing Parameters\"}"

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    move-object/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .restart local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v41, "Access-Control-Allow-Origin"

    const-string v42, "*"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v41, "Access-Control-Allow-Headers"

    const-string v42, "origin, content-type"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v41, "Access-Control-Allow-Methods"

    const-string v42, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v41, "Allow"

    const-string v42, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 307
    .end local v19    # "inMac":Ljava/lang/String;
    .end local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v38    # "url":Ljava/lang/String;
    :cond_13
    const-string v41, "/_package"

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_15

    .line 309
    const-string v41, "package"

    const/16 v42, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 310
    .local v30, "packageapk":Ljava/lang/String;
    if-nez v30, :cond_14

    .line 311
    new-instance v33, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v41, "200 OK"

    const-string v42, "text/plain"

    const-string v43, "NOT OK"

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    move-object/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .restart local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_0

    .line 314
    .end local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_14
    const-string v41, "AppInvHTTPD"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "/"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    new-instance v23, Landroid/content/Intent;

    const-string v41, "android.intent.action.VIEW"

    move-object/from16 v0, v23

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    .local v23, "intent":Landroid/content/Intent;
    new-instance v41, Ljava/io/File;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "/"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v41 .. v41}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v31

    .line 317
    .local v31, "packageuri":Landroid/net/Uri;
    const-string v41, "application/vnd.android.package-archive"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ReplForm;->startActivity(Landroid/content/Intent;)V

    .line 319
    new-instance v33, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v41, "200 OK"

    const-string v42, "text/plain"

    const-string v43, "OK"

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    move-object/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .restart local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v41, "Access-Control-Allow-Origin"

    const-string v42, "*"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v41, "Access-Control-Allow-Headers"

    const-string v42, "origin, content-type"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v41, "Access-Control-Allow-Methods"

    const-string v42, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v41, "Allow"

    const-string v42, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 325
    .end local v23    # "intent":Landroid/content/Intent;
    .end local v30    # "packageapk":Ljava/lang/String;
    .end local v31    # "packageuri":Landroid/net/Uri;
    .end local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_15
    const-string v41, "/_extensions"

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_16

    .line 326
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->processLoadExtensionsRequest(Ljava/util/Properties;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v33

    goto/16 :goto_0

    .line 329
    :cond_16
    const-string v41, "PUT"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_1e

    .line 330
    const/16 v41, 0x0

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 331
    .local v10, "error":Ljava/lang/Boolean;
    const-string v41, "content"

    const/16 v42, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 332
    .local v36, "tmpFileName":Ljava/lang/String;
    if-eqz v36, :cond_1c

    .line 333
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, v36

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 334
    .local v13, "fileFrom":Ljava/io/File;
    const-string v41, "filename"

    const/16 v42, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 335
    .local v15, "filename":Ljava/lang/String;
    if-eqz v15, :cond_18

    .line 336
    const-string v41, ".."

    move-object/from16 v0, v41

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_17

    const-string v41, ".."

    move-object/from16 v0, v41

    invoke-virtual {v15, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_17

    const-string v41, "../"

    .line 337
    move-object/from16 v0, v41

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v41

    if-ltz v41, :cond_18

    .line 338
    :cond_17
    const-string v41, "AppInvHTTPD"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, " Ignoring invalid filename: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v15, 0x0

    .line 342
    :cond_18
    if-eqz v15, :cond_1b

    .line 344
    new-instance v14, Ljava/io/File;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "/"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 345
    .local v14, "fileTo":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v32

    .line 346
    .local v32, "parentFileTo":Ljava/io/File;
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->exists()Z

    move-result v41

    if-nez v41, :cond_19

    .line 347
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->mkdirs()Z

    .line 349
    :cond_19
    invoke-virtual {v13, v14}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v41

    if-nez v41, :cond_1a

    .line 350
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 351
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 362
    .end local v13    # "fileFrom":Ljava/io/File;
    .end local v14    # "fileTo":Ljava/io/File;
    .end local v15    # "filename":Ljava/lang/String;
    .end local v32    # "parentFileTo":Ljava/io/File;
    :cond_1a
    :goto_8
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v41

    if-eqz v41, :cond_1d

    .line 363
    new-instance v33, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v41, "200 OK"

    const-string v42, "text/plain"

    const-string v43, "NOTOK"

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    move-object/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .restart local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v41, "Access-Control-Allow-Origin"

    const-string v42, "*"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v41, "Access-Control-Allow-Headers"

    const-string v42, "origin, content-type"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v41, "Access-Control-Allow-Methods"

    const-string v42, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v41, "Allow"

    const-string v42, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 354
    .end local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v13    # "fileFrom":Ljava/io/File;
    .restart local v15    # "filename":Ljava/lang/String;
    :cond_1b
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 355
    const-string v41, "AppInvHTTPD"

    const-string v42, "Received content without a file name!"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_8

    .line 359
    .end local v13    # "fileFrom":Ljava/io/File;
    .end local v15    # "filename":Ljava/lang/String;
    :cond_1c
    const-string v41, "AppInvHTTPD"

    const-string v42, "Received PUT without content."

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_8

    .line 370
    :cond_1d
    new-instance v33, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v41, "200 OK"

    const-string v42, "text/plain"

    const-string v43, "OK"

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    move-object/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .restart local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v41, "Access-Control-Allow-Origin"

    const-string v42, "*"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v41, "Access-Control-Allow-Headers"

    const-string v42, "origin, content-type"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v41, "Access-Control-Allow-Methods"

    const-string v42, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v41, "Allow"

    const-string v42, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 379
    .end local v10    # "error":Ljava/lang/Boolean;
    .end local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v36    # "tmpFileName":Ljava/lang/String;
    :cond_1e
    invoke-virtual/range {p3 .. p3}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v9

    .line 380
    .local v9, "e":Ljava/util/Enumeration;
    :goto_9
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v41

    if-eqz v41, :cond_1f

    .line 382
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    .line 383
    .restart local v39    # "value":Ljava/lang/String;
    const-string v41, "AppInvHTTPD"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "  HDR: \'"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "\' = \'"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    .line 384
    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "\'"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 383
    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 386
    .end local v39    # "value":Ljava/lang/String;
    :cond_1f
    invoke-virtual/range {p4 .. p4}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v9

    .line 387
    :goto_a
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v41

    if-eqz v41, :cond_20

    .line 389
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    .line 390
    .restart local v39    # "value":Ljava/lang/String;
    const-string v41, "AppInvHTTPD"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "  PRM: \'"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "\' = \'"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    .line 391
    move-object/from16 v0, p4

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "\'"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 390
    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 393
    .end local v39    # "value":Ljava/lang/String;
    :cond_20
    invoke-virtual/range {p5 .. p5}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v9

    .line 394
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v41

    if-eqz v41, :cond_25

    .line 396
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 397
    .local v12, "fieldname":Ljava/lang/String;
    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 398
    .local v35, "tempLocation":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 399
    .restart local v15    # "filename":Ljava/lang/String;
    const-string v41, ".."

    move-object/from16 v0, v41

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_21

    const-string v41, ".."

    move-object/from16 v0, v41

    invoke-virtual {v15, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_21

    const-string v41, "../"

    .line 400
    move-object/from16 v0, v41

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v41

    if-ltz v41, :cond_22

    .line 401
    :cond_21
    const-string v41, "AppInvHTTPD"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, " Ignoring invalid filename: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/4 v15, 0x0

    .line 404
    :cond_22
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, v35

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 405
    .restart local v13    # "fileFrom":Ljava/io/File;
    if-nez v15, :cond_24

    .line 406
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 414
    :cond_23
    :goto_b
    const-string v41, "AppInvHTTPD"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, " UPLOADED: \'"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "\' was at \'"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "\'"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    new-instance v33, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v41, "200 OK"

    const-string v42, "text/plain"

    const-string v43, "OK"

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    move-object/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    .restart local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v41, "Access-Control-Allow-Origin"

    const-string v42, "*"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v41, "Access-Control-Allow-Headers"

    const-string v42, "origin, content-type"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v41, "Access-Control-Allow-Methods"

    const-string v42, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v41, "Allow"

    const-string v42, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 408
    .end local v33    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_24
    new-instance v14, Ljava/io/File;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "/"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 409
    .restart local v14    # "fileTo":Ljava/io/File;
    invoke-virtual {v13, v14}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v41

    if-nez v41, :cond_23

    .line 410
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 411
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    goto/16 :goto_b

    .line 423
    .end local v12    # "fieldname":Ljava/lang/String;
    .end local v13    # "fileFrom":Ljava/io/File;
    .end local v14    # "fileTo":Ljava/io/File;
    .end local v15    # "filename":Ljava/lang/String;
    .end local v35    # "tempLocation":Ljava/lang/String;
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v41

    move/from16 v4, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->serveFile(Ljava/lang/String;Ljava/util/Properties;Ljava/io/File;Z)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v33

    goto/16 :goto_0
.end method
