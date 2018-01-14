.class Lcom/google/appinventor/components/runtime/ThunkableCloudstitch$1;
.super Ljava/lang/Object;
.source "ThunkableCloudstitch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->getAllData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch$1;->this$0:Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch$1;->this$0:Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;

    # invokes: Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->getData()V
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;->access$000(Lcom/google/appinventor/components/runtime/ThunkableCloudstitch;)V

    .line 128
    return-void
.end method
