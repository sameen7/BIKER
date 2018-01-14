.class public Lcom/google/appinventor/components/runtime/util/FroyoUtil;
.super Ljava/lang/Object;
.source "FroyoUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static abandonFocus(Landroid/media/AudioManager;Ljava/lang/Object;)V
    .locals 0
    .param p0, "am"    # Landroid/media/AudioManager;
    .param p1, "afChangeListener"    # Ljava/lang/Object;

    .prologue
    .line 118
    check-cast p1, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .end local p1    # "afChangeListener":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 119
    return-void
.end method

.method public static focusRequestGranted(Landroid/media/AudioManager;Ljava/lang/Object;)Z
    .locals 3
    .param p0, "am"    # Landroid/media/AudioManager;
    .param p1, "afChangeListener"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 107
    check-cast p1, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .end local p1    # "afChangeListener":Ljava/lang/Object;
    const/4 v2, 0x3

    invoke-virtual {p0, p1, v2, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 109
    .local v0, "result":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getRotation(Landroid/view/Display;)I
    .locals 1
    .param p0, "display"    # Landroid/view/Display;

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method public static getWebViewClient(ZZZLcom/google/appinventor/components/runtime/ComponentContainer;Lcom/google/appinventor/components/runtime/Component;)Landroid/webkit/WebViewClient;
    .locals 7
    .param p0, "ignoreErrors"    # Z
    .param p1, "followLinks"    # Z
    .param p2, "useExternalBrowser"    # Z
    .param p3, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p4, "component"    # Lcom/google/appinventor/components/runtime/Component;

    .prologue
    .line 131
    invoke-interface {p3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    .line 132
    .local v5, "form":Lcom/google/appinventor/components/runtime/Form;
    invoke-interface {p3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    .line 133
    .local v2, "activity":Landroid/app/Activity;
    new-instance v0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$2;

    move v1, p2

    move v3, p1

    move v4, p0

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/appinventor/components/runtime/util/FroyoUtil$2;-><init>(ZLandroid/app/Activity;ZZLcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;)V

    return-object v0
.end method

.method public static setAudioFocusChangeListener(Lcom/google/appinventor/components/runtime/Player;)Ljava/lang/Object;
    .locals 1
    .param p0, "player"    # Lcom/google/appinventor/components/runtime/Player;

    .prologue
    .line 62
    new-instance v0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/FroyoUtil$1;-><init>(Lcom/google/appinventor/components/runtime/Player;)V

    .line 97
    .local v0, "afChangeListener":Lcom/google/appinventor/components/runtime/util/FroyoUtil$1;
    return-object v0
.end method

.method public static setAudioManager(Landroid/app/Activity;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 53
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method
