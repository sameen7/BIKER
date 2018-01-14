.class public final Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "ThunkableAdMobInterstitial.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "AdMob component allows you to displayAd. You need have a valid AdMob account and an AdUnitId. You should in thetestmode when you are still developing the app."
    docUri = "monetisation/admob"
    iconName = "images/adMob2.png"
    nonVisible = true
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
.field private static final LOG_TAG:Ljava/lang/String; = "ThunkableAdMobInterstitial"


# instance fields
.field private ThunkableAdUnitID:Ljava/lang/String;

.field private adEnabled:Z

.field private adUnitID:Ljava/lang/String;

.field protected final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private currentInUseAdUnitID:Ljava/lang/String;

.field private isTestMode:Z

.field private mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

.field private setAdUnitID:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3
    .param p1, "componentContainer"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v2, 0x1

    .line 48
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 38
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->adEnabled:Z

    .line 39
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->isTestMode:Z

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->adUnitID:Ljava/lang/String;

    .line 41
    const-string v0, "ca-app-pub-2452547837649925/7724091290"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->ThunkableAdUnitID:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->currentInUseAdUnitID:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->setAdUnitID:Ljava/lang/Boolean;

    .line 49
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 50
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 51
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v1, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial$1;-><init>(Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 58
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->adEnabled:Z

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->tracking(Ljava/lang/String;)V

    return-void
.end method

.method private tracking(Ljava/lang/String;)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->isTestMode:Z

    if-nez v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/MobileAnalytics;->fabricTracking(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/appinventor/components/runtime/util/MobileAnalytics;->amplitudeTracking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
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
    .line 105
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->ShowAd()V

    .line 106
    const-string v0, "AdLoaded"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public AdUnitID()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->currentInUseAdUnitID:Ljava/lang/String;

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
    .line 63
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->adUnitID:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public LoadAd()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Starts loading a new ad."
    .end annotation

    .prologue
    .line 84
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->setAdUnitID:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->setUnitId()V

    .line 86
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->setAdUnitID:Ljava/lang/Boolean;

    .line 88
    :cond_0
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->adEnabled:Z

    if-eqz v2, :cond_1

    .line 89
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 90
    .local v0, "builder":Lcom/google/android/gms/ads/AdRequest$Builder;
    const-string v2, "ThunkableAdMobInterstitial"

    const-string v3, "Enter the ad enable mode."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->isTestMode:Z

    if-eqz v2, :cond_2

    .line 92
    const-string v2, "ThunkableAdMobInterstitial"

    const-string v3, "Enter the development test mode."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    sget-object v3, Lcom/google/android/gms/ads/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 101
    .end local v0    # "builder":Lcom/google/android/gms/ads/AdRequest$Builder;
    :cond_1
    :goto_0
    return-void

    .line 96
    .restart local v0    # "builder":Lcom/google/android/gms/ads/AdRequest$Builder;
    :cond_2
    const-string v2, "ThunkableAdMobInterstitial"

    const-string v3, "Enter the production mode."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 98
    .local v1, "builder3":Lcom/google/android/gms/ads/AdRequest$Builder;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 99
    const-string v2, "ThunkableAdMobInterstitial LoadAd"

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->tracking(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ShowAd()V
    .locals 2

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->adEnabled:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 117
    :goto_0
    return-void

    .line 116
    :cond_0
    const-string v0, "ThunkableAdMobInterstitial"

    const-string v1, "LoadAd is not enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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
    .line 74
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->isTestMode:Z

    .line 75
    return-void
.end method

.method public TestMode()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->isTestMode:Z

    return v0
.end method

.method public setUnitId()V
    .locals 4

    .prologue
    .line 120
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->adUnitID:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->ThunkableAdUnitID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 132
    :goto_0
    return-void

    .line 123
    :cond_0
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 124
    .local v1, "r":Ljava/util/Random;
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v0

    .line 125
    .local v0, "chance":F
    const v2, 0x3d4ccccd    # 0.05f

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_1

    .line 126
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->ThunkableAdUnitID:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->currentInUseAdUnitID:Ljava/lang/String;

    .line 130
    :goto_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->currentInUseAdUnitID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->adUnitID:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->currentInUseAdUnitID:Ljava/lang/String;

    goto :goto_1
.end method
