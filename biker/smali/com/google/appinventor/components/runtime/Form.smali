.class public Lcom/google/appinventor/components/runtime/Form;
.super Landroid/support/v4/app/FragmentActivity;
.source "Form.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/ComponentContainer;
.implements Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LAYOUT:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Top-level component containing all other components in the program"
    docUri = "components/screen"
    showOnPalette = false
    version = 0x14
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "android-support-v4.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET,android.permission.ACCESS_WIFI_STATE,android.permission.ACCESS_NETWORK_STATE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller;,
        Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;
    }
.end annotation


# static fields
.field public static final APPINVENTOR_URL_SCHEME:Ljava/lang/String; = "appinventor"

.field private static final ARGUMENT_NAME:Ljava/lang/String; = "APP_INVENTOR_START"

.field public static final FABRIC_ACCOUNT_APPS:Ljava/lang/String; = "com.thunkable.apps"

.field private static final LOG_TAG:Ljava/lang/String; = "Form"

.field private static final RESULT_NAME:Ljava/lang/String; = "APP_INVENTOR_RESULT"

.field private static final SWITCH_FORM_REQUEST_CODE:I = 0x1

.field public static final THUNKABLE_LIVE_PACKAGE_NAME:Ljava/lang/String; = "com.thunkable.appinventor.aicompanion3"

.field private static _initialized:Z

.field protected static activeForm:Lcom/google/appinventor/components/runtime/Form;

.field private static applicationIsBeingClosed:Z

.field private static minimumToastWait:J

.field private static nextRequestCode:I

.field private static sCompatibilityMode:Z

.field private static showListsAsJson:Z


# instance fields
.field private aboutScreen:Ljava/lang/String;

.field private final activityResultMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/runtime/ActivityResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

.field private final androidUIHandler:Landroid/os/Handler;

.field private backgroundColor:I

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private backgroundImagePath:Ljava/lang/String;

.field private closeAnimType:Ljava/lang/String;

.field private compatScalingFactor:F

.field private deviceDensity:F

.field private dimChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;",
            ">;"
        }
    .end annotation
.end field

.field private formHeight:I

.field protected formName:Ljava/lang/String;

.field private formWidth:I

.field private frameLayout:Landroid/widget/FrameLayout;

.field private fullScreenVideoUtil:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

.field private horizontalAlignment:I

.field private keyboardShown:Z

.field private lastToastTime:J

.field private nextFormName:Ljava/lang/String;

.field private onCreateBundle:Landroid/os/Bundle;

.field private final onCreateOptionsMenuListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onDestroyListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/OnDestroyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onInitializeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/util/OnInitializeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onNewIntentListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/OnNewIntentListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onOptionsItemSelectedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onPauseListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/OnPauseListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onResumeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/OnResumeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onStopListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/OnStopListener;",
            ">;"
        }
    .end annotation
.end field

.field private openAnimType:Ljava/lang/String;

.field private progress:Landroid/app/ProgressDialog;

.field private scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

.field private screenInitialized:Z

.field private scrollable:Z

.field private showStatusBar:Z

.field private showTitle:Z

.field protected startupValue:Ljava/lang/String;

.field private titleBarColor:I

.field private verticalAlignment:I

.field private viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

.field private yandexTranslateTagline:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 153
    const/4 v0, 0x2

    sput v0, Lcom/google/appinventor/components/runtime/Form;->nextRequestCode:I

    .line 190
    sput-boolean v2, Lcom/google/appinventor/components/runtime/Form;->showListsAsJson:Z

    .line 212
    const-wide v0, 0x2540be400L

    sput-wide v0, Lcom/google/appinventor/components/runtime/Form;->minimumToastWait:J

    .line 228
    sput-boolean v2, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 114
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 146
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    .line 164
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Form;->showStatusBar:Z

    .line 165
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Form;->showTitle:Z

    .line 167
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    .line 193
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMap:Ljava/util/HashMap;

    .line 194
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onStopListeners:Ljava/util/Set;

    .line 195
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onNewIntentListeners:Ljava/util/Set;

    .line 196
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onResumeListeners:Ljava/util/Set;

    .line 197
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onPauseListeners:Ljava/util/Set;

    .line 198
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onDestroyListeners:Ljava/util/Set;

    .line 201
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onInitializeListeners:Ljava/util/Set;

    .line 204
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onCreateOptionsMenuListeners:Ljava/util/Set;

    .line 205
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onOptionsItemSelectedListeners:Ljava/util/Set;

    .line 209
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->startupValue:Ljava/lang/String;

    .line 213
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-wide v2, Lcom/google/appinventor/components/runtime/Form;->minimumToastWait:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Form;->lastToastTime:J

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->keyboardShown:Z

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onCreateBundle:Landroid/os/Bundle;

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/ArrayList;

    .line 1949
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->yandexTranslateTagline:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Form;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Form;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->recomputeLayout()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/Form;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Form;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 114
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    return v0
.end method

.method static synthetic access$502(Lcom/google/appinventor/components/runtime/Form;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    return p1
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/Form;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Form;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onInitializeListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Form;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->showExitApplicationNotification()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Form;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->showAboutApplicationNotification()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Form;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->closeApplicationFromMenu()V

    return-void
.end method

.method private closeApplication()V
    .locals 2

    .prologue
    .line 1861
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/appinventor/components/runtime/Form;->applicationIsBeingClosed:Z

    .line 1863
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->finish()V

    .line 1865
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    const-string v1, "Screen1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1871
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 1873
    :cond_0
    return-void
.end method

.method private closeApplicationFromMenu()V
    .locals 0

    .prologue
    .line 1852
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->closeApplication()V

    .line 1853
    return-void
.end method

.method private static decodeJSONStringForForm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p0, "jsonString"    # Ljava/lang/String;
    .param p1, "functionName"    # Ljava/lang/String;

    .prologue
    .line 558
    const-string v2, "Form"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decodeJSONStringForForm -- decoding JSON representation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const-string v1, ""

    .line 561
    .local v1, "valueFromJSON":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 562
    .local v1, "valueFromJSON":Ljava/lang/Object;
    const-string v2, "Form"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decodeJSONStringForForm -- got decoded JSON:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    .end local v1    # "valueFromJSON":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    sget-object v3, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x387

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v2, v3, p1, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private defaultPropertyValues()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 389
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->Scrollable(Z)V

    .line 390
    const-string v0, "Fixed"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->Sizing(Ljava/lang/String;)V

    .line 391
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->BackgroundImage(Ljava/lang/String;)V

    .line 392
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->AboutScreen(Ljava/lang/String;)V

    .line 393
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->BackgroundImage(Ljava/lang/String;)V

    .line 394
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->BackgroundColor(I)V

    .line 395
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->AlignHorizontal(I)V

    .line 396
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->AlignVertical(I)V

    .line 397
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->Title(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->ShowStatusBar(Z)V

    .line 399
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->TitleVisible(Z)V

    .line 400
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->ShowListsAsJson(Z)V

    .line 401
    return-void
.end method

.method public static finishActivity()V
    .locals 2

    .prologue
    .line 1794
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_0

    .line 1795
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->closeForm(Landroid/content/Intent;)V

    .line 1799
    return-void

    .line 1797
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activeForm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static finishActivityWithResult(Ljava/lang/Object;)V
    .locals 4
    .param p0, "result"    # Ljava/lang/Object;

    .prologue
    .line 1803
    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v2, :cond_1

    .line 1804
    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v2, :cond_0

    .line 1805
    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    check-cast v2, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v2, p0}, Lcom/google/appinventor/components/runtime/ReplForm;->setResult(Ljava/lang/Object;)V

    .line 1806
    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->closeForm(Landroid/content/Intent;)V

    .line 1816
    :goto_0
    return-void

    .line 1808
    :cond_0
    const-string v2, "close screen with value"

    invoke-static {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->jsonEncodeForForm(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1809
    .local v0, "jString":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1810
    .local v1, "resultIntent":Landroid/content/Intent;
    const-string v2, "APP_INVENTOR_RESULT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1811
    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2, v1}, Lcom/google/appinventor/components/runtime/Form;->closeForm(Landroid/content/Intent;)V

    goto :goto_0

    .line 1814
    .end local v0    # "jString":Ljava/lang/String;
    .end local v1    # "resultIntent":Landroid/content/Intent;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "activeForm is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static finishActivityWithTextResult(Ljava/lang/String;)V
    .locals 3
    .param p0, "result"    # Ljava/lang/String;

    .prologue
    .line 1820
    sget-object v1, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v1, :cond_0

    .line 1821
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1822
    .local v0, "resultIntent":Landroid/content/Intent;
    const-string v1, "APP_INVENTOR_RESULT"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1823
    sget-object v1, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/Form;->closeForm(Landroid/content/Intent;)V

    .line 1827
    return-void

    .line 1825
    .end local v0    # "resultIntent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "activeForm is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static finishApplication()V
    .locals 2

    .prologue
    .line 1840
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_0

    .line 1841
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->closeApplicationFromBlocks()V

    .line 1845
    return-void

    .line 1843
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activeForm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static generateNewRequestCode()I
    .locals 2

    .prologue
    .line 612
    sget v0, Lcom/google/appinventor/components/runtime/Form;->nextRequestCode:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/google/appinventor/components/runtime/Form;->nextRequestCode:I

    return v0
.end method

.method public static getActiveForm()Lcom/google/appinventor/components/runtime/Form;
    .locals 1

    .prologue
    .line 1751
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    return-object v0
.end method

.method public static getCompatibilityMode()Z
    .locals 1

    .prologue
    .line 2135
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    return v0
.end method

.method private static getInstallerPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2153
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2154
    .local v0, "packageInstallerName":Ljava/lang/String;
    const-string v1, ""

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 2155
    :cond_0
    const-string v0, "undefined"

    .line 2157
    :cond_1
    return-object v0
.end method

.method public static getStartText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1762
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_0

    .line 1763
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Form;->startupValue:Ljava/lang/String;

    return-object v0

    .line 1765
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activeForm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getStartValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1780
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_0

    .line 1781
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Form;->startupValue:Ljava/lang/String;

    const-string v1, "get start value"

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->decodeJSONStringForForm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1783
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activeForm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static jsonEncodeForForm(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "functionName"    # Ljava/lang/String;

    .prologue
    .line 1640
    const-string v1, ""

    .line 1641
    .local v1, "jsonResult":Ljava/lang/String;
    const-string v2, "Form"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jsonEncodeForForm -- creating JSON representation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    :try_start_0
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1645
    const-string v2, "Form"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jsonEncodeForForm -- got JSON representation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1652
    :goto_0
    return-object v1

    .line 1646
    :catch_0
    move-exception v0

    .line 1647
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    sget-object v3, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x388

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 1650
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1647
    invoke-virtual {v2, v3, p1, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private recomputeLayout()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 937
    const-string v0, "Form"

    const-string v1, "recomputeLayout called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 943
    :cond_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->scrollable:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    .line 944
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 948
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setBackground(Landroid/view/View;)V

    .line 950
    const-string v0, "Form"

    const-string v1, "About to create a new ScaledFrameLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    new-instance v0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    .line 952
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 955
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setContentView(Landroid/view/View;)V

    .line 956
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 957
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->requestLayout()V

    .line 958
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/Form$5;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Form$5;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 975
    return-void

    .line 943
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private setBackground(Landroid/view/View;)V
    .locals 4
    .param p1, "bgview"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 2121
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2122
    .local v0, "setDraw":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    const-string v3, ""

    if-eq v2, v3, :cond_1

    if-eqz v0, :cond_1

    .line 2123
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2124
    iget v2, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    if-eqz v2, :cond_0

    iget v1, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    :cond_0
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2130
    :goto_0
    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 2131
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 2132
    return-void

    .line 2127
    :cond_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .end local v0    # "setDraw":Landroid/graphics/drawable/Drawable;
    iget v2, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    if-eqz v2, :cond_2

    iget v1, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    :cond_2
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v0    # "setDraw":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private showAboutApplicationNotification()V
    .locals 6

    .prologue
    .line 1956
    const-string v3, "About this app"

    .line 1957
    .local v3, "title":Ljava/lang/String;
    const-string v0, "<p><small><em>Invented with Thunkable<br>thunkable.com</em></small></p>"

    .line 1959
    .local v0, "MITtagline":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Form;->aboutScreen:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Form;->yandexTranslateTagline:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1960
    .local v2, "message":Ljava/lang/String;
    const-string v4, "\\n"

    const-string v5, "<br>"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1961
    const-string v1, "Got it"

    .line 1962
    .local v1, "buttonText":Ljava/lang/String;
    invoke-static {p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Notifier;->oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    return-void
.end method

.method private showExitApplicationNotification()V
    .locals 9

    .prologue
    .line 1928
    const-string v2, "Stop application?"

    .line 1929
    .local v2, "title":Ljava/lang/String;
    const-string v1, "Stop this application and exit? You\'ll need to relaunch the application to use it again."

    .line 1931
    .local v1, "message":Ljava/lang/String;
    const-string v3, "Stop and exit"

    .line 1932
    .local v3, "positiveButton":Ljava/lang/String;
    const-string v4, "Don\'t stop"

    .line 1935
    .local v4, "negativeButton":Ljava/lang/String;
    new-instance v6, Lcom/google/appinventor/components/runtime/Form$10;

    invoke-direct {v6, p0}, Lcom/google/appinventor/components/runtime/Form$10;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 1936
    .local v6, "stopApplication":Ljava/lang/Runnable;
    new-instance v7, Lcom/google/appinventor/components/runtime/Form$11;

    invoke-direct {v7, p0}, Lcom/google/appinventor/components/runtime/Form$11;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 1937
    .local v7, "doNothing":Ljava/lang/Runnable;
    const/4 v5, 0x0

    move-object v0, p0

    move-object v8, v7

    invoke-static/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Notifier;->twoButtonDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 1947
    return-void
.end method

.method public static switchForm(Ljava/lang/String;)V
    .locals 2
    .param p0, "nextFormName"    # Ljava/lang/String;

    .prologue
    .line 1581
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_0

    .line 1582
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/appinventor/components/runtime/Form;->startNewForm(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1586
    return-void

    .line 1584
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activeForm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static switchFormWithStartValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "nextFormName"    # Ljava/lang/String;
    .param p1, "startValue"    # Ljava/lang/Object;

    .prologue
    .line 1597
    const-string v0, "Form"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Open another screen with start value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_0

    .line 1599
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0, p1}, Lcom/google/appinventor/components/runtime/Form;->startNewForm(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1603
    return-void

    .line 1601
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activeForm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/LinearLayout;->add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 1686
    return-void
.end method

.method public $context()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 1675
    return-object p0
.end method

.method protected $define()V
    .locals 1

    .prologue
    .line 742
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public $form()Lcom/google/appinventor/components/runtime/Form;
    .locals 0

    .prologue
    .line 1680
    return-object p0
.end method

.method public AboutScreen()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Information about the screen.  It appears when \"About this Application\" is selected from the system menu. Use it to inform people about your app.  In multiple screen apps, each screen has its own AboutScreen info."
    .end annotation

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->aboutScreen:Ljava/lang/String;

    return-object v0
.end method

.method public AboutScreen(Ljava/lang/String;)V
    .locals 0
    .param p1, "aboutScreen"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1115
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->aboutScreen:Ljava/lang/String;

    .line 1116
    return-void
.end method

.method public AlignHorizontal()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how contents of the screen are aligned  horizontally. The choices are: 1 = left aligned, 2 = horizontally centered,  3 = right aligned."
    .end annotation

    .prologue
    .line 1289
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->horizontalAlignment:I

    return v0
.end method

.method public AlignHorizontal(I)V
    .locals 6
    .param p1, "alignment"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "3"
        editorType = "horizontal_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1304
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setHorizontalAlignment(I)V

    .line 1305
    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->horizontalAlignment:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1310
    :goto_0
    return-void

    .line 1306
    :catch_0
    move-exception v0

    .line 1307
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "HorizontalAlignment"

    const/16 v2, 0x579

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1308
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1307
    invoke-virtual {p0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public AlignVertical()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how the contents of the arrangement are aligned vertically. The choices are: 1 = aligned at the top, 2 = vertically centered, 3 = aligned at the bottom. Vertical alignment has no effect if the screen is scrollable."
    .end annotation

    .prologue
    .line 1323
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->verticalAlignment:I

    return v0
.end method

.method public AlignVertical(I)V
    .locals 6
    .param p1, "alignment"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "vertical_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1338
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setVerticalAlignment(I)V

    .line 1339
    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->verticalAlignment:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1344
    :goto_0
    return-void

    .line 1340
    :catch_0
    move-exception v0

    .line 1341
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "VerticalAlignment"

    const/16 v2, 0x57a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1342
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1341
    invoke-virtual {p0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public AppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "aName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This is the display name of the installed application in the phone.If the AppName is blank, it will be set to the name of the project when the project is built."
        userVisible = false
    .end annotation

    .prologue
    .line 1538
    return-void
.end method

.method public BackPressed()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Device back button pressed."
    .end annotation

    .prologue
    .line 520
    const-string v0, "BackPressed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 984
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 1
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 996
    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    .line 998
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setBackground(Landroid/view/View;)V

    .line 999
    return-void
.end method

.method public BackgroundImage()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The screen background image."
    .end annotation

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public BackgroundImage(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The screen background image."
    .end annotation

    .prologue
    .line 1056
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "path":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    .line 1059
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1064
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->setBackground(Landroid/view/View;)V

    .line 1065
    return-void

    .line 1060
    :catch_0
    move-exception v0

    .line 1061
    .local v0, "ioe":Ljava/io/IOException;
    const-string v1, "Form"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public CloseScreenAnimation()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The animation for closing current screen and returning  to the previous screen. Valid options are default, fade, zoom, slidehorizontal, slidevertical, and none"
    .end annotation

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->closeAnimType:Ljava/lang/String;

    return-object v0
.end method

.method public CloseScreenAnimation(Ljava/lang/String;)V
    .locals 4
    .param p1, "animType"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "default"
        editorType = "screen_animation"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1402
    const-string v0, "default"

    if-eq p1, v0, :cond_0

    const-string v0, "fade"

    if-eq p1, v0, :cond_0

    const-string v0, "zoom"

    if-eq p1, v0, :cond_0

    const-string v0, "slidehorizontal"

    if-eq p1, v0, :cond_0

    const-string v0, "slidevertical"

    if-eq p1, v0, :cond_0

    const-string v0, "none"

    if-eq p1, v0, :cond_0

    .line 1405
    const-string v0, "Screen"

    const/16 v1, 0x389

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1410
    :goto_0
    return-void

    .line 1409
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->closeAnimType:Ljava/lang/String;

    goto :goto_0
.end method

.method public ErrorOccurred(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "functionName"    # Ljava/lang/String;
    .param p3, "errorNumber"    # I
    .param p4, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when an error occurs. Only some errors will raise this condition.  For those errors, the system will show a notification by default.  You can use this event handler to prescribe an error behavior different than the default."
    .end annotation

    .prologue
    .line 822
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 823
    .local v0, "componentType":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 824
    const-string v1, "Form"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Form "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ErrorOccurred, errorNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", componentType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", functionName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", messages = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    const-string v1, "ErrorOccurred"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    .line 828
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    .line 827
    invoke-static {p0, v1, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    if-eqz v1, :cond_0

    .line 835
    new-instance v1, Lcom/google/appinventor/components/runtime/Notifier;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Notifier;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Notifier;->ShowAlert(Ljava/lang/String;)V

    .line 837
    :cond_0
    return-void
.end method

.method public ErrorOccurredDialog(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "functionName"    # Ljava/lang/String;
    .param p3, "errorNumber"    # I
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "buttonText"    # Ljava/lang/String;

    .prologue
    .line 842
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 843
    .local v0, "componentType":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 844
    const-string v1, "Form"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Form "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ErrorOccurred, errorNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", componentType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", functionName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", messages = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const-string v1, "ErrorOccurred"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    .line 848
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    .line 847
    invoke-static {p0, v1, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    if-eqz v1, :cond_0

    .line 855
    new-instance v1, Lcom/google/appinventor/components/runtime/Notifier;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Notifier;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p5, p6}, Lcom/google/appinventor/components/runtime/Notifier;->ShowMessageDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    :cond_0
    return-void
.end method

.method public Height()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Screen height (y-size)."
    .end annotation

    .prologue
    .line 1560
    const-string v0, "Form"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Form.Height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    return v0
.end method

.method public HideKeyboard()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Hide the onscreen soft keyboard."
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2143
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 2144
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 2145
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2146
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2150
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return-void

    .line 2148
    :cond_0
    const-string v2, "HideKeyboard"

    const/16 v3, 0x38a

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public Icon(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 1430
    return-void
.end method

.method public Initialize()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Screen starting"
    .end annotation

    .prologue
    .line 781
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/Form$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Form$2;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 805
    return-void
.end method

.method public OpenScreenAnimation()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The animation for switching to another screen. Valid options are default, fade, zoom, slidehorizontal, slidevertical, and none"
    .end annotation

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->openAnimType:Ljava/lang/String;

    return-object v0
.end method

.method public OpenScreenAnimation(Ljava/lang/String;)V
    .locals 4
    .param p1, "animType"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "default"
        editorType = "screen_animation"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1368
    const-string v0, "default"

    if-eq p1, v0, :cond_0

    const-string v0, "fade"

    if-eq p1, v0, :cond_0

    const-string v0, "zoom"

    if-eq p1, v0, :cond_0

    const-string v0, "slidehorizontal"

    if-eq p1, v0, :cond_0

    const-string v0, "slidevertical"

    if-eq p1, v0, :cond_0

    const-string v0, "none"

    if-eq p1, v0, :cond_0

    .line 1371
    const-string v0, "Screen"

    const/16 v1, 0x389

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1376
    :goto_0
    return-void

    .line 1375
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->openAnimType:Ljava/lang/String;

    goto :goto_0
.end method

.method public OtherScreenClosed(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "otherScreenName"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when another screen has closed and control has returned to this screen."
    .end annotation

    .prologue
    .line 1658
    const-string v0, "Form"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Form "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OtherScreenClosed, otherScreenName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1659
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1658
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    const-string v0, "OtherScreenClosed"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1661
    return-void
.end method

.method ReplayFormOrientation()V
    .locals 5

    .prologue
    .line 593
    const-string v3, "Form"

    const-string v4, "ReplayFormOrientation()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 595
    .local v2, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;>;"
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 596
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 598
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;

    .line 599
    .local v1, "r":Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;
    iget-object v3, v1, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->dim:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    sget-object v4, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;->HEIGHT:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    if-ne v3, v4, :cond_0

    .line 600
    iget-object v3, v1, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->component:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    iget v4, v1, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->length:I

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    .line 596
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 602
    :cond_0
    iget-object v3, v1, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->component:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    iget v4, v1, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->length:I

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    goto :goto_1

    .line 605
    .end local v1    # "r":Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;
    :cond_1
    return-void
.end method

.method public ScreenOrientation()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The requested screen orientation, specified as a text value.  Commonly used values are landscape, portrait, sensor, user and unspecified.  See the Android developer documentation for ActivityInfo.Screen_Orientation for the complete list of possible settings."
    .end annotation

    .prologue
    .line 1197
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getRequestedOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1224
    const-string v0, "unspecified"

    :goto_0
    return-object v0

    .line 1199
    :pswitch_0
    const-string v0, "behind"

    goto :goto_0

    .line 1201
    :pswitch_1
    const-string v0, "landscape"

    goto :goto_0

    .line 1203
    :pswitch_2
    const-string v0, "nosensor"

    goto :goto_0

    .line 1205
    :pswitch_3
    const-string v0, "portrait"

    goto :goto_0

    .line 1207
    :pswitch_4
    const-string v0, "sensor"

    goto :goto_0

    .line 1209
    :pswitch_5
    const-string v0, "unspecified"

    goto :goto_0

    .line 1211
    :pswitch_6
    const-string v0, "user"

    goto :goto_0

    .line 1213
    :pswitch_7
    const-string v0, "fullSensor"

    goto :goto_0

    .line 1215
    :pswitch_8
    const-string v0, "reverseLandscape"

    goto :goto_0

    .line 1217
    :pswitch_9
    const-string v0, "reversePortrait"

    goto :goto_0

    .line 1219
    :pswitch_a
    const-string v0, "sensorLandscape"

    goto :goto_0

    .line 1221
    :pswitch_b
    const-string v0, "sensorPortrait"

    goto :goto_0

    .line 1197
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_a
        :pswitch_b
        :pswitch_8
        :pswitch_9
        :pswitch_7
    .end packed-switch
.end method

.method public ScreenOrientation(Ljava/lang/String;)V
    .locals 5
    .param p1, "screenOrientation"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "unspecified"
        editorType = "screen_orientation"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    const/16 v4, 0x385

    const/16 v3, 0x9

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1237
    const-string v0, "behind"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1238
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    .line 1270
    :goto_0
    return-void

    .line 1239
    :cond_0
    const-string v0, "landscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1240
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1241
    :cond_1
    const-string v0, "nosensor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1242
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1243
    :cond_2
    const-string v0, "portrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1244
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1245
    :cond_3
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1246
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1247
    :cond_4
    const-string v0, "unspecified"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1248
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1249
    :cond_5
    const-string v0, "user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1250
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1251
    :cond_6
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    if-lt v0, v3, :cond_c

    .line 1252
    const-string v0, "fullSensor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1253
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1254
    :cond_7
    const-string v0, "reverseLandscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1255
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1256
    :cond_8
    const-string v0, "reversePortrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1257
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1258
    :cond_9
    const-string v0, "sensorLandscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1259
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 1260
    :cond_a
    const-string v0, "sensorPortrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1261
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 1263
    :cond_b
    const-string v0, "ScreenOrientation"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, p0, v0, v4, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1267
    :cond_c
    const-string v0, "ScreenOrientation"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, p0, v0, v4, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public ScreenOrientationChanged()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Screen orientation changed"
    .end annotation

    .prologue
    .line 809
    const-string v0, "ScreenOrientationChanged"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 810
    return-void
.end method

.method public Scrollable(Z)V
    .locals 1
    .param p1, "scrollable"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 927
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->scrollable:Z

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 933
    :goto_0
    return-void

    .line 931
    :cond_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->scrollable:Z

    .line 932
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->recomputeLayout()V

    goto :goto_0
.end method

.method public Scrollable()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "When checked, there will be a vertical scrollbar on the screen, and the height of the application can exceed the physical height of the device. When unchecked, the application height is constrained to the height of the device."
    .end annotation

    .prologue
    .line 915
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->scrollable:Z

    return v0
.end method

.method public ShowListsAsJson(Z)V
    .locals 0
    .param p1, "asJson"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If false, lists will be converted to strings using Lisp notation, i.e., as symbols separated by spaces, e.g., (a 1 b2 (c d). If true, lists will appear as in Json or Python, e.g.  [\"a\", 1, \"b\", 2, [\"c\", \"d\"]].  This property appears only in Screen 1, and the value for Screen 1 determines the behavior for all screens. The property defaults to \"false\" meaning that the App Inventor programmer must explicitly set it to \"true\" if JSON/Python syntax is desired. At some point in the future we will alter the system so that new projects are created with this property set to \"true\" by default. Existing projects will not be impacted. The Thunkable programmer can also set it back to \"false\" in newer projects if desired. "
        userVisible = false
    .end annotation

    .prologue
    .line 1517
    sput-boolean p1, Lcom/google/appinventor/components/runtime/Form;->showListsAsJson:Z

    .line 1518
    return-void
.end method

.method public ShowListsAsJson()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 1523
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Form;->showListsAsJson:Z

    return v0
.end method

.method public ShowStatusBar(Z)V
    .locals 3
    .param p1, "show"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    const/16 v2, 0x800

    const/16 v1, 0x400

    .line 1168
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->showStatusBar:Z

    if-eq p1, v0, :cond_0

    .line 1169
    if-eqz p1, :cond_1

    .line 1170
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1171
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1176
    :goto_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->showStatusBar:Z

    .line 1178
    :cond_0
    return-void

    .line 1173
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1174
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public ShowStatusBar()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The status bar is the topmost bar on the screen. This property reports whether the status bar is visible."
    .end annotation

    .prologue
    .line 1156
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->showStatusBar:Z

    return v0
.end method

.method public Sizing(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Fixed"
        editorType = "sizing"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to fixed,  screen layouts will be created for a single fixed-size screen and autoscaled. If set to responsive, screen layouts will use the actual resolution of the device.  See the documentation on responsive design in App Inventor for more information. This property appears on Screen1 only and controls the sizing for all screens in the app."
        userVisible = false
    .end annotation

    .prologue
    .line 1476
    const-string v0, "Form"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sizing("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/Form;->deviceDensity:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    .line 1478
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/Form;->deviceDensity:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    .line 1479
    const-string v0, "Fixed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1480
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    .line 1481
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    .line 1482
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    .line 1486
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    sget-boolean v0, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->setScale(F)V

    .line 1487
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1488
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1490
    :cond_0
    const-string v0, "Form"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "formWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " formHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    return-void

    .line 1484
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    goto :goto_0

    .line 1486
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method public Title()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The caption for the form, which apears in the title bar"
    .end annotation

    .prologue
    .line 1075
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Title(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1088
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->setTitle(Ljava/lang/CharSequence;)V

    .line 1089
    return-void
.end method

.method public TitleBarColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 1008
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->titleBarColor:I

    return v0
.end method

.method public TitleBarColor(I)V
    .locals 3
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1020
    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->titleBarColor:I

    .line 1021
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->titleBarColor:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->titleBarColor:I

    :goto_0
    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1023
    return-void

    .line 1021
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public TitleBarColorChanged()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Title Bar Color changed"
    .end annotation

    .prologue
    .line 1039
    const-string v0, "TitleBarColor"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1040
    return-void
.end method

.method public TitleVisible(Z)V
    .locals 1
    .param p1, "show"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 1138
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->showTitle:Z

    if-eq p1, v0, :cond_0

    .line 1139
    if-eqz p1, :cond_1

    .line 1140
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 1144
    :goto_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->showTitle:Z

    .line 1146
    :cond_0
    return-void

    .line 1142
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    goto :goto_0
.end method

.method public TitleVisible()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The title bar is the top gray bar on the screen. This property reports whether the title bar is visible."
    .end annotation

    .prologue
    .line 1126
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->showTitle:Z

    return v0
.end method

.method public TutorialURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1572
    return-void
.end method

.method public VersionCode(I)V
    .locals 0
    .param p1, "vCode"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "An integer value which must be incremented each time a new Android Application Package File (APK) is created for the Google Play Store."
        userVisible = false
    .end annotation

    .prologue
    .line 1444
    return-void
.end method

.method public VersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "vName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1.0"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "A string which can be changed to allow Google Play Store users to distinguish between different versions of the App."
        userVisible = false
    .end annotation

    .prologue
    .line 1458
    return-void
.end method

.method public Width()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Screen width (x-size)."
    .end annotation

    .prologue
    .line 1548
    const-string v0, "Form"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Form.Width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    return v0
.end method

.method public addAboutInfoToMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 1906
    const/4 v1, 0x2

    const-string v2, "About this application"

    invoke-interface {p1, v3, v3, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/Form$9;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/Form$9;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 1908
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 1914
    .local v0, "aboutAppItem":Landroid/view/MenuItem;
    const v1, 0x1080093

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1915
    return-void
.end method

.method public addExitButtonToMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 1894
    const/4 v1, 0x1

    const-string v2, "Stop this application"

    invoke-interface {p1, v3, v3, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/Form$8;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/Form$8;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 1896
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 1902
    .local v0, "stopApplicationItem":Landroid/view/MenuItem;
    const v1, 0x108005a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1903
    return-void
.end method

.method public callInitialize(Ljava/lang/Object;)V
    .locals 5
    .param p1, "component"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2066
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "Initialize"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2075
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_1
    const-string v2, "Form"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling Initialize method for Object "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2081
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 2067
    :catch_0
    move-exception v0

    .line 2068
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "Form"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Security exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2070
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 2072
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 2077
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v0

    .line 2078
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "Form"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    throw v2
.end method

.method public canDispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Z
    .locals 2
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "eventName"    # Ljava/lang/String;

    .prologue
    .line 748
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    if-nez v1, :cond_0

    if-ne p1, p0, :cond_2

    const-string v1, "Initialize"

    .line 749
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 751
    .local v0, "canDispatch":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 754
    sput-object p0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    .line 757
    :cond_1
    return v0

    .line 749
    .end local v0    # "canDispatch":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 1967
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1968
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1969
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    .line 1971
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->defaultPropertyValues()V

    .line 1972
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onStopListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1973
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onNewIntentListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1974
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onResumeListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1975
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onPauseListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1976
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onDestroyListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1977
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onInitializeListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1978
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onCreateOptionsMenuListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1979
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onOptionsItemSelectedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1980
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    .line 1981
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Form.clear() About to do moby GC!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1982
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1983
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1984
    return-void
.end method

.method protected closeApplicationFromBlocks()V
    .locals 0

    .prologue
    .line 1848
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->closeApplication()V

    .line 1849
    return-void
.end method

.method protected closeForm(Landroid/content/Intent;)V
    .locals 1
    .param p1, "resultIntent"    # Landroid/content/Intent;

    .prologue
    .line 1831
    if-eqz p1, :cond_0

    .line 1832
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/Form;->setResult(ILandroid/content/Intent;)V

    .line 1834
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->finish()V

    .line 1835
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->closeAnimType:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyCloseScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1836
    return-void
.end method

.method public compatScalingFactor()F
    .locals 1

    .prologue
    .line 1693
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    return v0
.end method

.method public deleteComponent(Ljava/lang/Object;)V
    .locals 9
    .param p1, "component"    # Ljava/lang/Object;

    .prologue
    .line 1987
    instance-of v8, p1, Lcom/google/appinventor/components/runtime/OnStopListener;

    if-eqz v8, :cond_0

    move-object v7, p1

    .line 1988
    check-cast v7, Lcom/google/appinventor/components/runtime/OnStopListener;

    .line 1989
    .local v7, "onStopListener":Lcom/google/appinventor/components/runtime/OnStopListener;
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Form;->onStopListeners:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1990
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Form;->onStopListeners:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1993
    .end local v7    # "onStopListener":Lcom/google/appinventor/components/runtime/OnStopListener;
    :cond_0
    instance-of v8, p1, Lcom/google/appinventor/components/runtime/OnNewIntentListener;

    if-eqz v8, :cond_1

    move-object v3, p1

    .line 1994
    check-cast v3, Lcom/google/appinventor/components/runtime/OnNewIntentListener;

    .line 1995
    .local v3, "onNewIntentListener":Lcom/google/appinventor/components/runtime/OnNewIntentListener;
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Form;->onNewIntentListeners:Ljava/util/Set;

    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1996
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Form;->onNewIntentListeners:Ljava/util/Set;

    invoke-interface {v8, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1999
    .end local v3    # "onNewIntentListener":Lcom/google/appinventor/components/runtime/OnNewIntentListener;
    :cond_1
    instance-of v8, p1, Lcom/google/appinventor/components/runtime/OnResumeListener;

    if-eqz v8, :cond_2

    move-object v6, p1

    .line 2000
    check-cast v6, Lcom/google/appinventor/components/runtime/OnResumeListener;

    .line 2001
    .local v6, "onResumeListener":Lcom/google/appinventor/components/runtime/OnResumeListener;
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Form;->onResumeListeners:Ljava/util/Set;

    invoke-interface {v8, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2002
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Form;->onResumeListeners:Ljava/util/Set;

    invoke-interface {v8, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2005
    .end local v6    # "onResumeListener":Lcom/google/appinventor/components/runtime/OnResumeListener;
    :cond_2
    instance-of v8, p1, Lcom/google/appinventor/components/runtime/OnPauseListener;

    if-eqz v8, :cond_3

    move-object v5, p1

    .line 2006
    check-cast v5, Lcom/google/appinventor/components/runtime/OnPauseListener;

    .line 2007
    .local v5, "onPauseListener":Lcom/google/appinventor/components/runtime/OnPauseListener;
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Form;->onPauseListeners:Ljava/util/Set;

    invoke-interface {v8, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2008
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Form;->onPauseListeners:Ljava/util/Set;

    invoke-interface {v8, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2011
    .end local v5    # "onPauseListener":Lcom/google/appinventor/components/runtime/OnPauseListener;
    :cond_3
    instance-of v8, p1, Lcom/google/appinventor/components/runtime/OnDestroyListener;

    if-eqz v8, :cond_4

    move-object v1, p1

    .line 2012
    check-cast v1, Lcom/google/appinventor/components/runtime/OnDestroyListener;

    .line 2013
    .local v1, "onDestroyListener":Lcom/google/appinventor/components/runtime/OnDestroyListener;
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Form;->onDestroyListeners:Ljava/util/Set;

    invoke-interface {v8, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2014
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Form;->onDestroyListeners:Ljava/util/Set;

    invoke-interface {v8, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2017
    .end local v1    # "onDestroyListener":Lcom/google/appinventor/components/runtime/OnDestroyListener;
    :cond_4
    instance-of v8, p1, Lcom/google/appinventor/components/runtime/util/OnInitializeListener;

    if-eqz v8, :cond_5

    move-object v2, p1

    .line 2018
    check-cast v2, Lcom/google/appinventor/components/runtime/util/OnInitializeListener;

    .line 2019
    .local v2, "onInitializeListener":Lcom/google/appinventor/components/runtime/util/OnInitializeListener;
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Form;->onInitializeListeners:Ljava/util/Set;

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2020
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Form;->onInitializeListeners:Ljava/util/Set;

    invoke-interface {v8, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2023
    .end local v2    # "onInitializeListener":Lcom/google/appinventor/components/runtime/util/OnInitializeListener;
    :cond_5
    instance-of v8, p1, Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;

    if-eqz v8, :cond_6

    move-object v0, p1

    .line 2024
    check-cast v0, Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;

    .line 2025
    .local v0, "onCreateOptionsMenuListener":Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Form;->onCreateOptionsMenuListeners:Ljava/util/Set;

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2026
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Form;->onCreateOptionsMenuListeners:Ljava/util/Set;

    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2029
    .end local v0    # "onCreateOptionsMenuListener":Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;
    :cond_6
    instance-of v8, p1, Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;

    if-eqz v8, :cond_7

    move-object v4, p1

    .line 2030
    check-cast v4, Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;

    .line 2031
    .local v4, "onOptionsItemSelectedListener":Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Form;->onOptionsItemSelectedListeners:Ljava/util/Set;

    invoke-interface {v8, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2032
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Form;->onOptionsItemSelectedListeners:Ljava/util/Set;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2035
    .end local v4    # "onOptionsItemSelectedListener":Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;
    :cond_7
    instance-of v8, p1, Lcom/google/appinventor/components/runtime/Deleteable;

    if-eqz v8, :cond_8

    .line 2036
    check-cast p1, Lcom/google/appinventor/components/runtime/Deleteable;

    .end local p1    # "component":Ljava/lang/Object;
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/Deleteable;->onDelete()V

    .line 2038
    :cond_8
    return-void
.end method

.method public deviceDensity()F
    .locals 1

    .prologue
    .line 1689
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->deviceDensity:F

    return v0
.end method

.method public varargs dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 6
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "functionName"    # Ljava/lang/String;
    .param p3, "errorNumber"    # I
    .param p4, "messageArgs"    # [Ljava/lang/Object;

    .prologue
    .line 862
    new-instance v0, Lcom/google/appinventor/components/runtime/Form$3;

    move-object v1, p0

    move v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Form$3;-><init>(Lcom/google/appinventor/components/runtime/Form;I[Ljava/lang/Object;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 868
    return-void
.end method

.method public varargs dispatchErrorOccurredEventDialog(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 6
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "functionName"    # Ljava/lang/String;
    .param p3, "errorNumber"    # I
    .param p4, "messageArgs"    # [Ljava/lang/Object;

    .prologue
    .line 877
    new-instance v0, Lcom/google/appinventor/components/runtime/Form$4;

    move-object v1, p0

    move v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Form$4;-><init>(Lcom/google/appinventor/components/runtime/Form;I[Ljava/lang/Object;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 889
    return-void
.end method

.method public dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "eventName"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 771
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public dontGrabTouchEventsForComponent()V
    .locals 2

    .prologue
    .line 2047
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 2048
    return-void
.end method

.method public declared-synchronized fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 1
    .param p1, "action"    # I
    .param p2, "source"    # Lcom/google/appinventor/components/runtime/VideoPlayer;
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 2117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoUtil:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->performAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .locals 0

    .prologue
    .line 1668
    return-object p0
.end method

.method public getOnCreateBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onCreateBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getOpenAnimType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->openAnimType:Ljava/lang/String;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 530
    const-string v3, "Form"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Form "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " got onActivityResult, requestCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", resultCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 538
    if-eqz p3, :cond_1

    const-string v3, "APP_INVENTOR_RESULT"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 539
    const-string v3, "APP_INVENTOR_RESULT"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 543
    .local v2, "resultString":Ljava/lang/String;
    :goto_0
    const-string v3, "other screen closed"

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->decodeJSONStringForForm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 545
    .local v1, "decodedResult":Ljava/lang/Object;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->nextFormName:Ljava/lang/String;

    invoke-virtual {p0, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->OtherScreenClosed(Ljava/lang/String;Ljava/lang/Object;)V

    .line 553
    .end local v1    # "decodedResult":Ljava/lang/Object;
    .end local v2    # "resultString":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 541
    :cond_1
    const-string v2, ""

    .restart local v2    # "resultString":Ljava/lang/String;
    goto :goto_0

    .line 548
    .end local v2    # "resultString":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/ActivityResultListener;

    .line 549
    .local v0, "component":Lcom/google/appinventor/components/runtime/ActivityResultListener;
    if-eqz v0, :cond_0

    .line 550
    invoke-interface {v0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/ActivityResultListener;->resultReturned(IILandroid/content/Intent;)V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 405
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 406
    const-string v1, "Form"

    const-string v2, "onConfigurationChanged() called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 408
    .local v0, "newOrientation":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 414
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/Form$1;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/Form$1;-><init>(Lcom/google/appinventor/components/runtime/Form;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 448
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 267
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 268
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 270
    .local v4, "packageName":Ljava/lang/String;
    const-string v6, "com.thunkable.appinventor.aicompanion3"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 271
    const-string v1, "com.thunkable.appinventor.aicompanion3"

    .line 275
    .local v1, "fabricAccount":Ljava/lang/String;
    :goto_0
    new-instance v6, Lio/fabric/sdk/android/Fabric$Builder;

    invoke-direct {v6, p0}, Lio/fabric/sdk/android/Fabric$Builder;-><init>(Landroid/content/Context;)V

    new-array v7, v9, [Lio/fabric/sdk/android/Kit;

    new-instance v8, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v8}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    aput-object v8, v7, v10

    invoke-virtual {v6, v7}, Lio/fabric/sdk/android/Fabric$Builder;->kits([Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Lio/fabric/sdk/android/Fabric$Builder;->appIdentifier(Ljava/lang/String;)Lio/fabric/sdk/android/Fabric$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lio/fabric/sdk/android/Fabric$Builder;->build()Lio/fabric/sdk/android/Fabric;

    move-result-object v6

    invoke-static {v6}, Lio/fabric/sdk/android/Fabric;->with(Lio/fabric/sdk/android/Fabric;)Lio/fabric/sdk/android/Fabric;

    .line 276
    const-string v6, "App Started"

    invoke-static {v4, v6}, Lcom/google/appinventor/components/runtime/util/MobileAnalytics;->fabricTracking(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-static {}, Lcom/amplitude/api/Amplitude;->getInstance()Lcom/amplitude/api/AmplitudeClient;

    move-result-object v6

    const-string v7, "1c34607a0462fe8134985a8b67a47c9c"

    invoke-virtual {v6, p0, v7}, Lcom/amplitude/api/AmplitudeClient;->initialize(Landroid/content/Context;Ljava/lang/String;)Lcom/amplitude/api/AmplitudeClient;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getApplication()Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amplitude/api/AmplitudeClient;->enableForegroundTracking(Landroid/app/Application;)Lcom/amplitude/api/AmplitudeClient;

    .line 279
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/google/appinventor/components/runtime/Form;->getInstallerPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, "packageInstallerName":Ljava/lang/String;
    const-string v6, "App Started"

    invoke-static {v4, v6, v3}, Lcom/google/appinventor/components/runtime/util/MobileAnalytics;->amplitudeTracking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->onCreateBundle:Landroid/os/Bundle;

    .line 285
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "className":Ljava/lang/String;
    const/16 v6, 0x2e

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 287
    .local v2, "lastDot":I
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    .line 288
    const-string v6, "Form"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Form "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " got onCreate"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    sput-object p0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    .line 291
    const-string v6, "Form"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "activeForm is now "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    iput v6, p0, Lcom/google/appinventor/components/runtime/Form;->deviceDensity:F

    .line 294
    const-string v6, "Form"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deviceDensity = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/google/appinventor/components/runtime/Form;->deviceDensity:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/ScreenDensityUtil;->computeCompatibleScaling(Landroid/content/Context;)F

    move-result v6

    iput v6, p0, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    .line 296
    const-string v6, "Form"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "compatScalingFactor = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v6, Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-direct {v6, p0, v9}, Lcom/google/appinventor/components/runtime/LinearLayout;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/Form;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    .line 298
    new-instance v6, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Form;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;-><init>(Lcom/google/appinventor/components/runtime/LinearLayout;)V

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/Form;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    .line 300
    iput-object v11, p0, Lcom/google/appinventor/components/runtime/Form;->progress:Landroid/app/ProgressDialog;

    .line 301
    sget-boolean v6, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    const-string v7, "Screen1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 302
    const-string v6, "Form"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MULTI: _initialized = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " formName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    sput-boolean v9, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    .line 308
    sget-boolean v6, Lcom/google/appinventor/components/runtime/ReplApplication;->installed:Z

    if-eqz v6, :cond_2

    .line 309
    const-string v6, "Form"

    const-string v7, "MultiDex already installed."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->onCreateFinish()V

    .line 323
    :goto_1
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v6

    const/16 v7, 0xb

    if-lt v6, v7, :cond_0

    .line 324
    new-instance v6, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v6}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v6}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    .line 325
    .local v5, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 327
    .end local v5    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    :cond_0
    return-void

    .line 273
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "fabricAccount":Ljava/lang/String;
    .end local v2    # "lastDot":I
    .end local v3    # "packageInstallerName":Ljava/lang/String;
    :cond_1
    const-string v1, "com.thunkable.apps"

    .restart local v1    # "fabricAccount":Ljava/lang/String;
    goto/16 :goto_0

    .line 312
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v2    # "lastDot":I
    .restart local v3    # "packageInstallerName":Ljava/lang/String;
    :cond_2
    const-string v6, "Please Wait..."

    const-string v7, "Installation Finishing"

    invoke-static {p0, v6, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/Form;->progress:Landroid/app/ProgressDialog;

    .line 313
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Form;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->show()V

    .line 314
    new-instance v6, Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller;

    invoke-direct {v6, v11}, Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller;-><init>(Lcom/google/appinventor/components/runtime/Form$1;)V

    new-array v7, v9, [Lcom/google/appinventor/components/runtime/Form;

    aput-object p0, v7, v10

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 317
    :cond_3
    const-string v6, "Form"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NO MULTI: _initialized = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " formName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    sput-boolean v9, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    .line 319
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->onCreateFinish()V

    goto :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 713
    packed-switch p1, :pswitch_data_0

    .line 717
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 715
    :pswitch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoUtil:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->createFullScreenVideoDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 713
    nop

    :pswitch_data_0
    .packed-switch 0xbd
        :pswitch_0
    .end packed-switch
.end method

.method onCreateFinish()V
    .locals 8

    .prologue
    .line 346
    const-string v3, "Form"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateFinish called "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->progress:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    .line 348
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 351
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->defaultPropertyValues()V

    .line 354
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 355
    .local v2, "startIntent":Landroid/content/Intent;
    if-eqz v2, :cond_1

    const-string v3, "APP_INVENTOR_START"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 356
    const-string v3, "APP_INVENTOR_START"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->startupValue:Ljava/lang/String;

    .line 359
    :cond_1
    new-instance v3, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;-><init>(Lcom/google/appinventor/components/runtime/Form;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoUtil:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    .line 363
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 364
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 365
    .local v1, "softInputMode":I
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v3

    or-int/lit8 v4, v1, 0x10

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 369
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->$define()V

    .line 376
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->Initialize()V

    .line 377
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1882
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1885
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->addExitButtonToMenu(Landroid/view/Menu;)V

    .line 1886
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->addAboutInfoToMenu(Landroid/view/Menu;)V

    .line 1887
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onCreateOptionsMenuListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;

    .line 1888
    .local v0, "onCreateOptionsMenuListener":Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;
    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;->onCreateOptionsMenu(Landroid/view/Menu;)V

    goto :goto_0

    .line 1890
    .end local v0    # "onCreateOptionsMenuListener":Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 688
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 690
    const-string v1, "Form"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Form "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " got onDestroy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->removeDispatchDelegate(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)V

    .line 695
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onDestroyListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/OnDestroyListener;

    .line 696
    .local v0, "onDestroyListener":Lcom/google/appinventor/components/runtime/OnDestroyListener;
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/OnDestroyListener;->onDestroy()V

    goto :goto_0

    .line 698
    .end local v0    # "onDestroyListener":Lcom/google/appinventor/components/runtime/OnDestroyListener;
    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 6

    .prologue
    .line 473
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getHeight()I

    move-result v4

    sub-int v1, v3, v4

    .line 474
    .local v1, "heightDiff":I
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v0

    .line 475
    .local v0, "contentViewTop":I
    const-string v3, "Form"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onGlobalLayout(): heightdiff = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " contentViewTop = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    if-gt v1, v0, :cond_1

    .line 479
    const-string v3, "Form"

    const-string v4, "keyboard hidden!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Form;->keyboardShown:Z

    if-eqz v3, :cond_0

    .line 481
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Form;->keyboardShown:Z

    .line 482
    sget-boolean v3, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    if-eqz v3, :cond_0

    .line 483
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    iget v4, p0, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->setScale(F)V

    .line 484
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->invalidate()V

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    sub-int v2, v1, v0

    .line 489
    .local v2, "keyboardHeight":I
    const-string v3, "Form"

    const-string v4, "keyboard shown!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Form;->keyboardShown:Z

    .line 491
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    if-eqz v3, :cond_0

    .line 492
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->setScale(F)V

    .line 493
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->invalidate()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 506
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 507
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->BackPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 508
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 509
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->closeAnimType:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyCloseScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V

    .line 515
    .end local v0    # "handled":Z
    :goto_0
    return v0

    .line 512
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 515
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 649
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 650
    const-string v1, "Form"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Form "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " got onNewIntent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onNewIntentListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/OnNewIntentListener;

    .line 652
    .local v0, "onNewIntentListener":Lcom/google/appinventor/components/runtime/OnNewIntentListener;
    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/OnNewIntentListener;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 654
    .end local v0    # "onNewIntentListener":Lcom/google/appinventor/components/runtime/OnNewIntentListener;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1919
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onOptionsItemSelectedListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;

    .line 1920
    .local v0, "onOptionsItemSelectedListener":Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;
    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1921
    const/4 v1, 0x1

    .line 1924
    .end local v0    # "onOptionsItemSelectedListener":Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 662
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 663
    const-string v1, "Form"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Form "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " got onPause"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onPauseListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/OnPauseListener;

    .line 665
    .local v0, "onPauseListener":Lcom/google/appinventor/components/runtime/OnPauseListener;
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/OnPauseListener;->onPause()V

    goto :goto_0

    .line 667
    .end local v0    # "onPauseListener":Lcom/google/appinventor/components/runtime/OnPauseListener;
    :cond_0
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 722
    packed-switch p1, :pswitch_data_0

    .line 727
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 729
    :goto_0
    return-void

    .line 724
    :pswitch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoUtil:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    invoke-virtual {v0, p2}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->prepareFullScreenVideoDialog(Landroid/app/Dialog;)V

    goto :goto_0

    .line 722
    nop

    :pswitch_data_0
    .packed-switch 0xbd
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 617
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 618
    const-string v1, "Form"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Form "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " got onResume"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    sput-object p0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    .line 623
    sget-boolean v1, Lcom/google/appinventor/components/runtime/Form;->applicationIsBeingClosed:Z

    if-eqz v1, :cond_1

    .line 624
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->closeApplication()V

    .line 631
    :cond_0
    return-void

    .line 628
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onResumeListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/OnResumeListener;

    .line 629
    .local v0, "onResumeListener":Lcom/google/appinventor/components/runtime/OnResumeListener;
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/OnResumeListener;->onResume()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 675
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 676
    const-string v1, "Form"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Form "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " got onStop"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onStopListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/OnStopListener;

    .line 678
    .local v0, "onStopListener":Lcom/google/appinventor/components/runtime/OnStopListener;
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/OnStopListener;->onStop()V

    goto :goto_0

    .line 680
    .end local v0    # "onStopListener":Lcom/google/appinventor/components/runtime/OnStopListener;
    :cond_0
    return-void
.end method

.method public registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I
    .locals 3
    .param p1, "listener"    # Lcom/google/appinventor/components/runtime/ActivityResultListener;

    .prologue
    .line 573
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->generateNewRequestCode()I

    move-result v0

    .line 574
    .local v0, "requestCode":I
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    return v0
.end method

.method public registerForOnCreateOptionsMenu(Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;)V
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;

    .prologue
    .line 705
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onCreateOptionsMenuListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 706
    return-void
.end method

.method public registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/OnDestroyListener;

    .prologue
    .line 701
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onDestroyListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 702
    return-void
.end method

.method public registerForOnInitialize(Lcom/google/appinventor/components/runtime/util/OnInitializeListener;)V
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/util/OnInitializeListener;

    .prologue
    .line 644
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onInitializeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 645
    return-void
.end method

.method public registerForOnNewIntent(Lcom/google/appinventor/components/runtime/OnNewIntentListener;)V
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/OnNewIntentListener;

    .prologue
    .line 657
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onNewIntentListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 658
    return-void
.end method

.method public registerForOnOptionsItemSelected(Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;)V
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;

    .prologue
    .line 709
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onOptionsItemSelectedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 710
    return-void
.end method

.method public registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/OnPauseListener;

    .prologue
    .line 670
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onPauseListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 671
    return-void
.end method

.method public registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/OnResumeListener;

    .prologue
    .line 634
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onResumeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 635
    return-void
.end method

.method public registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/OnStopListener;

    .prologue
    .line 683
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onStopListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 684
    return-void
.end method

.method public registerPercentLength(Lcom/google/appinventor/components/runtime/AndroidViewComponent;ILcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)V
    .locals 2
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "length"    # I
    .param p3, "dim"    # Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    .prologue
    .line 608
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;-><init>(Lcom/google/appinventor/components/runtime/AndroidViewComponent;ILcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    return-void
.end method

.method public runtimeFormErrorOccurredEvent(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "errorNumber"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 898
    const-string v0, "FORM_RUNTIME_ERROR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "functionName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const-string v0, "FORM_RUNTIME_ERROR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorNumber is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const-string v0, "FORM_RUNTIME_ERROR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 902
    return-void
.end method

.method public setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 6
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "height"    # I

    .prologue
    .line 1723
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v0

    .line 1724
    .local v0, "cHeight":I
    if-nez v0, :cond_0

    .line 1725
    move v1, p2

    .line 1726
    .local v1, "fHeight":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/appinventor/components/runtime/Form$7;

    invoke-direct {v3, p0, p1, v1}, Lcom/google/appinventor/components/runtime/Form$7;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1734
    .end local v1    # "fHeight":I
    :cond_0
    const/16 v2, -0x3e8

    if-gt p2, v2, :cond_1

    .line 1735
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v2

    add-int/lit16 v3, p2, 0x3e8

    neg-int v3, v3

    mul-int/2addr v2, v3

    div-int/lit8 p2, v2, 0x64

    .line 1738
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastHeight(I)V

    .line 1741
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildHeightForVerticalLayout(Landroid/view/View;I)V

    .line 1742
    return-void
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 6
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "width"    # I

    .prologue
    .line 1698
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->Width()I

    move-result v0

    .line 1699
    .local v0, "cWidth":I
    if-nez v0, :cond_0

    .line 1700
    move v1, p2

    .line 1701
    .local v1, "fWidth":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/appinventor/components/runtime/Form$6;

    invoke-direct {v3, p0, p1, v1}, Lcom/google/appinventor/components/runtime/Form$6;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1709
    .end local v1    # "fWidth":I
    :cond_0
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Form.setChildWidth(): width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " parent Width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " child = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1710
    const/16 v2, -0x3e8

    if-gt p2, v2, :cond_1

    .line 1711
    add-int/lit16 v2, p2, 0x3e8

    neg-int v2, v2

    mul-int/2addr v2, v0

    div-int/lit8 p2, v2, 0x64

    .line 1715
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastWidth(I)V

    .line 1718
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildWidthForVerticalLayout(Landroid/view/View;I)V

    .line 1719
    return-void
.end method

.method setYandexTranslateTagline()V
    .locals 1

    .prologue
    .line 1952
    const-string v0, "<p><small>Language translation powered by Yandex.Translate</small></p>"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->yandexTranslateTagline:Ljava/lang/String;

    .line 1953
    return-void
.end method

.method protected startNewForm(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .param p1, "nextFormName"    # Ljava/lang/String;
    .param p2, "startupValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    .line 1607
    const-string v4, "Form"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startNewForm:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1611
    .local v0, "activityIntent":Landroid/content/Intent;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p0, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1612
    if-nez p2, :cond_0

    const-string v2, "open another screen"

    .line 1615
    .local v2, "functionName":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_1

    .line 1616
    const-string v4, "Form"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StartNewForm about to JSON encode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    invoke-static {p2, v2}, Lcom/google/appinventor/components/runtime/Form;->jsonEncodeForForm(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1618
    .local v3, "jValue":Ljava/lang/String;
    const-string v4, "Form"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StartNewForm got JSON encoding:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    :goto_1
    const-string v4, "APP_INVENTOR_START"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1625
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->nextFormName:Ljava/lang/String;

    .line 1626
    const-string v4, "Form"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "about to start new form"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    :try_start_0
    const-string v4, "Form"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startNewForm starting activity:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    const/4 v4, 0x1

    invoke-virtual {p0, v0, v4}, Lcom/google/appinventor/components/runtime/Form;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1630
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->openAnimType:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyOpenScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1635
    :goto_2
    return-void

    .line 1612
    .end local v2    # "functionName":Ljava/lang/String;
    .end local v3    # "jValue":Ljava/lang/String;
    :cond_0
    const-string v2, "open another screen with start value"

    goto :goto_0

    .line 1620
    .restart local v2    # "functionName":Ljava/lang/String;
    :cond_1
    const-string v3, ""

    .restart local v3    # "jValue":Ljava/lang/String;
    goto :goto_1

    .line 1631
    :catch_0
    move-exception v1

    .line 1632
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const/16 v4, 0x386

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {p0, p0, v2, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method protected toastAllowed()Z
    .locals 6

    .prologue
    .line 2054
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2055
    .local v0, "now":J
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Form;->lastToastTime:J

    sget-wide v4, Lcom/google/appinventor/components/runtime/Form;->minimumToastWait:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 2056
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Form;->lastToastTime:J

    .line 2057
    const/4 v2, 0x1

    .line 2059
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public unregisterForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/google/appinventor/components/runtime/ActivityResultListener;

    .prologue
    .line 579
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 580
    .local v1, "keysToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 581
    .local v2, "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/appinventor/components/runtime/ActivityResultListener;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 582
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 585
    .end local v2    # "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/appinventor/components/runtime/ActivityResultListener;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 586
    .local v0, "key":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 588
    .end local v0    # "key":Ljava/lang/Integer;
    :cond_2
    return-void
.end method
