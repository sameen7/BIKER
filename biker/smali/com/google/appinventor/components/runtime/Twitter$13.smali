.class Lcom/google/appinventor/components/runtime/Twitter$13;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Twitter;->SearchTwitter(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Twitter;

.field tweets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Twitter;

    .prologue
    .line 915
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter$13;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Twitter$13;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 916
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$13;->tweets:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 920
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$13;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    # getter for: Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Twitter;->access$200(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/Twitter;

    move-result-object v1

    new-instance v2, Ltwitter4j/Query;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter$13;->val$query:Ljava/lang/String;

    invoke-direct {v2, v3}, Ltwitter4j/Query;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ltwitter4j/Twitter;->search(Ltwitter4j/Query;)Ltwitter4j/QueryResult;

    move-result-object v1

    invoke-interface {v1}, Ltwitter4j/QueryResult;->getTweets()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$13;->tweets:Ljava/util/List;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$13;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    # getter for: Lcom/google/appinventor/components/runtime/Twitter;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Twitter;->access$100(Lcom/google/appinventor/components/runtime/Twitter;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/Twitter$13$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/Twitter$13$1;-><init>(Lcom/google/appinventor/components/runtime/Twitter$13;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 935
    :goto_0
    return-void

    .line 921
    :catch_0
    move-exception v0

    .line 922
    .local v0, "e":Ltwitter4j/TwitterException;
    :try_start_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$13;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$13;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    const-string v3, "SearchTwitter"

    const/16 v4, 0x13a

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 923
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 922
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 925
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$13;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    # getter for: Lcom/google/appinventor/components/runtime/Twitter;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Twitter;->access$100(Lcom/google/appinventor/components/runtime/Twitter;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/Twitter$13$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/Twitter$13$1;-><init>(Lcom/google/appinventor/components/runtime/Twitter$13;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v0    # "e":Ltwitter4j/TwitterException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$13;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    # getter for: Lcom/google/appinventor/components/runtime/Twitter;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Twitter;->access$100(Lcom/google/appinventor/components/runtime/Twitter;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/google/appinventor/components/runtime/Twitter$13$1;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/Twitter$13$1;-><init>(Lcom/google/appinventor/components/runtime/Twitter$13;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 934
    throw v1
.end method
