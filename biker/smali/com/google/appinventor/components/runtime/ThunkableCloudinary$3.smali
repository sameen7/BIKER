.class Lcom/google/appinventor/components/runtime/ThunkableCloudinary$3;
.super Ljava/lang/Object;
.source "ThunkableCloudinary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->postVideo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ThunkableCloudinary;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ThunkableCloudinary;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ThunkableCloudinary;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$3;->this$0:Lcom/google/appinventor/components/runtime/ThunkableCloudinary;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$3;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$3;->this$0:Lcom/google/appinventor/components/runtime/ThunkableCloudinary;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$3;->val$path:Ljava/lang/String;

    # invokes: Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->postMediaFile(ILjava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->access$000(Lcom/google/appinventor/components/runtime/ThunkableCloudinary;ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/util/FileUtil$FileException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 223
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$3;->this$0:Lcom/google/appinventor/components/runtime/ThunkableCloudinary;

    # getter for: Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->form:Lcom/google/appinventor/components/runtime/Form;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->access$100(Lcom/google/appinventor/components/runtime/ThunkableCloudinary;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$3;->this$0:Lcom/google/appinventor/components/runtime/ThunkableCloudinary;

    const-string v3, "PostFile"

    .line 218
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;->getErrorMessageNumber()I

    move-result v4

    new-array v5, v5, [Ljava/lang/Object;

    .line 217
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 219
    .end local v0    # "e":Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
    :catch_1
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$3;->this$0:Lcom/google/appinventor/components/runtime/ThunkableCloudinary;

    # getter for: Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->form:Lcom/google/appinventor/components/runtime/Form;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ThunkableCloudinary;->access$100(Lcom/google/appinventor/components/runtime/ThunkableCloudinary;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ThunkableCloudinary$3;->this$0:Lcom/google/appinventor/components/runtime/ThunkableCloudinary;

    const-string v3, "PostFile"

    const/16 v4, 0x450

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method
