.class Lcom/google/appinventor/components/runtime/EmotionRecognizer$2;
.super Ljava/lang/Object;
.source "EmotionRecognizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/EmotionRecognizer;->postImageFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/EmotionRecognizer;

.field final synthetic val$mostLikelyEmotion:Ljava/lang/String;

.field final synthetic val$mostLikelyEmotionScore:Ljava/lang/Double;

.field final synthetic val$responseCode:I

.field final synthetic val$responseContent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/EmotionRecognizer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/EmotionRecognizer;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer$2;->this$0:Lcom/google/appinventor/components/runtime/EmotionRecognizer;

    iput p2, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer$2;->val$responseCode:I

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer$2;->val$responseContent:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer$2;->val$mostLikelyEmotion:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer$2;->val$mostLikelyEmotionScore:Ljava/lang/Double;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer$2;->this$0:Lcom/google/appinventor/components/runtime/EmotionRecognizer;

    iget v1, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer$2;->val$responseCode:I

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer$2;->val$responseContent:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer$2;->val$mostLikelyEmotion:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/EmotionRecognizer$2;->val$mostLikelyEmotionScore:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/EmotionRecognizer;->GotResponse(ILjava/lang/String;Ljava/lang/String;D)V

    .line 212
    return-void
.end method
