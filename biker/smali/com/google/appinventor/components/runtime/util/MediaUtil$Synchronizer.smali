.class Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;
.super Ljava/lang/Object;
.source "MediaUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/MediaUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Synchronizer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private error:Ljava/lang/String;

.field private volatile finished:Z

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 60
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;, "Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;->finished:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/util/MediaUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/appinventor/components/runtime/util/MediaUtil$1;

    .prologue
    .line 60
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;, "Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer<TT;>;"
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized error(Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 81
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;, "Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer<TT;>;"
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;->finished:Z

    .line 82
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;->error:Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;, "Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;, "Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public declared-synchronized waitfor()V
    .locals 1

    .prologue
    .line 66
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;, "Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer<TT;>;"
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;->finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 68
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    goto :goto_0

    .line 72
    :cond_0
    monitor-exit p0

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized wakeup(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;, "Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;->finished:Z

    .line 76
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$Synchronizer;->result:Ljava/lang/Object;

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
