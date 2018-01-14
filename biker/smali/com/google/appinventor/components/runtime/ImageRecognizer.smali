.class public Lcom/google/appinventor/components/runtime/ImageRecognizer;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "ImageRecognizer.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ARTIFICIALINTELLIGENCE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component that provides access to the Microsoft Computer Vision API. Please refer to the <a href=\"https://www.microsoft.com/cognitive-services/\">Microsoft Cognitive Services</a> for more information."
    docUri = "image/microsoft-image-recognizer"
    iconName = "images/MicrosoftImageRecognizer.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "httpcore-4.3.2.jar,httpmime-4.3.4.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImageRecognizer"


# instance fields
.field protected activity:Landroid/app/Activity;

.field protected defaultMicrosoftEmotionAPIUrl:Ljava/lang/String;

.field protected defaultSubscriptionKey:Ljava/lang/String;

.field protected key1:[B

.field protected key2:[B

.field protected microsoftEmotionAPIUrl:Ljava/lang/String;

.field protected subscriptionKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/16 v3, 0x20

    .line 70
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 55
    const-string v2, ""

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->subscriptionKey:Ljava/lang/String;

    .line 56
    const-string v2, ""

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->defaultSubscriptionKey:Ljava/lang/String;

    .line 57
    const-string v2, ""

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->microsoftEmotionAPIUrl:Ljava/lang/String;

    .line 58
    const-string v2, "https://westus.api.cognitive.microsoft.com/vision/v1.0/describe"

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->defaultMicrosoftEmotionAPIUrl:Ljava/lang/String;

    .line 59
    new-array v2, v3, [B

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->key1:[B

    .line 61
    new-array v2, v3, [B

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->key2:[B

    .line 71
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->activity:Landroid/app/Activity;

    .line 72
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->key1:[B

    array-length v2, v2

    new-array v1, v2, [B

    .line 73
    .local v1, "retval":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->key1:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->key1:[B

    aget-byte v2, v2, v0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->key2:[B

    aget-byte v3, v3, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->defaultSubscriptionKey:Ljava/lang/String;

    .line 77
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImageRecognizer"

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/MobileAnalytics;->fabricTracking(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void

    .line 59
    :array_0
    .array-data 1
        0x45t
        0x62t
        0x38t
        0x5ft
        0x3ct
        -0x60t
        0x69t
        0x60t
        0x31t
        0x36t
        0x36t
        0x66t
        0x34t
        0x31t
        0x36t
        0x11t
        0x62t
        0x37t
        0x5et
        0x3et
        -0xdt
        0x3et
        0x67t
        0x36t
        0x37t
        0x33t
        0x39t
        0x35t
        0x62t
        0x30t
        0x31t
        0x60t
    .end array-data

    .line 61
    :array_1
    .array-data 1
        0x23t
        0x0t
        0x1t
        0x3at
        0xdt
        -0x3bt
        0xct
        0x5t
        0x0t
        0x7t
        0x7t
        0x0t
        0x0t
        0x1t
        0x0t
        0x23t
        0x0t
        0x1t
        0x3at
        0xdt
        -0x3bt
        0xct
        0x5t
        0x0t
        0x7t
        0x7t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x2t
    .end array-data
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/ImageRecognizer;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ImageRecognizer;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ImageRecognizer;->postImageFile(Ljava/lang/String;)V

    return-void
.end method

.method private postImageFile(Ljava/lang/String;)V
    .locals 21
    .param p1, "picPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v13, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v13}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 144
    .local v13, "httpclient":Lorg/apache/http/client/HttpClient;
    if-nez p1, :cond_0

    const-string p1, ""

    .line 147
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/ImageRecognizer;->subscriptionKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/ImageRecognizer;->subscriptionKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEFAULT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 148
    :cond_1
    new-instance v18, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->defaultMicrosoftEmotionAPIUrl:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 153
    .local v18, "request":Lorg/apache/http/client/methods/HttpPost;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/ImageRecognizer;->subscriptionKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/ImageRecognizer;->subscriptionKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEFAULT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 154
    :cond_2
    const-string v2, "Ocp-Apim-Subscription-Key"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->defaultSubscriptionKey:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :goto_1
    new-instance v15, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v15, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 161
    .local v15, "is":Ljava/io/BufferedInputStream;
    invoke-virtual {v15}, Ljava/io/BufferedInputStream;->available()I

    move-result v14

    .line 162
    .local v14, "i":I
    new-array v11, v14, [B

    .line 163
    .local v11, "data":[B
    invoke-virtual {v15, v11}, Ljava/io/BufferedInputStream;->read([B)I

    .line 164
    invoke-virtual {v15}, Ljava/io/BufferedInputStream;->close()V

    .line 167
    new-instance v10, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v10, v11}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 168
    .local v10, "bae":Lorg/apache/http/entity/ByteArrayEntity;
    const-string v2, "application/octet-stream"

    invoke-virtual {v10, v2}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 169
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 170
    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v19

    .line 173
    .local v19, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "["

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "]"

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 174
    .local v5, "responseContent":Ljava/lang/String;
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 179
    .local v4, "responseCode":I
    const/16 v2, 0xc8

    if-ne v4, v2, :cond_5

    .line 180
    const-string v2, "requestId"

    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 181
    .local v16, "rawTags":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v16, v2

    const-string v3, "text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 182
    .local v17, "rawTags2":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v17, v2

    const-string v3, ",\"captions\":{\""

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{\"description\":{\"tags\":"

    const-string v20, ""

    .line 183
    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\""

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 184
    .local v6, "tags":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v17, v2

    const-string v3, "\"confidence\":"

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\":\""

    const-string v20, ""

    .line 185
    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\""

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "}"

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 186
    .local v12, "descriptions":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v7, v12, v2

    .line 187
    .local v7, "description":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v12, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 195
    .end local v12    # "descriptions":[Ljava/lang/String;
    .end local v16    # "rawTags":[Ljava/lang/String;
    .end local v17    # "rawTags2":[Ljava/lang/String;
    .local v8, "descriptionScore":D
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->activity:Landroid/app/Activity;

    move-object/from16 v20, v0

    new-instance v2, Lcom/google/appinventor/components/runtime/ImageRecognizer$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/google/appinventor/components/runtime/ImageRecognizer$2;-><init>(Lcom/google/appinventor/components/runtime/ImageRecognizer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 201
    return-void

    .line 150
    .end local v4    # "responseCode":I
    .end local v5    # "responseContent":Ljava/lang/String;
    .end local v6    # "tags":Ljava/lang/String;
    .end local v7    # "description":Ljava/lang/String;
    .end local v8    # "descriptionScore":D
    .end local v10    # "bae":Lorg/apache/http/entity/ByteArrayEntity;
    .end local v11    # "data":[B
    .end local v14    # "i":I
    .end local v15    # "is":Ljava/io/BufferedInputStream;
    .end local v18    # "request":Lorg/apache/http/client/methods/HttpPost;
    .end local v19    # "response":Lorg/apache/http/HttpResponse;
    :cond_3
    new-instance v18, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->microsoftEmotionAPIUrl:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .restart local v18    # "request":Lorg/apache/http/client/methods/HttpPost;
    goto/16 :goto_0

    .line 156
    :cond_4
    const-string v2, "Ocp-Apim-Subscription-Key"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->subscriptionKey:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 189
    .restart local v4    # "responseCode":I
    .restart local v5    # "responseContent":Ljava/lang/String;
    .restart local v10    # "bae":Lorg/apache/http/entity/ByteArrayEntity;
    .restart local v11    # "data":[B
    .restart local v14    # "i":I
    .restart local v15    # "is":Ljava/io/BufferedInputStream;
    .restart local v19    # "response":Lorg/apache/http/HttpResponse;
    :cond_5
    const-string v6, "???"

    .line 190
    .restart local v6    # "tags":Ljava/lang/String;
    const-string v7, "???"

    .line 191
    .restart local v7    # "description":Ljava/lang/String;
    const-wide/16 v8, 0x0

    .restart local v8    # "descriptionScore":D
    goto :goto_2
.end method


# virtual methods
.method public GotResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 5
    .param p1, "responseCode"    # I
    .param p2, "responseContent"    # Ljava/lang/String;
    .param p3, "tags"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "descriptionScore"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 215
    const-string v0, "GotResponse"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    .line 216
    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    .line 215
    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 217
    return-void
.end method

.method public postImage(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP POST request using the Url property."
    .end annotation

    .prologue
    .line 126
    new-instance v0, Lcom/google/appinventor/components/runtime/ImageRecognizer$1;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ImageRecognizer$1;-><init>(Lcom/google/appinventor/components/runtime/ImageRecognizer;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method public serverUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The server url for the Microsoft Computer Vision API."
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->microsoftEmotionAPIUrl:Ljava/lang/String;

    return-object v0
.end method

.method public serverUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "DEFAULT"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->microsoftEmotionAPIUrl:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public subscriptionKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The subscripition key for the Microsoft Computer Vision API."
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->subscriptionKey:Ljava/lang/String;

    return-object v0
.end method

.method public subscriptionKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "DEFAULT"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ImageRecognizer;->subscriptionKey:Ljava/lang/String;

    .line 88
    return-void
.end method
