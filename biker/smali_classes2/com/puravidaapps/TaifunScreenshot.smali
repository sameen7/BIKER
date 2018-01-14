.class public Lcom/puravidaapps/TaifunScreenshot;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "TaifunScreenshot.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Extension to take a screenshot. Version 1b as of 2016-09-08 for App Inventor version nb150 and Companion version 2.38."
    iconName = "https://puravidaapps.com/images/taifun16.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
    external = true
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.WRITE_EXTERNAL_STORAGE"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TaifunScreenshot"

.field public static final VERSION:I = 0x1


# instance fields
.field private final activity:Landroid/app/Activity;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private fileName:Ljava/lang/String;

.field private suppressWarnings:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 51
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 52
    iput-object p1, p0, Lcom/puravidaapps/TaifunScreenshot;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 53
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/puravidaapps/TaifunScreenshot;->context:Landroid/content/Context;

    .line 54
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/puravidaapps/TaifunScreenshot;->activity:Landroid/app/Activity;

    .line 55
    const-string v0, "screenshot.jpg"

    iput-object v0, p0, Lcom/puravidaapps/TaifunScreenshot;->fileName:Ljava/lang/String;

    .line 56
    const-string v0, "TaifunScreenshot"

    const-string v1, "TaifunScreenshot Created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method


# virtual methods
.method public AfterScreenshot(Ljava/lang/String;)V
    .locals 3
    .param p1, "image"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Return image."
    .end annotation

    .prologue
    .line 143
    const-string v0, "AfterScreenshot"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 144
    return-void
.end method

.method public FileName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "filename of the screenshot to be taken"
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/puravidaapps/TaifunScreenshot;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public FileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "screenshot.jpg"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 98
    iput-object p1, p0, Lcom/puravidaapps/TaifunScreenshot;->fileName:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public SuppressWarnings(Z)V
    .locals 0
    .param p1, "suppressWarnings"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "false"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/puravidaapps/TaifunScreenshot;->suppressWarnings:Z

    .line 78
    return-void
.end method

.method public SuppressWarnings()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "whether Warnings should be suppressed"
    .end annotation

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/puravidaapps/TaifunScreenshot;->suppressWarnings:Z

    return v0
.end method

.method public TakeScreenshot()V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Take a screenshot."
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 110
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/puravidaapps/TaifunScreenshot;->fileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "mPath":Ljava/lang/String;
    iget-object v7, p0, Lcom/puravidaapps/TaifunScreenshot;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    .line 114
    .local v6, "v1":Landroid/view/View;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 115
    invoke-virtual {v6}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 116
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 118
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .local v2, "imageFile":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 121
    .local v4, "outputStream":Ljava/io/FileOutputStream;
    const/16 v5, 0x64

    .line 122
    .local v5, "quality":I
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v7, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 123
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 124
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 126
    const-string v7, "TaifunScreenshot"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "screenshot taken: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/puravidaapps/TaifunScreenshot;->AfterScreenshot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "imageFile":Ljava/io/File;
    .end local v3    # "mPath":Ljava/lang/String;
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .end local v5    # "quality":I
    .end local v6    # "v1":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Ljava/lang/Throwable;
    const-string v7, "TaifunScreenshot"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 132
    iget-boolean v7, p0, Lcom/puravidaapps/TaifunScreenshot;->suppressWarnings:Z

    if-nez v7, :cond_0

    .line 133
    iget-object v7, p0, Lcom/puravidaapps/TaifunScreenshot;->context:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
