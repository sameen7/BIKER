.class Lcom/amplitude/api/AmplitudeClient$14$1;
.super Ljava/lang/Object;
.source "AmplitudeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amplitude/api/AmplitudeClient$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amplitude/api/AmplitudeClient$14;


# direct methods
.method constructor <init>(Lcom/amplitude/api/AmplitudeClient$14;)V
    .locals 0
    .param p1, "this$1"    # Lcom/amplitude/api/AmplitudeClient$14;

    .prologue
    .line 1783
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeClient$14$1;->this$1:Lcom/amplitude/api/AmplitudeClient$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient$14$1;->this$1:Lcom/amplitude/api/AmplitudeClient$14;

    iget-object v0, v0, Lcom/amplitude/api/AmplitudeClient$14;->this$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient$14$1;->this$1:Lcom/amplitude/api/AmplitudeClient$14;

    iget-object v1, v1, Lcom/amplitude/api/AmplitudeClient$14;->this$0:Lcom/amplitude/api/AmplitudeClient;

    # getter for: Lcom/amplitude/api/AmplitudeClient;->backoffUpload:Z
    invoke-static {v1}, Lcom/amplitude/api/AmplitudeClient;->access$900(Lcom/amplitude/api/AmplitudeClient;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amplitude/api/AmplitudeClient;->updateServer(Z)V

    .line 1787
    return-void
.end method
