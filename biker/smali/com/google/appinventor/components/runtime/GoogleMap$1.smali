.class Lcom/google/appinventor/components/runtime/GoogleMap$1;
.super Ljava/lang/Object;
.source "GoogleMap.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/GoogleMap;->setUpMapIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/GoogleMap;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/GoogleMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/GoogleMap;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap$1;->this$0:Lcom/google/appinventor/components/runtime/GoogleMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 5
    .param p1, "googleMap"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap$1;->this$0:Lcom/google/appinventor/components/runtime/GoogleMap;

    # setter for: Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/GoogleMap;->access$002(Lcom/google/appinventor/components/runtime/GoogleMap;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;

    .line 261
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap$1;->this$0:Lcom/google/appinventor/components/runtime/GoogleMap;

    # getter for: Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/GoogleMap;->access$000(Lcom/google/appinventor/components/runtime/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap$1;->this$0:Lcom/google/appinventor/components/runtime/GoogleMap;

    # invokes: Lcom/google/appinventor/components/runtime/GoogleMap;->setUpMap()V
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/GoogleMap;->access$100(Lcom/google/appinventor/components/runtime/GoogleMap;)V

    .line 268
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap$1;->this$0:Lcom/google/appinventor/components/runtime/GoogleMap;

    # getter for: Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/GoogleMap;->access$200(Lcom/google/appinventor/components/runtime/GoogleMap;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap$1;->this$0:Lcom/google/appinventor/components/runtime/GoogleMap;

    const-string v2, "setUpMapIfNeeded"

    const/16 v3, 0x2eeb

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method
