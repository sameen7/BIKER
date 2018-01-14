.class public Lcom/google/appinventor/components/runtime/EmotionRecognizer;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "EmotionRecognizer.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ARTIFICIALINTELLIGENCE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component that provides access to the Microsoft Emotion API. Please refer to the <a href=\"https://www.microsoft.com/cognitive-services/\">Microsoft Cognitive Services</a> for more information."
    docUri = "image/microsoft-image-recognizer"
    iconName = "images/MicrosoftEmotionRecognizer.png"
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
.field private static final LOG_TAG:Ljava/lang/String; = "EmotionRecognizer"


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

    .line 77
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 61
    const-string v2, ""

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->subscriptionKey:Ljava/lang/String;

    .line 62
    const-string v2, ""

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->defaultSubscriptionKey:Ljava/lang/String;

    .line 63
    const-string v2, ""

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->microsoftEmotionAPIUrl:Ljava/lang/String;

    .line 64
    const-string v2, "https://westus.api.cognitive.microsoft.com/emotion/v1.0/recognize"

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->defaultMicrosoftEmotionAPIUrl:Ljava/lang/String;

    .line 66
    new-array v2, v3, [B

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->key1:[B

    .line 68
    new-array v2, v3, [B

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->key2:[B

    .line 78
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->activity:Landroid/app/Activity;

    .line 79
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->key1:[B

    array-length v2, v2

    new-array v1, v2, [B

    .line 80
    .local v1, "retval":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->key1:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->key1:[B

    aget-byte v2, v2, v0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->key2:[B

    aget-byte v3, v3, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->defaultSubscriptionKey:Ljava/lang/String;

    .line 84
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EmotionRecognizer"

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/MobileAnalytics;->fabricTracking(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void

    .line 66
    :array_0
    .array-data 1
        0x41t
        0x39t
        0x39t
        0xet
        0x38t
        -0x5at
        0x69t
        0x33t
        0x32t
        0x3et
        0x32t
        0x32t
        0x34t
        0x37t
        0x39t
        0x47t
        0x39t
        0x63t
        0x3t
        0x3ct
        -0x59t
        0x38t
        0x60t
        0x31t
        0x61t
        0x36t
        0x61t
        0x39t
        0x65t
        0x65t
        0x67t
        0x37t
    .end array-data

    .line 68
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


# virtual methods
.method public GotResponse(ILjava/lang/String;Ljava/lang/String;D)V
    .locals 4
    .param p1, "responseCode"    # I
    .param p2, "responseContent"    # Ljava/lang/String;
    .param p3, "mostLikelyEmotion"    # Ljava/lang/String;
    .param p4, "mostLikelyEmotionScore"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 227
    const-string v0, "GotResponse"

    const/4 v1, 0x4

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

    .line 228
    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    .line 227
    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 229
    return-void
.end method

.method public postImage(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP POST request using the Url property."
    .end annotation

    .prologue
    .line 133
    new-instance v0, Lcom/google/appinventor/components/runtime/EmotionRecognizer$1;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/EmotionRecognizer$1;-><init>(Lcom/google/appinventor/components/runtime/EmotionRecognizer;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method

.method protected postImageFile(Ljava/lang/String;)V
    .locals 21
    .param p1, "picPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    new-instance v10, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 151
    .local v10, "httpclient":Lorg/apache/http/client/HttpClient;
    if-nez p1, :cond_0

    const-string p1, ""

    .line 154
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->subscriptionKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->subscriptionKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEFAULT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 155
    :cond_1
    new-instance v14, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->defaultMicrosoftEmotionAPIUrl:Ljava/lang/String;

    invoke-direct {v14, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 160
    .local v14, "request":Lorg/apache/http/client/methods/HttpPost;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->subscriptionKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->subscriptionKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEFAULT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 161
    :cond_2
    const-string v2, "Ocp-Apim-Subscription-Key"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->defaultSubscriptionKey:Ljava/lang/String;

    invoke-virtual {v14, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :goto_1
    new-instance v12, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v12, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 168
    .local v12, "is":Ljava/io/BufferedInputStream;
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->available()I

    move-result v11

    .line 169
    .local v11, "i":I
    new-array v9, v11, [B

    .line 170
    .local v9, "data":[B
    invoke-virtual {v12, v9}, Ljava/io/BufferedInputStream;->read([B)I

    .line 171
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V

    .line 174
    new-instance v8, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v8, v9}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 175
    .local v8, "bae":Lorg/apache/http/entity/ByteArrayEntity;
    const-string v2, "application/octet-stream"

    invoke-virtual {v8, v2}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v14, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 177
    invoke-interface {v10, v14}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 180
    .local v15, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

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

    .line 181
    .local v5, "responseContent":Ljava/lang/String;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 185
    .local v4, "responseCode":I
    const/16 v2, 0xc8

    if-ne v4, v2, :cond_7

    .line 186
    move-object/from16 v16, v5

    .line 187
    .local v16, "responseString":Ljava/lang/String;
    const-string v2, "faceRectangle"

    const/4 v3, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 188
    const-string v2, "scores"

    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 189
    .local v18, "scores":[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v18, v2

    const-string v3, ":{"

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "}}"

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 190
    .local v17, "result":Ljava/lang/String;
    const-string v2, ","

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 191
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 192
    .local v19, "scoresMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Double;Ljava/lang/String;>;"
    const/4 v11, 0x0

    :goto_2
    move-object/from16 v0, v18

    array-length v2, v0

    if-ge v11, v2, :cond_5

    .line 193
    aget-object v2, v18, v11

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aget-object v3, v18, v11

    const-string v20, ":"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/16 v20, 0x0

    aget-object v3, v3, v20

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 157
    .end local v4    # "responseCode":I
    .end local v5    # "responseContent":Ljava/lang/String;
    .end local v8    # "bae":Lorg/apache/http/entity/ByteArrayEntity;
    .end local v9    # "data":[B
    .end local v11    # "i":I
    .end local v12    # "is":Ljava/io/BufferedInputStream;
    .end local v14    # "request":Lorg/apache/http/client/methods/HttpPost;
    .end local v15    # "response":Lorg/apache/http/HttpResponse;
    .end local v16    # "responseString":Ljava/lang/String;
    .end local v17    # "result":Ljava/lang/String;
    .end local v18    # "scores":[Ljava/lang/String;
    .end local v19    # "scoresMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Double;Ljava/lang/String;>;"
    :cond_3
    new-instance v14, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->microsoftEmotionAPIUrl:Ljava/lang/String;

    invoke-direct {v14, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .restart local v14    # "request":Lorg/apache/http/client/methods/HttpPost;
    goto/16 :goto_0

    .line 163
    :cond_4
    const-string v2, "Ocp-Apim-Subscription-Key"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->subscriptionKey:Ljava/lang/String;

    invoke-virtual {v14, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 195
    .restart local v4    # "responseCode":I
    .restart local v5    # "responseContent":Ljava/lang/String;
    .restart local v8    # "bae":Lorg/apache/http/entity/ByteArrayEntity;
    .restart local v9    # "data":[B
    .restart local v11    # "i":I
    .restart local v12    # "is":Ljava/io/BufferedInputStream;
    .restart local v15    # "response":Lorg/apache/http/HttpResponse;
    .restart local v16    # "responseString":Ljava/lang/String;
    .restart local v17    # "result":Ljava/lang/String;
    .restart local v18    # "scores":[Ljava/lang/String;
    .restart local v19    # "scoresMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Double;Ljava/lang/String;>;"
    :cond_5
    new-instance v13, Ljava/util/TreeSet;

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 196
    .local v13, "keys":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Double;>;"
    invoke-interface {v13}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "\""

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 197
    .local v6, "mostLikelyEmotion":Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    .line 208
    .end local v13    # "keys":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Double;>;"
    .end local v16    # "responseString":Ljava/lang/String;
    .end local v17    # "result":Ljava/lang/String;
    .end local v18    # "scores":[Ljava/lang/String;
    .end local v19    # "scoresMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Double;Ljava/lang/String;>;"
    .local v7, "mostLikelyEmotionScore":Ljava/lang/Double;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->activity:Landroid/app/Activity;

    move-object/from16 v20, v0

    new-instance v2, Lcom/google/appinventor/components/runtime/EmotionRecognizer$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/appinventor/components/runtime/EmotionRecognizer$2;-><init>(Lcom/google/appinventor/components/runtime/EmotionRecognizer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 214
    return-void

    .line 199
    .end local v6    # "mostLikelyEmotion":Ljava/lang/String;
    .end local v7    # "mostLikelyEmotionScore":Ljava/lang/Double;
    .restart local v16    # "responseString":Ljava/lang/String;
    :cond_6
    const-string v6, "There are more than one face in the picture. Please check the response content."

    .line 200
    .restart local v6    # "mostLikelyEmotion":Ljava/lang/String;
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .restart local v7    # "mostLikelyEmotionScore":Ljava/lang/Double;
    goto :goto_3

    .line 203
    .end local v6    # "mostLikelyEmotion":Ljava/lang/String;
    .end local v7    # "mostLikelyEmotionScore":Ljava/lang/Double;
    .end local v16    # "responseString":Ljava/lang/String;
    :cond_7
    const-string v6, "There is something wrong."

    .line 204
    .restart local v6    # "mostLikelyEmotion":Ljava/lang/String;
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .restart local v7    # "mostLikelyEmotionScore":Ljava/lang/Double;
    goto :goto_3
.end method

.method public serverUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The server url for the Microsoft Emotion API."
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->microsoftEmotionAPIUrl:Ljava/lang/String;

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
    .line 113
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->microsoftEmotionAPIUrl:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public subscriptionKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The subscripition key for the Microsoft Emotion API."
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->subscriptionKey:Ljava/lang/String;

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
    .line 94
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->subscriptionKey:Ljava/lang/String;

    .line 95
    return-void
.end method
