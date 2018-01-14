.class Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;
.super Ljava/lang/Object;
.source "LocationSensor.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/LocationSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/LocationSensor;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/LocationSensor;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/LocationSensor;Lcom/google/appinventor/components/runtime/LocationSensor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/appinventor/components/runtime/LocationSensor;
    .param p2, "x1"    # Lcom/google/appinventor/components/runtime/LocationSensor$1;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;-><init>(Lcom/google/appinventor/components/runtime/LocationSensor;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 14
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v9, 0x1

    const-wide/16 v12, 0x0

    .line 80
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    # setter for: Lcom/google/appinventor/components/runtime/LocationSensor;->lastLocation:Landroid/location/Location;
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$002(Lcom/google/appinventor/components/runtime/LocationSensor;Landroid/location/Location;)Landroid/location/Location;

    .line 81
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    # setter for: Lcom/google/appinventor/components/runtime/LocationSensor;->longitude:D
    invoke-static {v0, v10, v11}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$102(Lcom/google/appinventor/components/runtime/LocationSensor;D)D

    .line 82
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    # setter for: Lcom/google/appinventor/components/runtime/LocationSensor;->latitude:D
    invoke-static {v0, v10, v11}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$202(Lcom/google/appinventor/components/runtime/LocationSensor;D)D

    .line 83
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    # setter for: Lcom/google/appinventor/components/runtime/LocationSensor;->speed:F
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$302(Lcom/google/appinventor/components/runtime/LocationSensor;F)F

    .line 86
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    # setter for: Lcom/google/appinventor/components/runtime/LocationSensor;->hasAltitude:Z
    invoke-static {v0, v9}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$402(Lcom/google/appinventor/components/runtime/LocationSensor;Z)Z

    .line 88
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v10

    # setter for: Lcom/google/appinventor/components/runtime/LocationSensor;->altitude:D
    invoke-static {v0, v10, v11}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$502(Lcom/google/appinventor/components/runtime/LocationSensor;D)D

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    # getter for: Lcom/google/appinventor/components/runtime/LocationSensor;->longitude:D
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$100(Lcom/google/appinventor/components/runtime/LocationSensor;)D

    move-result-wide v0

    cmpl-double v0, v0, v12

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    # getter for: Lcom/google/appinventor/components/runtime/LocationSensor;->latitude:D
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$200(Lcom/google/appinventor/components/runtime/LocationSensor;)D

    move-result-wide v0

    cmpl-double v0, v0, v12

    if-eqz v0, :cond_2

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    # setter for: Lcom/google/appinventor/components/runtime/LocationSensor;->hasLocationData:Z
    invoke-static {v0, v9}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$602(Lcom/google/appinventor/components/runtime/LocationSensor;Z)Z

    .line 95
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    # getter for: Lcom/google/appinventor/components/runtime/LocationSensor;->latitude:D
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$200(Lcom/google/appinventor/components/runtime/LocationSensor;)D

    move-result-wide v2

    .line 96
    .local v2, "argLatitude":D
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    # getter for: Lcom/google/appinventor/components/runtime/LocationSensor;->longitude:D
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$100(Lcom/google/appinventor/components/runtime/LocationSensor;)D

    move-result-wide v4

    .line 97
    .local v4, "argLongitude":D
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    # getter for: Lcom/google/appinventor/components/runtime/LocationSensor;->altitude:D
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$500(Lcom/google/appinventor/components/runtime/LocationSensor;)D

    move-result-wide v6

    .line 98
    .local v6, "argAltitude":D
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    # getter for: Lcom/google/appinventor/components/runtime/LocationSensor;->speed:F
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$300(Lcom/google/appinventor/components/runtime/LocationSensor;)F

    move-result v8

    .line 99
    .local v8, "argSpeed":F
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    # getter for: Lcom/google/appinventor/components/runtime/LocationSensor;->androidUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$700(Lcom/google/appinventor/components/runtime/LocationSensor;)Landroid/os/Handler;

    move-result-object v9

    new-instance v0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener$1;-><init>(Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;DDDF)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    .end local v2    # "argLatitude":D
    .end local v4    # "argLongitude":D
    .end local v6    # "argAltitude":D
    .end local v8    # "argSpeed":F
    :cond_2
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    const-string v1, "Disabled"

    invoke-virtual {v0, p1, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->StatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    # invokes: Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$800(Lcom/google/appinventor/components/runtime/LocationSensor;)V

    .line 112
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    # getter for: Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$900(Lcom/google/appinventor/components/runtime/LocationSensor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider()V

    .line 115
    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    const-string v1, "Enabled"

    invoke-virtual {v0, p1, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->StatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider()V

    .line 121
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 125
    packed-switch p2, :pswitch_data_0

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 128
    :pswitch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    const-string v1, "TEMPORARILY_UNAVAILABLE"

    invoke-virtual {v0, p1, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->StatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :pswitch_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    const-string v1, "OUT_OF_SERVICE"

    invoke-virtual {v0, p1, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->StatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    # getter for: Lcom/google/appinventor/components/runtime/LocationSensor;->providerName:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$1000(Lcom/google/appinventor/components/runtime/LocationSensor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    # invokes: Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$800(Lcom/google/appinventor/components/runtime/LocationSensor;)V

    .line 137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider()V

    goto :goto_0

    .line 143
    :pswitch_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    const-string v1, "AVAILABLE"

    invoke-virtual {v0, p1, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->StatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    # getter for: Lcom/google/appinventor/components/runtime/LocationSensor;->providerName:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$1000(Lcom/google/appinventor/components/runtime/LocationSensor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    .line 145
    # getter for: Lcom/google/appinventor/components/runtime/LocationSensor;->allProviders:Ljava/util/List;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$1100(Lcom/google/appinventor/components/runtime/LocationSensor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider()V

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
