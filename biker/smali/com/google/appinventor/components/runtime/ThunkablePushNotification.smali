.class public Lcom/google/appinventor/components/runtime/ThunkablePushNotification;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "ThunkablePushNotification.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component that provides push notification using the OneSignal service. Please refer to the <a href=\"http://onesignal.com/\">OneSignal</a> for more information."
    docUri = "push-notifications"
    iconName = "images/onesignal.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "google-play-services.jar,oneSignalSDK.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET, com.google.android.c2dm.permission.RECEIVE, android.permission.WAKE_LOCK, android.permission.VIBRATE, android.permission.ACCESS_NETWORK_STATE, android.permission.RECEIVE_BOOT_COMPLETED ,com.sec.android.provider.badge.permission.READ ,com.sec.android.provider.badge.permission.WRITE ,com.htc.launcher.permission.READ_SETTINGS ,com.htc.launcher.permission.UPDATE_SHORTCUT ,com.sonyericsson.home.permission.BROADCAST_BADGE ,com.sonymobile.home.permission.PROVIDER_INSERT_BADGE ,com.anddoes.launcher.permission.UPDATE_COUNT ,com.majeur.launcher.permission.UPDATE_BADGE ,com.huawei.android.launcher.permission.CHANGE_BADGE ,com.huawei.android.launcher.permission.READ_SETTINGS ,com.huawei.android.launcher.permission.WRITE_SETTINGS"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ThunkablePushNotification"


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 66
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 67
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/onesignal/OneSignal;->startInit(Landroid/content/Context;)Lcom/onesignal/OneSignal$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/OneSignal$Builder;->init()V

    .line 68
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "ThunkablePushNotification"

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/MobileAnalytics;->fabricTracking(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v1, "ThunkablePushNotification"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/MobileAnalytics;->amplitudeTracking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method


# virtual methods
.method public OneSignalAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 80
    return-void
.end method
