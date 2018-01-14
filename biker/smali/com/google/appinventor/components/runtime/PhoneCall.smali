.class public Lcom/google/appinventor/components/runtime/PhoneCall;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "PhoneCall.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A non-visible component that makes a phone call to the number specified in the <code>PhoneNumber</code> property, which can be set either in the Designer or Blocks Editor. The component has a <code>MakePhoneCall</code> method, enabling the program to launch a phone call.</p><p>Often, this component is used with the <code>ContactPicker</code> component, which lets the user select a contact from the ones stored on the phone and sets the <code>PhoneNumber</code> property to the contact\'s phone number.</p><p>To directly specify the phone number (e.g., 650-555-1212), set the <code>PhoneNumber</code> property to a Text with the specified digits (e.g., \"6505551212\").  Dashes, dots, and parentheses may be included (e.g., \"(650)-555-1212\") but will be ignored; spaces may not be included.</p>"
    docUri = "social/phone-call"
    iconName = "images/phoneCall.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.CALL_PHONE, android.permission.READ_PHONE_STATE, android.permission.PROCESS_OUTGOING_CALLS"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;
    }
.end annotation


# instance fields
.field private final callStateReceiver:Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;

.field private final context:Landroid/content/Context;

.field private phoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 71
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 72
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->context:Landroid/content/Context;

    .line 73
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 74
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneNumber(Ljava/lang/String;)V

    .line 75
    new-instance v0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;-><init>(Lcom/google/appinventor/components/runtime/PhoneCall;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->callStateReceiver:Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;

    .line 76
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/PhoneCall;->registerCallStateMonitor()V

    .line 77
    return-void
.end method

.method private registerCallStateMonitor()V
    .locals 3

    .prologue
    .line 216
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 217
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->callStateReceiver:Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 220
    return-void
.end method

.method private unregisterCallStateMonitor()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->callStateReceiver:Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 227
    return-void
.end method


# virtual methods
.method public IncomingCallAnswered(Ljava/lang/String;)V
    .locals 3
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that an incoming phone call is answered. phoneNumber is the incoming call phone number."
    .end annotation

    .prologue
    .line 156
    const-string v0, "IncomingCallAnswered"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 157
    return-void
.end method

.method public MakePhoneCall()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->phoneNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/PhoneCallUtil;->makePhoneCall(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public PhoneCallEnded(ILjava/lang/String;)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that a phone call has ended. If status is 1, incoming call is missed or rejected; if status is 2, incoming call is answered before hanging up; if status is 3, outgoing call is hung up. phoneNumber is the ended call phone number."
    .end annotation

    .prologue
    .line 142
    const-string v0, "PhoneCallEnded"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 143
    return-void
.end method

.method public PhoneCallStarted(ILjava/lang/String;)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that a phonecall has started. If status is 1, incoming call is ringing; if status is 2, outgoing call is dialled. phoneNumber is the incoming/outgoing phone number."
    .end annotation

    .prologue
    .line 123
    const-string v0, "PhoneCallStarted"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public PhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public PhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->phoneNumber:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/PhoneCall;->unregisterCallStateMonitor()V

    .line 232
    return-void
.end method
