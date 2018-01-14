.class public Lcom/google/appinventor/components/runtime/ContactPicker;
.super Lcom/google/appinventor/components/runtime/Picker;
.source "ContactPicker.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A button that, when clicked on, displays a list of the contacts to choose among. After the user has made a selection, the following properties will be set to information about the chosen contact: <ul>\n<li> <code>ContactName</code>: the contact\'s name </li>\n <li> <code>EmailAddress</code>: the contact\'s primary email address </li>\n <li> <code>ContactUri</code>: the contact\'s URI on the device </li>\n<li> <code>EmailAddressList</code>: a list of the contact\'s email addresses </li>\n <li> <code>PhoneNumber</code>: the contact\'s primary phone number (on Later Android Verisons)</li>\n <li> <code>PhoneNumberList</code>: a list of the contact\'s phone numbers (on Later Android Versions)</li>\n <li> <code>Picture</code>: the name of the file containing the contact\'s image, which can be used as a <code>Picture</code> property value for the <code>Image</code> or <code>ImageSprite</code> component.</li></ul>\n</p><p>Other properties affect the appearance of the button (<code>TextAlignment</code>, <code>BackgroundColor</code>, etc.) and whether it can be clicked on (<code>Enabled</code>).\n</p><p>The ContactPicker component might not work on all phones. For example, on Android systems before system 3.0, it cannot pick phone numbers, and the list of email addresses will contain only one email."
    docUri = "social/contact-picker"
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.READ_CONTACTS"
.end annotation


# static fields
.field private static CONTACT_PROJECTION:[Ljava/lang/String; = null

.field private static DATA_PROJECTION:[Ljava/lang/String; = null

.field private static final EMAIL_INDEX:I = 0x1

.field private static final NAME_INDEX:I = 0x0

.field private static final PHONE_INDEX:I = 0x2

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field protected final activityContext:Landroid/app/Activity;

.field protected contactName:Ljava/lang/String;

.field protected contactPictureUri:Ljava/lang/String;

.field protected contactUri:Ljava/lang/String;

.field protected emailAddress:Ljava/lang/String;

.field protected emailAddressList:Ljava/util/List;

.field private final intentUri:Landroid/net/Uri;

.field protected phoneNumber:Ljava/lang/String;

.field protected phoneNumberList:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "primary_email"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/appinventor/components/runtime/ContactPicker;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 95
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/net/Uri;)V

    .line 96
    return-void
.end method

.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/net/Uri;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p2, "intentUri"    # Landroid/net/Uri;

    .prologue
    const/16 v1, 0xc

    .line 99
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Picker;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 100
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->activityContext:Landroid/app/Activity;

    .line 102
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->intentUri:Landroid/net/Uri;

    .line 109
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    if-lt v0, v1, :cond_1

    sget-object v0, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getPhoneContentUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->intentUri:Landroid/net/Uri;

    goto :goto_0

    .line 107
    :cond_1
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->intentUri:Landroid/net/Uri;

    goto :goto_0
.end method


# virtual methods
.method public ContactName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ContactUri()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "URI that specifies the location of the contact on the device."
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactUri:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public EmailAddress()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public EmailAddressList()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddressList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->ensureNotNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public PhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public PhoneNumberList()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->phoneNumberList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->ensureNotNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public Picture()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactPictureUri:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ViewContact(Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "view a contact via its URI"
    .end annotation

    .prologue
    .line 188
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactUri:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 189
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 190
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->activityContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->activityContext:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 194
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected checkContactUri(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 6
    .param p1, "suspectUri"    # Landroid/net/Uri;
    .param p2, "requiredPattern"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x453

    const/4 v1, 0x0

    .line 360
    const-string v2, "ContactPicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contactUri is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    if-eqz p1, :cond_0

    const-string v2, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 362
    :cond_0
    const-string v2, "ContactPicker"

    const-string v3, "checkContactUri failed: A"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/ContactPicker;->puntContactSelection(I)V

    .line 374
    :goto_0
    return v1

    .line 367
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "UriSpecific":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 369
    const-string v2, "ContactPicker"

    const-string v3, "checkContactUri failed: C"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const-string v2, "ContactPicker"

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/ContactPicker;->puntContactSelection(I)V

    goto :goto_0

    .line 374
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected ensureNotNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 442
    if-nez p1, :cond_0

    .line 443
    const-string p1, ""

    .line 445
    .end local p1    # "value":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method protected ensureNotNull(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p1, "value"    # Ljava/util/List;

    .prologue
    .line 450
    if-nez p1, :cond_0

    .line 451
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "value":Ljava/util/List;
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 453
    :cond_0
    return-object p1
.end method

.method protected getEmailAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "emailId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 393
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 398
    .local v9, "id":I
    const-string v7, ""

    .line 399
    .local v7, "data":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contact_methods._id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 400
    .local v3, "where":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "data"

    aput-object v0, v2, v5

    .line 403
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->activityContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts$ContactMethods;->CONTENT_EMAIL_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 407
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    const/4 v0, 0x0

    invoke-virtual {p0, v6, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 411
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 415
    invoke-virtual {p0, v7}, Lcom/google/appinventor/components/runtime/ContactPicker;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "data":Ljava/lang/String;
    .end local v9    # "id":I
    :goto_0
    return-object v0

    .line 394
    :catch_0
    move-exception v8

    .line 395
    .local v8, "e":Ljava/lang/NumberFormatException;
    const-string v0, ""

    goto :goto_0

    .line 411
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v3    # "where":Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "data":Ljava/lang/String;
    .restart local v9    # "id":I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 412
    throw v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 198
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->intentUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method protected guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "index"    # I

    .prologue
    .line 431
    :try_start_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 438
    .local v1, "result":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ContactPicker;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 432
    .end local v1    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public postHoneycombGetContactEmailAndPhone(Landroid/database/Cursor;)V
    .locals 12
    .param p1, "dataCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v11, 0x0

    .line 306
    const-string v8, ""

    iput-object v8, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->phoneNumber:Ljava/lang/String;

    .line 307
    const-string v8, ""

    iput-object v8, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddress:Ljava/lang/String;

    .line 308
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v5, "phoneListToStore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v3, "emailListToStore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 312
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getPhoneIndex(Landroid/database/Cursor;)I

    move-result v2

    .line 313
    .local v2, "PHONE_INDEX":I
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getEmailIndex(Landroid/database/Cursor;)I

    move-result v0

    .line 314
    .local v0, "EMAIL_INDEX":I
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getMimeIndex(Landroid/database/Cursor;)I

    move-result v1

    .line 316
    .local v1, "MIME_INDEX":I
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getPhoneType()Ljava/lang/String;

    move-result-object v6

    .line 317
    .local v6, "phoneType":Ljava/lang/String;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getEmailType()Ljava/lang/String;

    move-result-object v4

    .line 319
    .local v4, "emailType":Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_2

    .line 320
    invoke-virtual {p0, p1, v1}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v7

    .line 321
    .local v7, "type":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 322
    invoke-virtual {p0, p1, v2}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 323
    :cond_0
    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 324
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 326
    :cond_1
    const-string v8, "ContactPicker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Type mismatch: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " or "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 334
    .end local v0    # "EMAIL_INDEX":I
    .end local v1    # "MIME_INDEX":I
    .end local v2    # "PHONE_INDEX":I
    .end local v4    # "emailType":Ljava/lang/String;
    .end local v6    # "phoneType":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 335
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->phoneNumber:Ljava/lang/String;

    .line 337
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 338
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddress:Ljava/lang/String;

    .line 340
    :cond_4
    iput-object v5, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->phoneNumberList:Ljava/util/List;

    .line 341
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddressList:Ljava/util/List;

    .line 343
    return-void
.end method

.method public postHoneycombGetContactNameAndPicture(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 8
    .param p1, "contactCursor"    # Landroid/database/Cursor;

    .prologue
    .line 286
    const-string v4, ""

    .line 287
    .local v4, "id":Ljava/lang/String;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 288
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getIdIndex(Landroid/database/Cursor;)I

    move-result v0

    .line 289
    .local v0, "ID_INDEX":I
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getNameIndex(Landroid/database/Cursor;)I

    move-result v1

    .line 290
    .local v1, "NAME_INDEX":I
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getThumbnailIndex(Landroid/database/Cursor;)I

    move-result v3

    .line 291
    .local v3, "THUMBNAIL_INDEX":I
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getPhotoIndex(Landroid/database/Cursor;)I

    move-result v2

    .line 292
    .local v2, "PHOTO_INDEX":I
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v4

    .line 293
    invoke-virtual {p0, p1, v1}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactName:Ljava/lang/String;

    .line 294
    invoke-virtual {p0, p1, v3}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactPictureUri:Ljava/lang/String;

    .line 296
    const-string v5, "ContactPicker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "photo_uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, p1, v2}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .end local v0    # "ID_INDEX":I
    .end local v1    # "NAME_INDEX":I
    .end local v2    # "PHOTO_INDEX":I
    .end local v3    # "THUMBNAIL_INDEX":I
    :cond_0
    return-object v4
.end method

.method public preHoneycombGetContactInfo(Landroid/database/Cursor;Landroid/net/Uri;)V
    .locals 5
    .param p1, "contactCursor"    # Landroid/database/Cursor;
    .param p2, "theContactUri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 271
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    invoke-virtual {p0, p1, v3}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactName:Ljava/lang/String;

    .line 273
    invoke-virtual {p0, p1, v4}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "emailId":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->getEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddress:Ljava/lang/String;

    .line 275
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactUri:Ljava/lang/String;

    .line 276
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactPictureUri:Ljava/lang/String;

    .line 277
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddress:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddressList:Ljava/util/List;

    .line 279
    .end local v0    # "emailId":Ljava/lang/String;
    :cond_0
    return-void

    .line 277
    .restart local v0    # "emailId":Ljava/lang/String;
    :cond_1
    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddress:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method protected puntContactSelection(I)V
    .locals 3
    .param p1, "errorNumber"    # I

    .prologue
    .line 381
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactName:Ljava/lang/String;

    .line 382
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddress:Ljava/lang/String;

    .line 383
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactPictureUri:Ljava/lang/String;

    .line 384
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 385
    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0xc

    .line 211
    iget v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->requestCode:I

    if-ne p1, v0, :cond_2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 212
    const-string v0, "ContactPicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received intent is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 216
    .local v1, "receivedContactUri":Landroid/net/Uri;
    const-string v8, ""

    .line 217
    .local v8, "desiredContactUri":Ljava/lang/String;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    if-lt v0, v4, :cond_3

    .line 218
    const-string v8, "//com.android.contacts/contact"

    .line 223
    :goto_0
    invoke-virtual {p0, v1, v8}, Lcom/google/appinventor/components/runtime/ContactPicker;->checkContactUri(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    const/4 v6, 0x0

    .line 225
    .local v6, "contactCursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 227
    .local v7, "dataCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    if-lt v0, v4, :cond_4

    .line 228
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getContactProjection()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/ContactPicker;->CONTACT_PROJECTION:[Ljava/lang/String;

    .line 229
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->activityContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/appinventor/components/runtime/ContactPicker;->CONTACT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 232
    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/ContactPicker;->postHoneycombGetContactNameAndPicture(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v10

    .line 234
    .local v10, "id":Ljava/lang/String;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getDataProjection()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/ContactPicker;->DATA_PROJECTION:[Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->activityContext:Landroid/app/Activity;

    sget-object v2, Lcom/google/appinventor/components/runtime/ContactPicker;->DATA_PROJECTION:[Ljava/lang/String;

    invoke-static {v10, v0, v2}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getDataCursor(Ljava/lang/String;Landroid/app/Activity;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 236
    invoke-virtual {p0, v7}, Lcom/google/appinventor/components/runtime/ContactPicker;->postHoneycombGetContactEmailAndPhone(Landroid/database/Cursor;)V

    .line 239
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactUri:Ljava/lang/String;

    .line 245
    .end local v10    # "id":Ljava/lang/String;
    :goto_1
    const-string v0, "ContactPicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Contact name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", email address = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",contact Uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", phone number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", contactPhotoUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactPictureUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    if-eqz v6, :cond_0

    .line 256
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 258
    :cond_0
    if-eqz v7, :cond_1

    .line 259
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 263
    .end local v6    # "contactCursor":Landroid/database/Cursor;
    .end local v7    # "dataCursor":Landroid/database/Cursor;
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ContactPicker;->AfterPicking()V

    .line 265
    .end local v1    # "receivedContactUri":Landroid/net/Uri;
    .end local v8    # "desiredContactUri":Ljava/lang/String;
    :cond_2
    return-void

    .line 220
    .restart local v1    # "receivedContactUri":Landroid/net/Uri;
    .restart local v8    # "desiredContactUri":Ljava/lang/String;
    :cond_3
    const-string v8, "//contacts/people"

    goto/16 :goto_0

    .line 241
    .restart local v6    # "contactCursor":Landroid/database/Cursor;
    .restart local v7    # "dataCursor":Landroid/database/Cursor;
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->activityContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/appinventor/components/runtime/ContactPicker;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 243
    invoke-virtual {p0, v6, v1}, Lcom/google/appinventor/components/runtime/ContactPicker;->preHoneycombGetContactInfo(Landroid/database/Cursor;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 248
    :catch_0
    move-exception v9

    .line 252
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "ContactPicker"

    const-string v2, "checkContactUri failed: D"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/16 v0, 0x453

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->puntContactSelection(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 255
    if-eqz v6, :cond_5

    .line 256
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 258
    :cond_5
    if-eqz v7, :cond_1

    .line 259
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 255
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 256
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 258
    :cond_6
    if-eqz v7, :cond_7

    .line 259
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 261
    :cond_7
    throw v0
.end method
