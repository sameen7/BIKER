.class public final Lcom/google/appinventor/components/runtime/SoundRecorder;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SoundRecorder.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>Multimedia component that records audio.</p>"
    docUri = "voice/sound-recorder"
    iconName = "images/soundRecorder.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.RECORD_AUDIO,android.permission.WRITE_EXTERNAL_STORAGE,android.permission.READ_EXTERNAL_STORAGE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SoundRecorder"


# instance fields
.field private controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

.field private savedRecording:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 115
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->savedRecording:Ljava/lang/String;

    .line 116
    return-void
.end method


# virtual methods
.method public AfterSoundRecorded(Ljava/lang/String;)V
    .locals 3
    .param p1, "sound"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Provides the location of the newly created sound."
    .end annotation

    .prologue
    .line 262
    const-string v0, "AfterSoundRecorded"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 263
    return-void
.end method

.method public SavedRecording()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies the path to the file where the recording should be stored. If this proprety is the empty string, then starting a recording will create a file in an appropriate location.  If the property is not the empty string, it should specify a complete path to a file in an existing directory, including a file name with the extension .3gp."
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->savedRecording:Ljava/lang/String;

    return-object v0
.end method

.method public SavedRecording(Ljava/lang/String;)V
    .locals 0
    .param p1, "pathName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->savedRecording:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public Start()V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    const/16 v6, 0x322

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 152
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    if-eqz v1, :cond_0

    .line 153
    const-string v1, "SoundRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start() called, but already recording to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->file:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_0
    return-void

    .line 156
    :cond_0
    const-string v1, "SoundRecorder"

    const-string v2, "Start() called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "Start"

    const/16 v3, 0x2c1

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 163
    :cond_1
    :try_start_0
    new-instance v1, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->savedRecording:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;-><init>(Lcom/google/appinventor/components/runtime/SoundRecorder;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :try_start_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->start()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StartedRecording()V

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "Start"

    new-array v3, v3, [Ljava/lang/Object;

    .line 166
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 165
    invoke-virtual {v1, p0, v2, v6, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 171
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 175
    .restart local v0    # "t":Ljava/lang/Throwable;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    .line 176
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "Start"

    new-array v3, v3, [Ljava/lang/Object;

    .line 177
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 176
    invoke-virtual {v1, p0, v2, v6, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public StartedRecording()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the recorder has started, and can be stopped."
    .end annotation

    .prologue
    .line 267
    const-string v0, "StartedRecording"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 268
    return-void
.end method

.method public Stop()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 242
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    if-nez v1, :cond_0

    .line 243
    const-string v1, "SoundRecorder"

    const-string v2, "Stop() called, but already stopped."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :goto_0
    return-void

    .line 247
    :cond_0
    :try_start_0
    const-string v1, "SoundRecorder"

    const-string v2, "Stop() called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v1, "SoundRecorder"

    const-string v2, "stopping"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->stop()V

    .line 250
    const-string v1, "SoundRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Firing AfterSoundRecorded with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->file:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->file:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/SoundRecorder;->AfterSoundRecorded(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    iput-object v5, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    .line 256
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "Stop"

    const/16 v3, 0x321

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    iput-object v5, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    .line 256
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    goto :goto_0

    .line 255
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    .line 256
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    .line 257
    throw v1
.end method

.method public StoppedRecording()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the recorder has stopped, and can be started again."
    .end annotation

    .prologue
    .line 272
    const-string v0, "StoppedRecording"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 273
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 6
    .param p1, "affectedRecorder"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v5, 0x0

    .line 185
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->recorder:Landroid/media/MediaRecorder;

    if-eq p1, v1, :cond_1

    .line 186
    :cond_0
    const-string v1, "SoundRecorder"

    const-string v2, "onError called with wrong recorder. Ignoring."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "onError"

    const/16 v3, 0x321

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->stop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    iput-object v5, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    .line 196
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v1, "SoundRecorder"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    iput-object v5, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    .line 196
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    goto :goto_0

    .line 195
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    .line 196
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    .line 197
    throw v1
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 6
    .param p1, "affectedRecorder"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 202
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->recorder:Landroid/media/MediaRecorder;

    if-eq p1, v1, :cond_1

    .line 203
    :cond_0
    const-string v1, "SoundRecorder"

    const-string v2, "onInfo called with wrong recorder. Ignoring."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_0
    return-void

    .line 206
    :cond_1
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 216
    :sswitch_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "recording"

    const/16 v3, 0x321

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 225
    :goto_1
    :try_start_0
    const-string v1, "SoundRecorder"

    const-string v2, "Recoverable condition while recording. Will attempt to stop normally."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    iput-object v5, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    .line 233
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    goto :goto_0

    .line 208
    :sswitch_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "recording"

    const/16 v3, 0x324

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 212
    :sswitch_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "recording"

    const/16 v3, 0x325

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v1, "SoundRecorder"

    const-string v2, "SoundRecorder was not in a recording state."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "Stop"

    const/16 v3, 0x323

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEventDialog(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    iput-object v5, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    .line 233
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    goto :goto_0

    .line 232
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    .line 233
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    .line 234
    throw v1

    .line 206
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x320 -> :sswitch_1
        0x321 -> :sswitch_2
    .end sparse-switch
.end method
