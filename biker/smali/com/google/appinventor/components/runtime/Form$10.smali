.class Lcom/google/appinventor/components/runtime/Form$10;
.super Ljava/lang/Object;
.source "Form.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->showExitApplicationNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Form;

    .prologue
    .line 1935
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$10;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$10;->this$0:Lcom/google/appinventor/components/runtime/Form;

    # invokes: Lcom/google/appinventor/components/runtime/Form;->closeApplicationFromMenu()V
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->access$900(Lcom/google/appinventor/components/runtime/Form;)V

    return-void
.end method
