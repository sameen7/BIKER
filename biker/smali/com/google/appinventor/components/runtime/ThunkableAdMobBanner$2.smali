.class Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner$2;
.super Lcom/google/android/gms/ads/AdListener;
.source "ThunkableAdMobBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->generateNewAdView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner$2;->this$0:Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner$2;->this$0:Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->AdLoaded()V

    .line 163
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner$2;->this$0:Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;

    const-string v1, "ThunkableAdMobBanner onAdLoaded"

    # invokes: Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->tracking(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->access$000(Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;Ljava/lang/String;)V

    .line 164
    return-void
.end method
