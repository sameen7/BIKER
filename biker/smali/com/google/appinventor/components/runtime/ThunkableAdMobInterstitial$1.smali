.class Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "ThunkableAdMobInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->AdLoaded()V

    .line 55
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;

    const-string v1, "ThunkableAdMobInterstitial onAdLoaded"

    # invokes: Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->tracking(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;->access$000(Lcom/google/appinventor/components/runtime/ThunkableAdMobInterstitial;Ljava/lang/String;)V

    .line 56
    return-void
.end method
