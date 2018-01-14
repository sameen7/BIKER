.class Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner$1;
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
    .line 153
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner$1;->this$0:Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner$1;->this$0:Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;

    const-string v1, "ThunkableAdMobBanner onAdClosed"

    # invokes: Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->tracking(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;->access$000(Lcom/google/appinventor/components/runtime/ThunkableAdMobBanner;Ljava/lang/String;)V

    .line 157
    return-void
.end method
