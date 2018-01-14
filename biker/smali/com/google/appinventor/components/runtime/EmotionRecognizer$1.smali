.class Lcom/google/appinventor/components/runtime/EmotionRecognizer$1;
.super Ljava/lang/Object;
.source "EmotionRecognizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/EmotionRecognizer;->postImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/EmotionRecognizer;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/EmotionRecognizer;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/EmotionRecognizer;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer$1;->this$0:Lcom/google/appinventor/components/runtime/EmotionRecognizer;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer$1;->this$0:Lcom/google/appinventor/components/runtime/EmotionRecognizer;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer$1;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->postImageFile(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/util/FileUtil$FileException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer$1;->this$0:Lcom/google/appinventor/components/runtime/EmotionRecognizer;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer$1;->this$0:Lcom/google/appinventor/components/runtime/EmotionRecognizer;

    const-string v3, "PostFile"

    .line 140
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;->getErrorMessageNumber()I

    move-result v4

    new-array v5, v5, [Ljava/lang/Object;

    .line 139
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 141
    .end local v0    # "e":Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
    :catch_1
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer$1;->this$0:Lcom/google/appinventor/components/runtime/EmotionRecognizer;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer$1;->this$0:Lcom/google/appinventor/components/runtime/EmotionRecognizer;

    const-string v3, "PostFile"

    const/16 v4, 0x450

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method
