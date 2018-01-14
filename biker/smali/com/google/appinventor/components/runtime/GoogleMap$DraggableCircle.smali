.class Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;
.super Ljava/lang/Object;
.source "GoogleMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/GoogleMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DraggableCircle"
.end annotation


# instance fields
.field private final centerMarker:Lcom/google/android/gms/maps/model/Marker;

.field private final circle:Lcom/google/android/gms/maps/model/Circle;

.field private radius:D

.field private radiusMarker:Lcom/google/android/gms/maps/model/Marker;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/GoogleMap;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/GoogleMap;Lcom/google/android/gms/maps/model/LatLng;DFII)V
    .locals 5
    .param p2, "center"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p3, "radius"    # D
    .param p5, "strokeWidth"    # F
    .param p6, "strokeColor"    # I
    .param p7, "fillColor"    # I

    .prologue
    const/4 v3, 0x1

    .line 1596
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->this$0:Lcom/google/appinventor/components/runtime/GoogleMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1597
    iput-wide p3, p0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->radius:D

    .line 1598
    # getter for: Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/GoogleMap;->access$000(Lcom/google/appinventor/components/runtime/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 1599
    invoke-virtual {v1, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    .line 1600
    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    .line 1598
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->centerMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 1601
    # getter for: Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/GoogleMap;->access$000(Lcom/google/appinventor/components/runtime/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 1602
    # invokes: Lcom/google/appinventor/components/runtime/GoogleMap;->toRadiusLatLng(Lcom/google/android/gms/maps/model/LatLng;D)Lcom/google/android/gms/maps/model/LatLng;
    invoke-static {p2, p3, p4}, Lcom/google/appinventor/components/runtime/GoogleMap;->access$800(Lcom/google/android/gms/maps/model/LatLng;D)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    .line 1603
    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    const/high16 v2, 0x43520000    # 210.0f

    .line 1604
    invoke-static {v2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    .line 1601
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->radiusMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 1606
    # getter for: Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/GoogleMap;->access$000(Lcom/google/appinventor/components/runtime/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    .line 1607
    invoke-virtual {v1, p2}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    .line 1608
    invoke-virtual {v1, p3, p4}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    .line 1609
    invoke-virtual {v1, p5}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    .line 1610
    invoke-virtual {v1, p6}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    .line 1611
    invoke-virtual {v1, p7}, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    .line 1606
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->circle:Lcom/google/android/gms/maps/model/Circle;

    .line 1612
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/GoogleMap;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;FII)V
    .locals 4
    .param p2, "center"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p3, "radiusLatLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p4, "strokeWidth"    # F
    .param p5, "strokeColor"    # I
    .param p6, "fillColor"    # I

    .prologue
    const/4 v2, 0x1

    .line 1614
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->this$0:Lcom/google/appinventor/components/runtime/GoogleMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1615
    # invokes: Lcom/google/appinventor/components/runtime/GoogleMap;->toRadiusMeters(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D
    invoke-static {p2, p3}, Lcom/google/appinventor/components/runtime/GoogleMap;->access$900(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->radius:D

    .line 1616
    # getter for: Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/GoogleMap;->access$000(Lcom/google/appinventor/components/runtime/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 1617
    invoke-virtual {v1, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    .line 1618
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    .line 1616
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->centerMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 1619
    # getter for: Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/GoogleMap;->access$000(Lcom/google/appinventor/components/runtime/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 1620
    invoke-virtual {v1, p3}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    .line 1621
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    const/high16 v2, 0x43520000    # 210.0f

    .line 1622
    invoke-static {v2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    .line 1619
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->radiusMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 1624
    # getter for: Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/GoogleMap;->access$000(Lcom/google/appinventor/components/runtime/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    .line 1625
    invoke-virtual {v1, p2}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->radius:D

    .line 1626
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    .line 1627
    invoke-virtual {v1, p4}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    .line 1628
    invoke-virtual {v1, p5}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    .line 1629
    invoke-virtual {v1, p6}, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    .line 1624
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->circle:Lcom/google/android/gms/maps/model/Circle;

    .line 1630
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/GoogleMap;Lcom/google/android/gms/maps/model/Marker;Lcom/google/android/gms/maps/model/Marker;FII)V
    .locals 4
    .param p2, "center"    # Lcom/google/android/gms/maps/model/Marker;
    .param p3, "radius"    # Lcom/google/android/gms/maps/model/Marker;
    .param p4, "strokeWidth"    # F
    .param p5, "strokeColor"    # I
    .param p6, "fillColor"    # I

    .prologue
    .line 1633
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->this$0:Lcom/google/appinventor/components/runtime/GoogleMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1634
    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    # invokes: Lcom/google/appinventor/components/runtime/GoogleMap;->toRadiusMeters(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/GoogleMap;->access$900(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->radius:D

    .line 1635
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->centerMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 1636
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->radiusMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 1637
    # getter for: Lcom/google/appinventor/components/runtime/GoogleMap;->mMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/GoogleMap;->access$000(Lcom/google/appinventor/components/runtime/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    .line 1638
    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->radius:D

    .line 1639
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    .line 1640
    invoke-virtual {v1, p4}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    .line 1641
    invoke-virtual {v1, p5}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    .line 1642
    invoke-virtual {v1, p6}, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    .line 1637
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->circle:Lcom/google/android/gms/maps/model/Circle;

    .line 1643
    return-void
.end method


# virtual methods
.method public getCenterMarker()Lcom/google/android/gms/maps/model/Marker;
    .locals 1

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->centerMarker:Lcom/google/android/gms/maps/model/Marker;

    return-object v0
.end method

.method public getCircle()Lcom/google/android/gms/maps/model/Circle;
    .locals 1

    .prologue
    .line 1673
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->circle:Lcom/google/android/gms/maps/model/Circle;

    return-object v0
.end method

.method public getRadius()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 1677
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->radius:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getRadiusMarker()Lcom/google/android/gms/maps/model/Marker;
    .locals 1

    .prologue
    .line 1669
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->radiusMarker:Lcom/google/android/gms/maps/model/Marker;

    return-object v0
.end method

.method public onMarkerMoved(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 6
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    const/4 v0, 0x1

    .line 1646
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->centerMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1647
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->circle:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/Circle;->setCenter(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 1648
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->radiusMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->radius:D

    # invokes: Lcom/google/appinventor/components/runtime/GoogleMap;->toRadiusLatLng(Lcom/google/android/gms/maps/model/LatLng;D)Lcom/google/android/gms/maps/model/LatLng;
    invoke-static {v2, v4, v5}, Lcom/google/appinventor/components/runtime/GoogleMap;->access$800(Lcom/google/android/gms/maps/model/LatLng;D)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 1656
    :goto_0
    return v0

    .line 1651
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->radiusMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1652
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->centerMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->radiusMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    # invokes: Lcom/google/appinventor/components/runtime/GoogleMap;->toRadiusMeters(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D
    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/GoogleMap;->access$900(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->radius:D

    .line 1653
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->circle:Lcom/google/android/gms/maps/model/Circle;

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->radius:D

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/maps/model/Circle;->setRadius(D)V

    goto :goto_0

    .line 1656
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeFromMap()V
    .locals 1

    .prologue
    .line 1660
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->circle:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Circle;->remove()V

    .line 1661
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->centerMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 1662
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->radiusMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 1663
    return-void
.end method

.method public setRadiusMarker(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 1681
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap$DraggableCircle;->radiusMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 1682
    return-void
.end method
