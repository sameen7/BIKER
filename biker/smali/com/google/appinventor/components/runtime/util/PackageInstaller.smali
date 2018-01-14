.class public Lcom/google/appinventor/components/runtime/util/PackageInstaller;
.super Ljava/lang/Object;
.source "PackageInstaller.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PackageInstaller(AppInventor)"

.field private static final REPL_ASSET_DIR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/AppInventor/assets/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/PackageInstaller;->REPL_ASSET_DIR:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/appinventor/components/runtime/util/PackageInstaller;->REPL_ASSET_DIR:Ljava/lang/String;

    return-object v0
.end method

.method public static doPackageInstall(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    .locals 1
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "inurl"    # Ljava/lang/String;

    .prologue
    .line 42
    new-instance v0, Lcom/google/appinventor/components/runtime/util/PackageInstaller$1;

    invoke-direct {v0, p1, p0}, Lcom/google/appinventor/components/runtime/util/PackageInstaller$1;-><init>(Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method
