.class public final Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "ThunkableAdMobBanner.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "AdMob component allows you to display Ad. You need have a valid AdMob account and an AdUnitId. You should in thetestmode when you are still developing the app."
    docUri = "monetisation/admob"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "google-play-services.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET,android.permission.ACCESS_NETWORK_STATE"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ThunkableAdMobBanner"


# instance fields
.field private ThunkableAdUnitID:Ljava/lang/String;

.field private adEnabled:Z

.field private adUnitID:Ljava/lang/String;

.field private adView:Lcom/google/android/gms/ads/AdView;

.field protected final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private currentInUseAdUnitID:Ljava/lang/String;

.field private isTestMode:Z

.field private setupAdUnitId:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "componentContainer"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v1, 0x1

    .line 49
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 39
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adEnabled:Z

    .line 40
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->isTestMode:Z

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adUnitID:Ljava/lang/String;

    .line 42
    const-string v0, "ca-app-pub-2452547837649925/6530866498"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->ThunkableAdUnitID:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->currentInUseAdUnitID:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->setupAdUnitId:Z

    .line 50
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 51
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 52
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 53
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 54
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->generateNewAdView()V

    .line 55
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adEnabled:Z

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->tracking(Ljava/lang/String;)V

    return-void
.end method

.method private generateNewAdView()V
    .locals 3

    .prologue
    .line 146
    new-instance v1, Lcom/google/android/gms/ads/AdView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    .line 147
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    sget-object v2, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 149
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 150
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 152
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    new-instance v2, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner$1;-><init>(Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 159
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    new-instance v2, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner$2;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner$2;-><init>(Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 166
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 167
    return-void
.end method

.method private setUnitId()V
    .locals 4

    .prologue
    .line 130
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adUnitID:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->ThunkableAdUnitID:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->currentInUseAdUnitID:Ljava/lang/String;

    .line 141
    :goto_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->currentInUseAdUnitID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 142
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->setupAdUnitId:Z

    .line 143
    return-void

    .line 133
    :cond_0
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 134
    .local v1, "r":Ljava/util/Random;
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v0

    .line 135
    .local v0, "chance":F
    const v2, 0x3d4ccccd    # 0.05f

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_1

    .line 136
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->ThunkableAdUnitID:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->currentInUseAdUnitID:Ljava/lang/String;

    goto :goto_0

    .line 138
    :cond_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adUnitID:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->currentInUseAdUnitID:Ljava/lang/String;

    goto :goto_0
.end method

.method private tracking(Ljava/lang/String;)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 200
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->isTestMode:Z

    if-nez v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/MobileAnalytics;->fabricTracking(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/appinventor/components/runtime/util/MobileAnalytics;->amplitudeTracking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public AdLoaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad is received."
    .end annotation

    .prologue
    .line 109
    const-string v0, "AdLoaded"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method public AdUnitID()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adUnitID:Ljava/lang/String;

    return-object v0
.end method

.method public AdUnitID(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adUnitID:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public Height()I
    .locals 1

    .prologue
    .line 186
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height()I

    move-result v0

    return v0
.end method

.method public Height(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    .line 192
    return-void
.end method

.method public HeightPercent(I)V
    .locals 0
    .param p1, "pCent"    # I

    .prologue
    .line 196
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->HeightPercent(I)V

    .line 197
    return-void
.end method

.method public LoadAd()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Loads a new ad."
    .end annotation

    .prologue
    .line 81
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->setupAdUnitId:Z

    if-nez v2, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->setUnitId()V

    .line 84
    :cond_0
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adEnabled:Z

    if-eqz v2, :cond_1

    .line 85
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 86
    .local v0, "builder":Lcom/google/android/gms/ads/AdRequest$Builder;
    const-string v2, "ThunkableAdMobBanner"

    const-string v3, "Enter the ad enable mode."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->isTestMode:Z

    if-eqz v2, :cond_2

    .line 88
    const-string v2, "ThunkableAdMobBanner"

    const-string v3, "Enter the development test mode."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    sget-object v3, Lcom/google/android/gms/ads/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 97
    .end local v0    # "builder":Lcom/google/android/gms/ads/AdRequest$Builder;
    :cond_1
    :goto_0
    return-void

    .line 92
    .restart local v0    # "builder":Lcom/google/android/gms/ads/AdRequest$Builder;
    :cond_2
    const-string v2, "ThunkableAdMobBanner"

    const-string v3, "Enter the production mode."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 94
    .local v1, "builder3":Lcom/google/android/gms/ads/AdRequest$Builder;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 95
    const-string v2, "ThunkableAdMobBanner LoadAd"

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->tracking(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public TestMode(Z)V
    .locals 0
    .param p1, "z"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->isTestMode:Z

    .line 72
    return-void
.end method

.method public TestMode()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->isTestMode:Z

    return v0
.end method

.method public Width()I
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width()I

    move-result v0

    return v0
.end method

.method public Width(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 177
    return-void
.end method

.method public WidthPercent(I)V
    .locals 0
    .param p1, "pCent"    # I

    .prologue
    .line 181
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 182
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroyDrawingCache()V

    .line 102
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adEnabled:Z

    .line 105
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->pause()V

    .line 116
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->resume()V

    .line 122
    :cond_0
    return-void
.end method
